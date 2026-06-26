.class public final Lcom/narvii/pre_editing/player/PreEditMediaPlayer;
.super Ljava/lang/Object;
.source "PreEditMediaPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreEditMediaPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreEditMediaPlayer.kt\ncom/narvii/pre_editing/player/PreEditMediaPlayer\n*L\n1#1,219:1\n*E\n"
.end annotation


# instance fields
.field private callback:Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

.field private final context:Landroid/content/Context;

.field private continuousSeekingFlag:Z

.field private currentPausePriority:I

.field private isPrepared:Z

.field private final player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private playingFlag:Z

.field private replayEndTime:J

.field private replayStartTime:J

.field private final seekReqQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final updateTimeRunnable:Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;

.field private final view:Lcom/narvii/nvplayerview/NVVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/narvii/nvplayerview/NVVideoView;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->view:Lcom/narvii/nvplayerview/NVVideoView;

    .line 26
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide p1, 0x7fffffffffffffffL

    .line 33
    iput-wide p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->replayEndTime:J

    .line 37
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekReqQueue:Ljava/util/LinkedList;

    .line 40
    new-instance p1, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;

    invoke-direct {p1, p0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;-><init>(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V

    iput-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->updateTimeRunnable:Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;

    .line 54
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance p2, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;

    invoke-direct {p2, p0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;-><init>(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 95
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance p2, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$2;

    invoke-direct {p2, p0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$2;-><init>(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    .line 100
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->view:Lcom/narvii/nvplayerview/NVVideoView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    .line 101
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->view:Lcom/narvii/nvplayerview/NVVideoView;

    new-instance p2, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$3;

    invoke-direct {p2, p0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$3;-><init>(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V

    invoke-virtual {p1, p2}, Lcom/narvii/nvplayerview/NVVideoView;->init(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 107
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->view:Lcom/narvii/nvplayerview/NVVideoView;

    new-instance p2, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$4;

    invoke-direct {p2, p0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$4;-><init>(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static final synthetic access$checkSeekRequest(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->checkSeekRequest()V

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->callback:Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    return-object p0
.end method

.method public static final synthetic access$getContinuousSeekingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->continuousSeekingFlag:Z

    return p0
.end method

.method public static final synthetic access$getPlayer$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method public static final synthetic access$getPlayingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->playingFlag:Z

    return p0
.end method

.method public static final synthetic access$getReplayEndTime$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->replayEndTime:J

    return-wide v0
.end method

.method public static final synthetic access$getReplayStartTime$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->replayStartTime:J

    return-wide v0
.end method

.method public static final synthetic access$getUpdateTimeRunnable$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->updateTimeRunnable:Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;

    return-object p0
.end method

.method public static final synthetic access$isPrepared$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->isPrepared:Z

    return p0
.end method

.method public static final synthetic access$setCallback$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->callback:Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    return-void
.end method

.method public static final synthetic access$setContinuousSeekingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->continuousSeekingFlag:Z

    return-void
.end method

.method public static final synthetic access$setPlayingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->playingFlag:Z

    return-void
.end method

.method public static final synthetic access$setPrepared$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->isPrepared:Z

    return-void
.end method

.method public static final synthetic access$setReplayEndTime$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;J)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->replayEndTime:J

    return-void
.end method

.method public static final synthetic access$setReplayStartTime$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;J)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->replayStartTime:J

    return-void
.end method

.method private final checkSeekRequest()V
    .locals 5

    .line 202
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekReqQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekReqQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekReqQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 205
    iget-object v2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-string v3, "time"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(J)V

    .line 207
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic seekTo$default(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;JZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 167
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekTo(JZ)V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getDuration()J
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-string v1, "player"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getView()Lcom/narvii/nvplayerview/NVVideoView;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->view:Lcom/narvii/nvplayerview/NVVideoView;

    return-object v0
.end method

.method public final handlePause()V
    .locals 1

    const/16 v0, 0xa

    .line 144
    invoke-virtual {p0, v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->pause(I)V

    return-void
.end method

.method public final handleResume()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->view:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v1}, Lcom/narvii/nvplayerview/NVVideoView;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    const/16 v0, 0xa

    .line 140
    invoke-virtual {p0, v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->start(I)V

    return-void
.end method

.method public final isPrepared()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->isPrepared:Z

    return v0
.end method

.method public final pause(I)V
    .locals 1

    .line 148
    iget v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->currentPausePriority:I

    if-ge v0, p1, :cond_0

    .line 149
    iput p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->currentPausePriority:I

    .line 150
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public final prepare(Ljava/lang/String;)V
    .locals 4

    .line 122
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->callback:Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    if-eqz p1, :cond_0

    const-string v0, "empty url"

    invoke-interface {p1, v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;->onError(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 126
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "ExoPlayer"

    if-eqz v0, :cond_2

    .line 127
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    .line 128
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object v3, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 129
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    goto :goto_0

    .line 131
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    .line 132
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 133
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public final release()V
    .locals 2

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->isPrepared:Z

    .line 163
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 164
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->updateTimeRunnable:Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final seekTo(JZ)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekReqQueue:Ljava/util/LinkedList;

    monitor-enter v0

    if-eqz p3, :cond_0

    .line 170
    :try_start_0
    iget-object p3, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekReqQueue:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->clear()V

    .line 171
    iget-object p3, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(J)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object p3, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekReqQueue:Ljava/util/LinkedList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekReqQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_1

    .line 175
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekReqQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-string p2, "player"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 178
    invoke-direct {p0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->checkSeekRequest()V

    .line 181
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setInContinuousSeekingMode(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->continuousSeekingFlag:Z

    return-void
.end method

.method public final setPlayStateCallback(Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iput-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->callback:Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    return-void
.end method

.method public final setReplayTime(JJ)V
    .locals 0

    .line 189
    iput-wide p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->replayStartTime:J

    .line 190
    iput-wide p3, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->replayEndTime:J

    return-void
.end method

.method public final start(I)V
    .locals 1

    .line 155
    iget v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->currentPausePriority:I

    if-gt v0, p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    const/4 p1, 0x0

    .line 157
    iput p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->currentPausePriority:I

    :cond_0
    return-void
.end method
