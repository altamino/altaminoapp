.class public final Lcom/narvii/video/player/ExoEditorPreviewPlayer;
.super Lcom/narvii/video/player/BaseEditorPreviewPlayer;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/nvplayerview/ISurfaceListener;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private attachedExtraAudioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentMainTrackWindowIndex:I

.field private currentPlaybackState:I

.field private final extraAudioTrackPlugin:Lcom/narvii/video/player/ExtraAudioTrackPlugin;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private inWindowChangingDuringPlayback:Z

.field private isMute:Z

.field private isVideoSeeking:Z

.field private onVideoPrepared:Z

.field private preparedViceTrackCount:I

.field private surface:Landroid/view/Surface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final viceTrackPlayerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/interfaces/IEditorAudioPlayer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoView:Lcom/narvii/nvplayerview/NVVideoView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
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
    invoke-direct {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->context:Landroid/content/Context;

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
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->t()Landroidx/media3/exoplayer/ExoPlayer;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    const-string v1, "build(...)"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 36
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    iput-object v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 43
    .line 44
    new-instance v1, Lcom/narvii/nvplayerview/NVVideoView;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, p1}, Lcom/narvii/nvplayerview/NVVideoView;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    iput-object v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 50
    .line 51
    new-instance v2, Lcom/narvii/video/player/ExtraAudioTrackPlugin;

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, p1}, Lcom/narvii/video/player/ExtraAudioTrackPlugin;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    iput-object v2, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->extraAudioTrackPlugin:Lcom/narvii/video/player/ExtraAudioTrackPlugin;

    .line 57
    const/4 p1, 0x1

    .line 58
    .line 59
    iput p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->currentPlaybackState:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p0, p1}, Lcom/narvii/nvplayerview/NVVideoView;->init(Lcom/narvii/nvplayerview/ISurfaceListener;I)V

    .line 63
    .line 64
    const/high16 p1, 0x3f100000    # 0.5625f

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p1}, Lcom/narvii/nvplayerview/NVVideoView;->setPredictedRatio(F)V

    .line 68
    .line 69
    new-instance p1, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer$1;-><init>(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->L(Landroidx/media3/common/Player$Listener;)V

    .line 76
    return-void
.end method

.method public static final synthetic access$getCurrentMainTrackWindowIndex$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->currentMainTrackWindowIndex:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getCurrentPlaybackState$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->currentPlaybackState:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getInWindowChangingDuringPlayback$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->inWindowChangingDuringPlayback:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$getOnVideoPrepared$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->onVideoPrepared:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$getPreparedViceTrackCount$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->preparedViceTrackCount:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getVideoPlayer$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getVideoView$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)Lcom/narvii/nvplayerview/NVVideoView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$isMute$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isMute:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$isVideoSeeking$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isVideoSeeking:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$setCurrentMainTrackWindowIndex$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->currentMainTrackWindowIndex:I

    .line 3
    return-void
.end method

.method public static final synthetic access$setCurrentPlaybackState$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->currentPlaybackState:I

    .line 3
    return-void
.end method

.method public static final synthetic access$setInWindowChangingDuringPlayback$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->inWindowChangingDuringPlayback:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setOnVideoPrepared$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->onVideoPrepared:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setPreparedViceTrackCount$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->preparedViceTrackCount:I

    .line 3
    return-void
.end method

