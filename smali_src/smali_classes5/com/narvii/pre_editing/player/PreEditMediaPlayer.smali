.class public final Lcom/narvii/pre_editing/player/PreEditMediaPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private continuousSeekingFlag:Z

.field private currentPausePriority:I

.field private isPrepared:Z

.field private final player:Landroidx/media3/exoplayer/ExoPlayer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final updateTimeRunnable:Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final view:Lcom/narvii/nvplayerview/NVVideoView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/narvii/nvplayerview/NVVideoView;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/nvplayerview/NVVideoView;
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
    const-string v0, "view"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->context:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->view:Lcom/narvii/nvplayerview/NVVideoView;

    .line 18
    .line 19
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->t()Landroidx/media3/exoplayer/ExoPlayer;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    const-string v0, "build(...)"

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const-wide v0, 0x7fffffffffffffffL

    .line 39
    .line 40
    iput-wide v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->replayEndTime:J

    .line 41
    .line 42
    new-instance v0, Ljava/util/LinkedList;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekReqQueue:Ljava/util/LinkedList;

    .line 48
    .line 49
    new-instance v0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;-><init>(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->updateTimeRunnable:Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$1;-><init>(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->L(Landroidx/media3/common/Player$Listener;)V

    .line 63
    const/4 p1, 0x1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 67
    .line 68
    new-instance p1, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$2;

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, p0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$2;-><init>(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p1}, Lcom/narvii/nvplayerview/NVVideoView;->init(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 75
    .line 76
    new-instance p1, Lcom/narvii/pre_editing/player/a;

    .line 77
    .line 78
    .line 79
    invoke-direct {p1, p0}, Lcom/narvii/pre_editing/player/a;-><init>(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    return-void
.end method

.method private static final _init_$lambda$0(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    move-result p1

    .line 10
    const/4 p2, 0x1

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    .line 18
    move-result p1

    .line 19
    xor-int/2addr p1, p2

    .line 20
    .line 21
    const/16 v0, 0x32

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->start(I)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->pause(I)V

    .line 31
    .line 32
    :goto_0
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->callback:Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 37
    .line 38
    .line 39
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    .line 40
    move-result p0

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, p0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;->onPlayPauseStateChanged(Z)V

    .line 44
    :cond_1
    return p2
.end method

.method public static synthetic a(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->_init_$lambda$0(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$checkSeekRequest(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->checkSeekRequest()V

    .line 4
    return-void
.end method

.method public static final synthetic access$getCallback$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->callback:Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getContinuousSeekingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->continuousSeekingFlag:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$getPlayer$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPlayingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->playingFlag:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$getReplayEndTime$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->replayEndTime:J

    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getReplayStartTime$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->replayStartTime:J

    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getUpdateTimeRunnable$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->updateTimeRunnable:Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$isPrepared$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->isPrepared:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$setPlayingFlag$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->playingFlag:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setPrepared$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->isPrepared:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setReplayEndTime$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;J)V
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->replayEndTime:J

    .line 3
    return-void
.end method

.method public static final synthetic access$setReplayStartTime$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;J)V
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->replayStartTime:J

    .line 3
    return-void
.end method

.method private final checkSeekRequest()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekReqQueue:Ljava/util/LinkedList;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekReqQueue:Ljava/util/LinkedList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekReqQueue:Ljava/util/LinkedList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Ljava/lang/Long;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 28
    move-result-wide v3

    .line 29
    .line 30
    .line 31
    invoke-interface {v2, v3, v4}, Landroidx/media3/common/Player;->seekTo(J)V

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    :goto_0
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0

    .line 40
    throw v1
.end method

.method public static synthetic seekTo$default(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;JZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x2

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekTo(JZ)V

    .line 9
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getDuration()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/Player;->getDuration()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getView()Lcom/narvii/nvplayerview/NVVideoView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->view:Lcom/narvii/nvplayerview/NVVideoView;

    return-object v0
.end method

.method public final handlePause()V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xa

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->pause(I)V

    .line 6
    return-void
.end method

.method public final handleResume()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->view:Lcom/narvii/nvplayerview/NVVideoView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/nvplayerview/NVVideoView;->getSurface()Landroid/view/Surface;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setVideoSurface(Landroid/view/Surface;)V

    .line 12
    .line 13
    const/16 v0, 0xa

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->start(I)V

    .line 17
    return-void
.end method

.method public final isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->isPrepared:Z

    return v0
.end method

.method public final pause(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->currentPausePriority:I

    .line 3
    .line 4
    if-ge v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->currentPausePriority:I

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    .line 13
    :cond_0
    return-void
.end method

.method public final prepare(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/OptIn;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->callback:Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const-string v0, "empty url"

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;->onError(Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void

    .line 17
    .line 18
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    const-string v1, "ExoPlayer"

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    .line 32
    .line 33
    new-instance v2, Landroidx/media3/datasource/DefaultDataSourceFactory;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->context:Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3, v1}, Landroidx/media3/datasource/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Landroidx/media3/common/MediaItem;->d(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->f(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_2
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    .line 57
    .line 58
    new-instance v2, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    .line 59
    .line 60
    .line 61
    invoke-direct {v2}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->e(Ljava/lang/String;)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Landroidx/media3/common/MediaItem;->d(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->f(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->a(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 89
    return-void
.end method

.method public final release()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->isPrepared:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/media3/common/Player;->release()V

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->updateTimeRunnable:Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public final seekTo(JZ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekReqQueue:Ljava/util/LinkedList;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p3, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekReqQueue:Ljava/util/LinkedList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/util/LinkedList;->clear()V

    .line 11
    .line 12
    iget-object p3, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 13
    .line 14
    .line 15
    invoke-interface {p3, p1, p2}, Landroidx/media3/common/Player;->seekTo(J)V

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    iget-object p3, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekReqQueue:Ljava/util/LinkedList;

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekReqQueue:Ljava/util/LinkedList;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 33
    move-result p1

    .line 34
    const/4 p2, 0x2

    .line 35
    .line 36
    if-lt p1, p2, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekReqQueue:Ljava/util/LinkedList;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 42
    .line 43
    :cond_1
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlaybackState()I

    .line 47
    move-result p1

    .line 48
    const/4 p2, 0x3

    .line 49
    .line 50
    if-ne p1, p2, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->checkSeekRequest()V

    .line 54
    .line 55
    :cond_2
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit v0

    .line 59
    throw p1
.end method

.method public final setInContinuousSeekingMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->continuousSeekingFlag:Z

    return-void
.end method

.method public final setPlayStateCallback(Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;)V
    .locals 1
    .param p1    # Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->callback:Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    return-void
.end method

.method public final setReplayTime(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->replayStartTime:J

    iput-wide p3, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->replayEndTime:J

    return-void
.end method

.method public final start(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->currentPausePriority:I

    .line 3
    .line 4
    if-gt v0, p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->currentPausePriority:I

    .line 14
    :cond_0
    return-void
.end method
