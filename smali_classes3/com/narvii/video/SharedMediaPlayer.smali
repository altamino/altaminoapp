.class Lcom/narvii/video/SharedMediaPlayer;
.super Ljava/lang/Object;
.source "SharedMediaPlayer.java"


# static fields
.field static final TAG:Ljava/lang/String; = "videoplayer"

.field static final VERBOSE:Z

.field private static gAudioManager:Landroid/media/AudioManager;

.field static gAudioSession:I

.field static gBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field static gCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field static gCurrentBufferPercentage:I

.field static gCurrentRenderingStart:Z

.field static gCurrentState:I

.field static gErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field static gInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private static gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field static gPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private static gUri:Landroid/net/Uri;

.field static gVideoHeight:I

.field static gVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field static gVideoWidth:I

.field private static sBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private static sCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private static final sErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private static sInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private static final sPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private static final sRenderingStartBuffer:Ljava/lang/Runnable;

.field private static sVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-boolean v0, Lcom/narvii/video/SharedVideoView;->VERBOSE:Z

    sput-boolean v0, Lcom/narvii/video/SharedMediaPlayer;->VERBOSE:Z

    .line 130
    new-instance v0, Lcom/narvii/video/SharedMediaPlayer$1;

    invoke-direct {v0}, Lcom/narvii/video/SharedMediaPlayer$1;-><init>()V

    sput-object v0, Lcom/narvii/video/SharedMediaPlayer;->sPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 151
    new-instance v0, Lcom/narvii/video/SharedMediaPlayer$2;

    invoke-direct {v0}, Lcom/narvii/video/SharedMediaPlayer$2;-><init>()V

    sput-object v0, Lcom/narvii/video/SharedMediaPlayer;->sErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 169
    new-instance v0, Lcom/narvii/video/SharedMediaPlayer$3;

    invoke-direct {v0}, Lcom/narvii/video/SharedMediaPlayer$3;-><init>()V

    sput-object v0, Lcom/narvii/video/SharedMediaPlayer;->sVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 183
    new-instance v0, Lcom/narvii/video/SharedMediaPlayer$4;

    invoke-direct {v0}, Lcom/narvii/video/SharedMediaPlayer$4;-><init>()V

    sput-object v0, Lcom/narvii/video/SharedMediaPlayer;->sCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 214
    new-instance v0, Lcom/narvii/video/SharedMediaPlayer$5;

    invoke-direct {v0}, Lcom/narvii/video/SharedMediaPlayer$5;-><init>()V

    sput-object v0, Lcom/narvii/video/SharedMediaPlayer;->sInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 240
    new-instance v0, Lcom/narvii/video/SharedMediaPlayer$6;

    invoke-direct {v0}, Lcom/narvii/video/SharedMediaPlayer$6;-><init>()V

    sput-object v0, Lcom/narvii/video/SharedMediaPlayer;->sRenderingStartBuffer:Ljava/lang/Runnable;

    .line 254
    new-instance v0, Lcom/narvii/video/SharedMediaPlayer$7;

    invoke-direct {v0}, Lcom/narvii/video/SharedMediaPlayer$7;-><init>()V

    sput-object v0, Lcom/narvii/video/SharedMediaPlayer;->sBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .line 21
    sget-object v0, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Runnable;
    .locals 1

    .line 21
    sget-object v0, Lcom/narvii/video/SharedMediaPlayer;->sRenderingStartBuffer:Ljava/lang/Runnable;

    return-object v0
.end method

.method static getAudioSession()I
    .locals 2

    .line 122
    sget v0, Lcom/narvii/video/SharedMediaPlayer;->gAudioSession:I

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 124
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    sput v1, Lcom/narvii/video/SharedMediaPlayer;->gAudioSession:I

    .line 125
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 127
    :cond_0
    sget v0, Lcom/narvii/video/SharedMediaPlayer;->gAudioSession:I

    return v0
.end method

