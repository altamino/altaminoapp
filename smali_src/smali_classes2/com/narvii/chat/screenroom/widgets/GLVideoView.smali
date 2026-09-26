.class public Lcom/narvii/chat/screenroom/widgets/GLVideoView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/screenroom/MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;,
        Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;,
        Lcom/narvii/chat/screenroom/widgets/GLVideoView$MyContextFactory;
    }
.end annotation


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GLVideoView"


# instance fields
.field clearSurfaceView:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final exceptionHandler:Landroid/os/Handler;

.field isSurfaceCreated:Z

.field isSurfaceInited:Z

.field private isViewPortSet:Z

.field private mAudioSession:I

.field private mBufferingUpdateListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

.field private mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

.field private mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

.field private mOnCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

.field private mOnVideoSizeChangeListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

.field mPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mVolume:F

.field mediaFrameAvailableListener:Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;

.field onSeekCompleteListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

.field onSeekListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;

.field private videoRender:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I

    iput p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVolume:F

    iput-boolean p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isViewPortSet:Z

    iput-boolean p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isSurfaceInited:Z

    iput-boolean p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isSurfaceCreated:Z

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->clearSurfaceView:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/narvii/chat/screenroom/widgets/GLVideoView$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$1;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->exceptionHandler:Landroid/os/Handler;

    .line 5
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSizeChangedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    .line 6
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    .line 7
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$6;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$6;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    .line 8
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$7;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$7;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    .line 9
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 10
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$9;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$9;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mBufferingUpdateListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

    .line 11
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    iput p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    iput p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I

    iput p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    const/4 p2, 0x2

    .line 15
    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 16
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    invoke-direct {p2, p0, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->videoRender:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    .line 17
    new-instance p1, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MyContextFactory;

    invoke-direct {p1, p0, p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MyContextFactory;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->videoRender:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    .line 18
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSurfaceWidth:I

    return-void
.end method

.method static bridge synthetic B(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    return-void
.end method

.method static bridge synthetic C(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    return-void
.end method

.method static bridge synthetic D(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    return-void
.end method

.method static bridge synthetic E(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->openVideo()V

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->release(Z)V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isViewPortSet:Z

    return p0
.end method

.method private attachMediaController()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/narvii/chat/screenroom/widgets/VideoController;->setMediaPlayer(Lcom/narvii/chat/screenroom/MediaPlayerControl;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    instance-of v0, v0, Landroid/view/View;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Landroid/view/View;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    .line 31
    move-result v1

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->setEnabled(Z)V

    .line 35
    :cond_1
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mHeaders:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    return-object p0
.end method

.method private isInPlaybackState()Z
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static bridge synthetic j(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnVideoSizeChangeListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSeekWhenPrepared:I

    return p0
.end method

.method static bridge synthetic m(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSurfaceHeight:I

    return p0
.end method

.method static bridge synthetic n(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSurfaceWidth:I

    return p0
.end method

.method static bridge synthetic o(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    return p0
.end method

.method private openVideo()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mUri:Landroid/net/Uri;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->videoRender:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->getSurface()Landroid/view/Surface;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isSurfaceCreated:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->release(Z)V

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-string v2, "audio"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Landroid/media/AudioManager;

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x3

    .line 37
    const/4 v4, 0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 41
    .line 42
    :try_start_0
    new-instance v1, Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 43
    .line 44
    .line 45
    invoke-direct {v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;-><init>()V

    .line 46
    .line 47
    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 48
    .line 49
    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVolume:F

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setVolume(F)V

    .line 53
    .line 54
    iget v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mAudioSession:I

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setAudioSessionId(I)V

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getAudioSessionId()I

    .line 74
    move-result v1

    .line 75
    .line 76
    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mAudioSession:I

    .line 77
    .line 78
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->videoRender:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->getSurface()Landroid/view/Surface;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->videoRender:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->getSurface()Landroid/view/Surface;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 98
    .line 99
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnPreparedListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;)V

    .line 105
    .line 106
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 107
    .line 108
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSizeChangedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnVideoSizeChangedListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 112
    .line 113
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 114
    .line 115
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnCompletionListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;)V

    .line 119
    .line 120
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 121
    .line 122
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnErrorListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;)V

    .line 126
    .line 127
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 128
    .line 129
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnInfoListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;)V

    .line 133
    .line 134
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 135
    .line 136
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->onSeekListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnSeekListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;)V

    .line 140
    .line 141
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 142
    .line 143
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->onSeekCompleteListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnSeekCompleteListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;)V

    .line 147
    .line 148
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 149
    .line 150
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mBufferingUpdateListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnBufferingUpdateListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;)V

    .line 154
    .line 155
    iput v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentBufferPercentage:I

    .line 156
    .line 157
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setAudioStreamType(I)V

    .line 161
    .line 162
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setKeepScreenOnView(Landroid/view/View;)V

    .line 166
    .line 167
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v4}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 171
    .line 172
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 173
    .line 174
    new-instance v2, Lcom/narvii/chat/screenroom/widgets/GLVideoView$2;

    .line 175
    .line 176
    .line 177
    invoke-direct {v2, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$2;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setAudioFrameAvailableListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$AudioFrameAvailableListener;)V

    .line 181
    .line 182
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 183
    .line 184
    new-instance v2, Ljava/lang/Thread;

    .line 185
    .line 186
    new-instance v3, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;

    .line 187
    .line 188
    .line 189
    invoke-direct {v3, p0, v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 190
    .line 191
    .line 192
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 196
    .line 197
    iput v4, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I

    .line 198
    .line 199
    .line 200
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    return-void

    .line 202
    :goto_1
    throw v0

    .line 203
    .line 204
    :goto_2
    const-string v2, "GLVideoView"

    .line 205
    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    const-string v5, "Unable to open content: "

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mUri:Landroid/net/Uri;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v3

    .line 224
    .line 225
    .line 226
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    const/4 v1, -0x1

    .line 228
    .line 229
    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I

    .line 230
    .line 231
    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    .line 232
    .line 233
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 234
    .line 235
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 236
    .line 237
    .line 238
    invoke-interface {v1, v2, v4, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;->onError(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z

    .line 239
    :cond_3
    :goto_3
    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    return p0
.end method

.method static bridge synthetic r(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    return p0
.end method

.method private release(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->reset()V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->release()V

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const-string v1, "audio"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Landroid/media/AudioManager;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 36
    :cond_1
    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isViewPortSet:Z

    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCanPause:Z

    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/widgets/VideoController;->isShowing()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/widgets/VideoController;->hide()V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/widgets/VideoController;->show()V

    .line 20
    :goto_0
    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCanSeekBack:Z

    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCanSeekForward:Z

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentBufferPercentage:I

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSurfaceHeight:I

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public clearSurfaceView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->clearSurfaceView:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->draw(Landroid/graphics/Canvas;)V

    .line 4
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    .line 2
    const-class v0, Landroid/widget/VideoView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mAudioSession:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getAudioSessionId()I

    .line 13
    move-result v1

    .line 14
    .line 15
    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mAudioSession:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->release()V

    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mAudioSession:I

    .line 21
    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentBufferPercentage:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getCurrentPosition()I

    .line 12
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    .line 16
    const-string v1, "mediaPlayer"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getDuration()I

    .line 12
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    .line 16
    const-string v1, "mediaPlayer"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :cond_0
    const/4 v0, -0x1

    .line 21
    return v0
.end method

.method public getMediaPlayer()Lnet/protyposis/android/mediaplayer/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVolume:F

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    .line 5
    move-result v1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->isPlaying()Z

    .line 13
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    return v0

    .line 21
    .line 22
    :goto_1
    const-string v2, "mediaPlayer"

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    return v0
.end method

.method public isPreparing()Z
    .locals 2

    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTargetPaused()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    .line 9
    const/4 v1, 0x4

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    .line 4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 4
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x18

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x19

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    const/16 v0, 0xa4

    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const/16 v0, 0x52

    .line 19
    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    const/4 v0, 0x5

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    const/4 v0, 0x6

    .line 25
    .line 26
    if-eq p1, v0, :cond_0

    .line 27
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-eqz v2, :cond_9

    .line 36
    .line 37
    if-eqz v0, :cond_9

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 40
    .line 41
    if-eqz v0, :cond_9

    .line 42
    .line 43
    const/16 v0, 0x4f

    .line 44
    .line 45
    if-eq p1, v0, :cond_7

    .line 46
    .line 47
    const/16 v0, 0x55

    .line 48
    .line 49
    if-ne p1, v0, :cond_1

    .line 50
    goto :goto_2

    .line 51
    .line 52
    :cond_1
    const/16 v0, 0x7e

    .line 53
    .line 54
    if-ne p1, v0, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->isPlaying()Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->start()V

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->hide()V

    .line 71
    :cond_2
    return v1

    .line 72
    .line 73
    :cond_3
    const/16 v0, 0x56

    .line 74
    .line 75
    if-eq p1, v0, :cond_5

    .line 76
    .line 77
    const/16 v0, 0x7f

    .line 78
    .line 79
    if-ne p1, v0, :cond_4

    .line 80
    goto :goto_1

    .line 81
    .line 82
    .line 83
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->toggleMediaControlsVisiblity()V

    .line 84
    goto :goto_4

    .line 85
    .line 86
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->isPlaying()Z

    .line 90
    move-result p1

    .line 91
    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->pause()V

    .line 96
    .line 97
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 98
    .line 99
    .line 100
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->show()V

    .line 101
    :cond_6
    return v1

    .line 102
    .line 103
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->isPlaying()Z

    .line 107
    move-result p1

    .line 108
    .line 109
    if-eqz p1, :cond_8

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->pause()V

    .line 113
    .line 114
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 115
    .line 116
    .line 117
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->show()V

    .line 118
    goto :goto_3

    .line 119
    .line 120
    .line 121
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->start()V

    .line 122
    .line 123
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 124
    .line 125
    .line 126
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->hide()V

    .line 127
    :goto_3
    return v1

    .line 128
    .line 129
    .line 130
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 131
    move-result p1

    .line 132
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/opengl/GLSurfaceView;->onLayout(ZIIII)V

    .line 4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 12
    move-result v1

    .line 13
    .line 14
    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    .line 15
    .line 16
    if-lez v2, :cond_8

    .line 17
    .line 18
    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    .line 19
    .line 20
    if-lez v2, :cond_8

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 24
    move-result v0

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 28
    move-result p1

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 36
    move-result p2

    .line 37
    .line 38
    const/high16 v2, 0x40000000    # 2.0f

    .line 39
    .line 40
    if-ne v0, v2, :cond_1

    .line 41
    .line 42
    if-ne v1, v2, :cond_1

    .line 43
    .line 44
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    .line 45
    .line 46
    mul-int v1, v0, p2

    .line 47
    .line 48
    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    .line 49
    .line 50
    mul-int v3, p1, v2

    .line 51
    .line 52
    if-ge v1, v3, :cond_0

    .line 53
    mul-int/2addr v0, p2

    .line 54
    div-int/2addr v0, v2

    .line 55
    :goto_0
    move v1, p2

    .line 56
    goto :goto_4

    .line 57
    .line 58
    :cond_0
    mul-int v1, v0, p2

    .line 59
    .line 60
    mul-int v3, p1, v2

    .line 61
    .line 62
    if-le v1, v3, :cond_4

    .line 63
    mul-int/2addr v2, p1

    .line 64
    .line 65
    div-int v1, v2, v0

    .line 66
    :goto_1
    move v0, p1

    .line 67
    goto :goto_4

    .line 68
    .line 69
    :cond_1
    const/high16 v3, -0x80000000

    .line 70
    .line 71
    if-ne v0, v2, :cond_3

    .line 72
    .line 73
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    .line 74
    mul-int/2addr v0, p1

    .line 75
    .line 76
    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    .line 77
    div-int/2addr v0, v2

    .line 78
    .line 79
    if-ne v1, v3, :cond_2

    .line 80
    .line 81
    if-le v0, p2, :cond_2

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    move v1, v0

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_3
    if-ne v1, v2, :cond_6

    .line 87
    .line 88
    iget v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    .line 89
    mul-int/2addr v1, p2

    .line 90
    .line 91
    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    .line 92
    div-int/2addr v1, v2

    .line 93
    .line 94
    if-ne v0, v3, :cond_5

    .line 95
    .line 96
    if-le v1, p1, :cond_5

    .line 97
    :cond_4
    :goto_2
    move v0, p1

    .line 98
    goto :goto_0

    .line 99
    :cond_5
    move v0, v1

    .line 100
    goto :goto_0

    .line 101
    .line 102
    :cond_6
    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    .line 103
    .line 104
    iget v4, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    .line 105
    .line 106
    if-ne v1, v3, :cond_7

    .line 107
    .line 108
    if-le v4, p2, :cond_7

    .line 109
    .line 110
    mul-int v1, p2, v2

    .line 111
    div-int/2addr v1, v4

    .line 112
    goto :goto_3

    .line 113
    :cond_7
    move v1, v2

    .line 114
    move p2, v4

    .line 115
    .line 116
    :goto_3
    if-ne v0, v3, :cond_5

    .line 117
    .line 118
    if-le v1, p1, :cond_5

    .line 119
    mul-int/2addr v4, p1

    .line 120
    .line 121
    div-int v1, v4, v2

    .line 122
    goto :goto_1

    .line 123
    .line 124
    .line 125
    :cond_8
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 126
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->toggleMediaControlsVisiblity()V

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->toggleMediaControlsVisiblity()V

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public pause()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->isPlaying()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->pause()V

    .line 21
    .line 22
    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .line 26
    const-string v2, "mediaPlayer"

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    :cond_0
    :goto_0
    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    .line 32
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public resume()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->openVideo()V

    .line 4
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->seekTo(I)V

    .line 12
    const/4 p1, 0x0

    .line 13
    .line 14
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSeekWhenPrepared:I

    .line 15
    goto :goto_1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSeekWhenPrepared:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :goto_0
    const-string v0, "mediaPlayer"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :goto_1
    return-void
.end method

.method public setMediaController(Lcom/narvii/chat/screenroom/widgets/VideoController;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->attachMediaController()V

    .line 6
    return-void
.end method

.method public setOnCompletionListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->onSeekCompleteListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnSeekListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->onSeekListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;

    return-void
.end method

.method public setOnVideoSizeChangeListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnVideoSizeChangeListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setVideoFrameAvailableListener(Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mediaFrameAvailableListener:Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 8
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 2
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->clearSurfaceView()V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mHeaders:Ljava/util/Map;

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSeekWhenPrepared:I

    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->openVideo()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVolume:F

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setVolume(F)V

    .line 10
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->start()V

    .line 13
    .line 14
    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    .line 18
    const-string v2, "mediaPlayer"

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    :cond_0
    :goto_0
    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    .line 24
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->stopPlayback(Z)V

    return-void
.end method

.method public stopPlayback(Z)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I

    iput v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->setMediaPlayer(Lcom/narvii/chat/screenroom/MediaPlayerControl;)V

    :cond_1
    return-void
.end method

.method public suspend()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->release(Z)V

    .line 5
    return-void
.end method