.method public static final synthetic access$setVideoSeeking$p(Lcom/narvii/video/player/ExoEditorPreviewPlayer;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isVideoSeeking:Z

    .line 3
    return-void
.end method

.method private final activeViceTrackPlayer(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/video/player/ExoEditorAudioPlayer;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->context:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/video/player/ExoEditorAudioPlayer;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/video/player/ExoEditorPreviewPlayer$activeViceTrackPlayer$1;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0, v0, p1}, Lcom/narvii/video/player/ExoEditorPreviewPlayer$activeViceTrackPlayer$1;-><init>(Lcom/narvii/video/player/ExoEditorPreviewPlayer;Lcom/narvii/video/player/ExoEditorAudioPlayer;Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/video/player/ExoEditorAudioPlayer;->addAudioEventListener(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/narvii/video/player/ExoEditorAudioPlayer;->setDataSource(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    .line 25
    return-void
.end method

.method private final buildMediaSource(Lcom/narvii/video/model/AVClipInfoPack;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    .line 3
    .line 4
    new-instance v1, Landroidx/media3/datasource/DefaultDataSourceFactory;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->context:Landroid/content/Context;

    .line 7
    .line 8
    const-string v3, "ExoPlayer"

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2, v3}, Landroidx/media3/datasource/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroidx/media3/common/MediaItem;->d(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->f(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    const-string v0, "createMediaSource(...)"

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    return-object p1
.end method

.method private final innerSeekAudioTrack(Lcom/narvii/video/model/AVClipInfoPack;I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 9
    .line 10
    if-ltz v1, :cond_2

    .line 11
    .line 12
    if-ge v1, v0, :cond_2

    .line 13
    .line 14
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 15
    .line 16
    if-lt p2, v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    .line 21
    :goto_0
    iget-object v2, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 32
    sub-int/2addr p2, p1

    .line 33
    int-to-long p1, p2

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_1
    const-wide/16 p1, 0x0

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-interface {v1, p1, p2}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->seekTo(J)V

    .line 40
    :cond_2
    return-void
.end method

.method private final launchVideoPlayer()V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/Player;->G()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/media3/common/Player;->stop()V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->onVideoPrepared:Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-nez v1, :cond_4

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->surface:Landroid/view/Surface;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    goto :goto_3

    .line 29
    .line 30
    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 31
    .line 32
    new-array v0, v0, [Landroidx/media3/exoplayer/source/MediaSource;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;-><init>([Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v2

    .line 48
    .line 49
    const-wide/16 v3, 0x0

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v2}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->buildMediaSource(Lcom/narvii/video/model/AVClipInfoPack;)Landroidx/media3/exoplayer/source/MediaSource;

    .line 64
    move-result-object v6

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->hasInvisibleFrames()Z

    .line 68
    move-result v5

    .line 69
    .line 70
    const-wide/16 v7, 0x3e8

    .line 71
    .line 72
    if-eqz v5, :cond_1

    .line 73
    .line 74
    iget v3, v2, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 75
    int-to-long v3, v3

    .line 76
    mul-long/2addr v3, v7

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->hasInvisibleFrames()Z

    .line 80
    move-result v5

    .line 81
    .line 82
    if-eqz v5, :cond_2

    .line 83
    .line 84
    iget v2, v2, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 85
    :goto_1
    int-to-long v9, v2

    .line 86
    mul-long/2addr v9, v7

    .line 87
    goto :goto_2

    .line 88
    .line 89
    :cond_2
    iget v2, v2, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :goto_2
    new-instance v2, Landroidx/media3/exoplayer/source/ClippingMediaSource;

    .line 93
    move-object v5, v2

    .line 94
    move-wide v7, v3

    .line 95
    .line 96
    .line 97
    invoke-direct/range {v5 .. v10}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;JJ)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->y0(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 101
    goto :goto_0

    .line 102
    .line 103
    :cond_3
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 104
    .line 105
    .line 106
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->a(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 107
    .line 108
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 109
    const/4 v1, 0x1

    .line 110
    .line 111
    .line 112
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    iget-object v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 121
    .line 122
    iget v2, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 123
    .line 124
    .line 125
    invoke-interface {v1, v2, v3, v4}, Landroidx/media3/common/Player;->seekTo(IJ)V

    .line 126
    .line 127
    iget-boolean v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isMute:Z

    .line 128
    .line 129
    if-nez v1, :cond_4

    .line 130
    .line 131
    iget-object v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 132
    .line 133
    iget v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 134
    .line 135
    .line 136
    invoke-interface {v1, v0}, Landroidx/media3/common/Player;->setVolume(F)V

    .line 137
    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public addAudioClip(Lcom/narvii/video/model/AVClipInfoPack;Z)Ljava/util/ArrayList;
    .locals 1
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "clip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->addAudioClip(Lcom/narvii/video/model/AVClipInfoPack;Z)Ljava/util/ArrayList;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->activeViceTrackPlayer(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 13
    return-object p2
.end method

.method public addAudioClipList(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "clipList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->addAudioClipList(Ljava/util/ArrayList;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->activeViceTrackPlayer(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public getAttachmentDrawRectByTimelinePosition(ILandroid/graphics/PointF;)Lcom/narvii/video/attachment/caption/AttachmentDrawRect;
    .locals 0
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p1, "curPoint"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCaptionViewPoints(Lcom/narvii/video/model/Caption;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/narvii/video/model/Caption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/Caption;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "caption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentAudioPositionInClip(I)I
    .locals 2

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ge p1, v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->getCurrentPositionInClip()Lw7/u;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lw7/u;->d()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Ljava/lang/Number;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 32
    move-result-wide v0

    .line 33
    long-to-int p1, v0

    .line 34
    return p1

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method public getCurrentAudioPositionInTimeline(I)I
    .locals 2

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ge p1, v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->getCurrentPositionInTimeLine()J

    .line 22
    move-result-wide v0

    .line 23
    long-to-int p1, v0

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public getCurrentAudioRawPositionInClip(I)I
    .locals 4

    .line 1
    .line 2
    if-ltz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ge p1, v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->getCurrentPositionInClip()Lw7/u;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lw7/u;->a()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Ljava/lang/Number;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lw7/u;->b()Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Ljava/lang/Number;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 41
    move-result-wide v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->hasInvisibleFrames()Z

    .line 55
    move-result v2

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 68
    .line 69
    iget p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 70
    int-to-long v2, p1

    .line 71
    add-long/2addr v0, v2

    .line 72
    :cond_0
    long-to-int p1, v0

    .line 73
    return p1

    .line 74
    :cond_1
    const/4 p1, 0x0

    .line 75
    return p1
.end method

.method public getCurrentVideoPositionInClip()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 6
    move-result-wide v0

    .line 7
    long-to-int v0, v0

    .line 8
    return v0
.end method

.method public getCurrentVideoPositionInTimeline()I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    return v1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    .line 18
    move-result v0

    .line 19
    move v2, v1

    .line 20
    .line 21
    :goto_0
    if-ge v1, v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 32
    .line 33
    iget v3, v3, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 34
    add-int/2addr v2, v3

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 43
    move-result-wide v0

    .line 44
    int-to-long v2, v2

    .line 45
    add-long/2addr v0, v2

    .line 46
    long-to-int v0, v0

    .line 47
    return v0
.end method

.method public getCurrentVideoRawPositionInClip()I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-string v1, "get(...)"

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->hasInvisibleFrames()Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 42
    .line 43
    .line 44
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 45
    move-result-wide v1

    .line 46
    .line 47
    iget v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 48
    int-to-long v3, v0

    .line 49
    add-long/2addr v1, v3

    .line 50
    long-to-int v0, v1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 57
    move-result-wide v0

    .line 58
    long-to-int v0, v0

    .line 59
    :goto_0
    return v0
.end method

.method public getSnapShot(Lcom/narvii/scene/model/SceneInfo;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Lcom/narvii/scene/model/SceneInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/nvplayerview/NVVideoView;->getSnapshot()Landroid/graphics/Bitmap;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getStickerViewPoints(Lcom/narvii/video/model/StickerInfoPack;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getVideoSize(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "path"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p1, Landroid/graphics/Point;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 12
    return-object p1
.end method

.method public getVideoView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    return-object v0
.end method

.method public isAudioPlaying(I)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->isPlaying()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    .line 31
    :cond_1
    if-ltz p1, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v0

    .line 38
    .line 39
    if-ge p1, v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    check-cast p1, Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->isPlaying()Z

    .line 51
    move-result p1

    .line 52
    return p1

    .line 53
    :cond_2
    const/4 p1, 0x0

    .line 54
    return p1
.end method

.method public isSeeking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isVideoSeeking:Z

    return v0
.end method

.method public isVideoPlaying()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

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
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

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

.method public mapViewToCanonical(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    return-object p1
.end method

.method public mute()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isMute:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setVolume(F)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    check-cast v2, Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->setVolume(F)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public onActiveVideoClipChanged(ZI)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getMediaEventListeners()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/video/interfaces/IMediaEventListener;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    const/4 v2, -0x1

    .line 28
    goto :goto_1

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 36
    .line 37
    iget v2, v2, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 38
    :goto_1
    const/4 v3, 0x1

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v2, v3}, Lcom/narvii/video/interfaces/IMediaEventListener;->onVideoWindowIndexChanged(IZ)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Landroidx/media3/common/Player;->G()V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Landroidx/media3/common/Player;->stop()V

    .line 59
    const/4 p1, 0x0

    .line 60
    .line 61
    iput-boolean p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->onVideoPrepared:Z

    .line 62
    goto :goto_2

    .line 63
    .line 64
    :cond_2
    if-nez p1, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 72
    .line 73
    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->seekTimeLineTo(II)V

    .line 77
    .line 78
    iget-boolean p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isMute:Z

    .line 79
    .line 80
    if-nez p1, :cond_4

    .line 81
    .line 82
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 86
    move-result-object p2

    .line 87
    .line 88
    .line 89
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 90
    .line 91
    iget p2, p2, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 92
    .line 93
    .line 94
    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->setVolume(F)V

    .line 95
    goto :goto_2

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-direct {p0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->launchVideoPlayer()V

    .line 99
    :cond_4
    :goto_2
    return-void
.end method

.method public onAudioClipListChanged(ZI)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->onAudioClipListChanged(ZI)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result p2

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    check-cast p2, Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->release()V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 34
    .line 35
    iput v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->preparedViceTrackCount:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result p2

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    check-cast p2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 56
    .line 57
    .line 58
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p2}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->activeViceTrackPlayer(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    .line 65
    move-result v0

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p2, v0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->innerSeekAudioTrack(Lcom/narvii/video/model/AVClipInfoPack;I)V

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_1
    if-ltz p2, :cond_2

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 77
    move-result p1

    .line 78
    .line 79
    if-ge p2, p1, :cond_2

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    const-string v1, "get(...)"

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    check-cast p1, Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 93
    .line 94
    iget v2, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->preparedViceTrackCount:I

    .line 95
    .line 96
    add-int/lit8 v2, v2, -0x1

    .line 97
    .line 98
    iput v2, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->preparedViceTrackCount:I

    .line 99
    .line 100
    .line 101
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->stop()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    .line 112
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 115
    .line 116
    .line 117
    invoke-interface {p1, v2, v0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->setDataSource(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    .line 134
    move-result p2

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->innerSeekAudioTrack(Lcom/narvii/video/model/AVClipInfoPack;I)V

    .line 138
    :cond_2
    return-void
.end method

.method public onAudioTrackOffsetChanged(I)V
    .locals 1

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-ge p1, v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const-string v0, "get(...)"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1, v0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->innerSeekAudioTrack(Lcom/narvii/video/model/AVClipInfoPack;I)V

    .line 35
    :cond_0
    return-void
.end method

.method public openSingleAudio(Lcom/narvii/video/model/AVClipInfoPack;Z)Lcom/narvii/video/interfaces/IEditorAudioPlayer;
    .locals 1
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "audioClip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->extraAudioTrackPlugin:Lcom/narvii/video/player/ExtraAudioTrackPlugin;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/narvii/video/player/ExtraAudioTrackPlugin;->openSingleAudio(Lcom/narvii/video/model/AVClipInfoPack;Z)Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->attachedExtraAudioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 14
    return-object p1
.end method

.method public pause()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v0

    .line 13
    .line 14
    :goto_0
    if-ge v1, v0, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 23
    .line 24
    .line 25
    invoke-interface {v2}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->pause()V

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public pauseWhenNextSeek()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public playVideo(II)V
    .locals 0

    return-void
.end method

.method public refreshBackgroundTrack()V
    .locals 0

    return-void
.end method

.method public refreshCurrentPosition()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isMute:Z

    iget-object v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    invoke-interface {v1}, Landroidx/media3/common/Player;->release()V

    iput-boolean v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->onVideoPrepared:Z

    iget-object v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 4
    invoke-interface {v2}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->release()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->attachedExtraAudioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->release()V

    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->currentPlaybackState:I

    iput v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->currentMainTrackWindowIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->surface:Landroid/view/Surface;

    return-void
.end method

.method public varargs release([Ljava/lang/Object;)V
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->release()V

    return-void
.end method

.method public removeAudioClip(Lcom/narvii/video/model/AVClipInfoPack;)Ljava/util/ArrayList;
    .locals 2
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "clip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    .line 13
    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 14
    .line 15
    if-ltz v1, :cond_1

    .line 16
    .line 17
    if-ge v1, v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v1, "removeAt(...)"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->hasPrepared()Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->preparedViceTrackCount:I

    .line 39
    .line 40
    add-int/lit8 v1, v1, -0x1

    .line 41
    .line 42
    iput v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->preparedViceTrackCount:I

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->release()V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->removeAudioClip(Lcom/narvii/video/model/AVClipInfoPack;)Ljava/util/ArrayList;

    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method public removeGlobalAudioClip()V
    .locals 0

    return-void
.end method

.method public restoreStates()V
    .locals 0

    return-void
.end method

.method public rotateCaption(Lcom/narvii/video/model/Caption;F)V
    .locals 0
    .param p1    # Lcom/narvii/video/model/Caption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "caption"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public rotateSticker(Lcom/narvii/video/model/StickerInfoPack;F)V
    .locals 0
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "sticker"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public scaleCaption(Lcom/narvii/video/model/Caption;FLandroid/graphics/PointF;)V
    .locals 0
    .param p1    # Lcom/narvii/video/model/Caption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "caption"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public scaleSticker(Lcom/narvii/video/model/StickerInfoPack;FLandroid/graphics/PointF;)V
    .locals 0
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "sticker"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public seekTimeLineTo(I)V
    .locals 5

    iget-boolean v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isVideoSeeking:Z

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 2
    iget v3, v3, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_5

    if-le p1, v2, :cond_2

    goto :goto_4

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    iget v4, v4, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v4, v3

    if-lt v4, p1, :cond_3

    sub-int v1, p1, v3

    move v0, v1

    move v1, v2

    goto :goto_2

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    iget v4, v4, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isVideoSeeking:Z

    iget-object v2, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    int-to-long v3, v0

    .line 6
    invoke-interface {v2, v1, v3, v4}, Landroidx/media3/common/Player;->seekTo(IJ)V

    .line 7
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->innerSeekAudioTrack(Lcom/narvii/video/model/AVClipInfoPack;I)V

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method public seekTimeLineTo(II)V
    .locals 3

    if-ltz p1, :cond_2

    iget-boolean v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isVideoSeeking:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 9
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->t()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isVideoSeeking:Z

    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    int-to-long v1, p2

    .line 10
    invoke-interface {v0, p1, v1, v2}, Landroidx/media3/common/Player;->seekTo(IJ)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    iget v2, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v1, p2

    .line 12
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 13
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    invoke-direct {p0, p2, v1}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->innerSeekAudioTrack(Lcom/narvii/video/model/AVClipInfoPack;I)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public setGlobalBgmFade(ZZ)V
    .locals 0

    return-void
.end method

.method public setPipVideoVolume(Lcom/narvii/pip/PipInfoPack;FI)V
    .locals 0
    .param p1    # Lcom/narvii/pip/PipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "pipVideo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setVolume(Lcom/narvii/video/model/AVClipInfoPack;Z)V
    .locals 1
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "clip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 10
    .line 11
    iget p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, p1}, Landroidx/media3/common/Player;->setVolume(F)V

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iget-object p2, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result p2

    .line 22
    .line 23
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 24
    .line 25
    if-ltz v0, :cond_1

    .line 26
    .line 27
    if-ge v0, p2, :cond_1

    .line 28
    .line 29
    iget-object p2, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    check-cast p2, Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 36
    .line 37
    iget p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 38
    .line 39
    .line 40
    invoke-interface {p2, p1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->setVolume(F)V

    .line 41
    :cond_1
    return-void
.end method

.method public setVolumePercent(F)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isVideoPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isMute:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setVolume(F)V

    :cond_1
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    .line 7
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    iget v3, v3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    if-lt v0, v3, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {v4}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v0, v3, :cond_4

    .line 9
    invoke-virtual {p0, v2}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isAudioPlaying(I)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isVideoPlaying()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isMute:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    iget v4, v4, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    invoke-interface {v3, v4}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->setVolume(F)V

    :cond_3
    iget-object v3, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    invoke-interface {v3}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->start()V

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p0, v2}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isAudioPlaying(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    invoke-interface {v3}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->pause()V

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public start(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public startFromBeginning()V
    .locals 0

    .line 1
    return-void
.end method

.method public startFromBeginning(J)V
    .locals 0

    .line 2
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/Player;->G()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/media3/common/Player;->stop()V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->onVideoPrepared:Z

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    iput v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->currentPlaybackState:I

    .line 17
    .line 18
    iput v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->currentMainTrackWindowIndex:I

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->stop()V

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setVideoSurface(Landroid/view/Surface;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->surface:Landroid/view/Surface;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->surface:Landroid/view/Surface;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->launchVideoPlayer()V

    .line 15
    :cond_0
    return-void
.end method

.method public synthetic surfaceDestroyed(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/a;->b(Lcom/narvii/nvplayerview/ISurfaceListener;Landroid/view/Surface;)V

    return-void
.end method

.method public synthetic surfaceSizeChanged(Landroid/view/Surface;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/nvplayerview/a;->c(Lcom/narvii/nvplayerview/ISurfaceListener;Landroid/view/Surface;II)V

    return-void
.end method

.method public translateCaption(Lcom/narvii/video/model/Caption;Landroid/graphics/PointF;)V
    .locals 0
    .param p1    # Lcom/narvii/video/model/Caption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "caption"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public translateSticker(Lcom/narvii/video/model/StickerInfoPack;Landroid/graphics/PointF;)V
    .locals 0
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "sticker"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public unMute()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->isMute:Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 14
    .line 15
    .line 16
    invoke-interface {v2}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    .line 17
    move-result v2

    .line 18
    .line 19
    if-ltz v2, :cond_0

    .line 20
    .line 21
    if-ge v2, v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getVideoClipList()Ljava/util/ArrayList;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    iget-object v3, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->videoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 30
    .line 31
    .line 32
    invoke-interface {v3}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    .line 33
    move-result v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 40
    .line 41
    iget v2, v2, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v2}, Landroidx/media3/common/Player;->setVolume(F)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 52
    move-result v1

    .line 53
    .line 54
    :goto_0
    if-ge v0, v1, :cond_1

    .line 55
    .line 56
    iget-object v2, p0, Lcom/narvii/video/player/ExoEditorPreviewPlayer;->viceTrackPlayerList:Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    check-cast v2, Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->getAdditionalAudioClipList()Ljava/util/ArrayList;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 73
    .line 74
    iget v3, v3, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 75
    .line 76
    .line 77
    invoke-interface {v2, v3}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->setVolume(F)V

    .line 78
    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method public updateClipSpeed(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 1
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateClipTransform(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 1
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateGlobalAudioVolumeContrast(F)V
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lw7/t;

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v1, "An operation is not implemented: "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "not implemented"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v0}, Lw7/t;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1
.end method

.method public updatePipVideoTransform(Lcom/narvii/pip/PipInfoPack;)V
    .locals 1
    .param p1    # Lcom/narvii/pip/PipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pipVideo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