.method static getMediaPlayer(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer;"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/narvii/video/SharedMediaPlayer;->gAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/narvii/video/SharedMediaPlayer;->gAudioManager:Landroid/media/AudioManager;

    :cond_0
    if-eqz p1, :cond_1

    .line 45
    sget-object v0, Lcom/narvii/video/SharedMediaPlayer;->gUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/narvii/video/SharedMediaPlayer;->gCurrentState:I

    if-lez v0, :cond_1

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    return-object v0

    .line 49
    :cond_1
    invoke-static {}, Lcom/narvii/video/SharedMediaPlayer;->release()V

    .line 51
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    :try_start_0
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    sput-object v0, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "media player"

    .line 55
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    :cond_2
    :goto_0
    sget-object v0, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v0, :cond_3

    .line 59
    new-instance v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;-><init>()V

    sput-object v0, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    :cond_3
    const/4 v0, 0x0

    .line 62
    :try_start_1
    sget-object v1, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v1, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_4

    .line 63
    sget-object v1, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v2, 0x4

    const-string v3, "enable-accurate-seek"

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 65
    :cond_4
    sget-object v1, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getAudioSessionId()I

    move-result v1

    sput v1, Lcom/narvii/video/SharedMediaPlayer;->gAudioSession:I

    .line 66
    sget-object v1, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    sget-object v2, Lcom/narvii/video/SharedMediaPlayer;->sPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 67
    sget-object v1, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    sget-object v2, Lcom/narvii/video/SharedMediaPlayer;->sErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 68
    sget-object v1, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    sget-object v2, Lcom/narvii/video/SharedMediaPlayer;->sVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 69
    sget-object v1, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    sget-object v2, Lcom/narvii/video/SharedMediaPlayer;->sCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 70
    sget-object v1, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    sget-object v2, Lcom/narvii/video/SharedMediaPlayer;->sInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 71
    sget-object v1, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    sget-object v2, Lcom/narvii/video/SharedMediaPlayer;->sBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 72
    sget-object v1, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v1, p0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 73
    sput-object p1, Lcom/narvii/video/SharedMediaPlayer;->gUri:Landroid/net/Uri;

    .line 74
    sget-object p0, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 75
    sget-object p0, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    const/4 p0, 0x1

    .line 76
    sput p0, Lcom/narvii/video/SharedMediaPlayer;->gCurrentState:I

    .line 77
    sput-boolean v0, Lcom/narvii/video/SharedMediaPlayer;->gCurrentRenderingStart:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 p0, -0x1

    .line 80
    sput p0, Lcom/narvii/video/SharedMediaPlayer;->gCurrentState:I

    .line 81
    sput-boolean v0, Lcom/narvii/video/SharedMediaPlayer;->gCurrentRenderingStart:Z

    .line 84
    :goto_1
    sget-object p0, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object p0
.end method

.method static isReleased(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Z
    .locals 1

    .line 104
    sget-object v0, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static release()V
    .locals 5

    const/4 v0, 0x0

    .line 88
    sput-object v0, Lcom/narvii/video/SharedMediaPlayer;->gUri:Landroid/net/Uri;

    .line 89
    sget-object v1, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 90
    sput-object v0, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v2, 0x0

    .line 91
    sput v2, Lcom/narvii/video/SharedMediaPlayer;->gCurrentState:I

    .line 92
    sput-boolean v2, Lcom/narvii/video/SharedMediaPlayer;->gCurrentRenderingStart:Z

    .line 93
    sget-object v3, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    sget-object v4, Lcom/narvii/video/SharedMediaPlayer;->sRenderingStartBuffer:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    sput v2, Lcom/narvii/video/SharedMediaPlayer;->gVideoWidth:I

    .line 95
    sput v2, Lcom/narvii/video/SharedMediaPlayer;->gVideoHeight:I

    .line 96
    sput v2, Lcom/narvii/video/SharedMediaPlayer;->gCurrentBufferPercentage:I

    if-eqz v1, :cond_0

    .line 98
    invoke-interface {v1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 99
    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    :cond_0
    return-void
.end method

.method static setAudioFocused(Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 109
    sget-object p0, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    .line 110
    sget-object p0, Lcom/narvii/video/SharedMediaPlayer;->gAudioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_1

    .line 111
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    .line 114
    :cond_0
    sget-object p0, Lcom/narvii/video/SharedMediaPlayer;->gMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p0, v1, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    .line 115
    sget-object p0, Lcom/narvii/video/SharedMediaPlayer;->gAudioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_1

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 116
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_1
    :goto_0
    return-void
.end method
