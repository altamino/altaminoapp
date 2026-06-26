.class public Lcom/narvii/chat/screenroom/widgets/GLVideoView;
.super Landroid/opengl/GLSurfaceView;
.source "GLVideoView.java"

# interfaces
.implements Lcom/narvii/chat/screenroom/MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/screenroom/widgets/GLVideoView$MyContextFactory;,
        Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;,
        Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;
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

    .line 141
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 145
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 82
    iput p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I

    .line 83
    iput p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 87
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 89
    iput v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVolume:F

    .line 111
    iput-boolean p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isViewPortSet:Z

    .line 112
    iput-boolean p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isSurfaceInited:Z

    .line 113
    iput-boolean p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isSurfaceCreated:Z

    .line 114
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->clearSurfaceView:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/narvii/chat/screenroom/widgets/GLVideoView$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$1;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->exceptionHandler:Landroid/os/Handler;

    .line 445
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSizeChangedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    .line 460
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    .line 514
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$6;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$6;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    .line 525
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$7;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$7;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    .line 535
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 575
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$9;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$9;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mBufferingUpdateListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

    .line 637
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 146
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mContext:Landroid/content/Context;

    .line 148
    iput p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    .line 149
    iput p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    const/4 v0, 0x1

    .line 150
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setFocusable(Z)V

    .line 151
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setFocusableInTouchMode(Z)V

    .line 152
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestFocus()Z

    .line 154
    iput p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I

    .line 155
    iput p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    const/4 p2, 0x2

    .line 157
    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 158
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    invoke-direct {p2, p0, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->videoRender:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    .line 159
    new-instance p1, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MyContextFactory;

    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->videoRender:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    invoke-direct {p1, p0, p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MyContextFactory;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 160
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->videoRender:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    return p0
.end method

.method static synthetic access$1002(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$102(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1102(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSeekWhenPrepared:I

    return p0
.end method

.method static synthetic access$1600(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSurfaceWidth:I

    return p0
.end method

.method static synthetic access$1602(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1700(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSurfaceHeight:I

    return p0
.end method

.method static synthetic access$1702(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1800(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$2202(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$2400(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isViewPortSet:Z

    return p0
.end method

.method static synthetic access$2502(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isViewPortSet:Z

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Landroid/net/Uri;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Ljava/util/Map;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mHeaders:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$702(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$800(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$802(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$900(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnVideoSizeChangeListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method private attachMediaController()V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    if-eqz v0, :cond_1

    .line 438
    invoke-interface {v0, p0}, Lcom/narvii/chat/screenroom/widgets/VideoController;->setMediaPlayer(Lcom/narvii/chat/screenroom/MediaPlayerControl;)V

    .line 439
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .line 846
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private openVideo()V
    .locals 6

    .line 319
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->videoRender:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isSurfaceCreated:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 325
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->release(Z)V

    .line 327
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 328
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 331
    :try_start_0
    new-instance v1, Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-direct {v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 332
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVolume:F

    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setVolume(F)V

    .line 334
    iget v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mAudioSession:I

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mAudioSession:I

    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_0

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mAudioSession:I

    .line 339
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->videoRender:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->videoRender:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    invoke-virtual {v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 340
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->videoRender:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    invoke-virtual {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 343
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnPreparedListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;)V

    .line 344
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSizeChangedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnVideoSizeChangedListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 345
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnCompletionListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;)V

    .line 346
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnErrorListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;)V

    .line 347
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnInfoListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;)V

    .line 348
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->onSeekListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;

    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnSeekListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;)V

    .line 349
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->onSeekCompleteListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnSeekCompleteListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;)V

    .line 350
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mBufferingUpdateListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnBufferingUpdateListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;)V

    .line 352
    iput v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentBufferPercentage:I

    .line 354
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {v1, v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setAudioStreamType(I)V

    .line 355
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {v1, p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setKeepScreenOnView(Landroid/view/View;)V

    .line 356
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {v1, v4}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 357
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    new-instance v2, Lcom/narvii/chat/screenroom/widgets/GLVideoView$2;

    invoke-direct {v2, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$2;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    invoke-virtual {v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setAudioFrameAvailableListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$AudioFrameAvailableListener;)V

    .line 366
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 368
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;

    invoke-direct {v3, p0, v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 410
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 412
    iput v4, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I

    .line 413
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "GLVideoView"

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open content: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    .line 419
    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I

    .line 420
    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    .line 421
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-interface {v1, v2, v4, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;->onError(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 424
    :goto_1
    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method private release(Z)V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    if-eqz v0, :cond_1

    .line 670
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->reset()V

    .line 671
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 672
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    const/4 v1, 0x0

    .line 673
    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I

    if-eqz p1, :cond_0

    .line 675
    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    .line 677
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 678
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    invoke-interface {v0}, Lcom/narvii/chat/screenroom/widgets/VideoController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    invoke-interface {v0}, Lcom/narvii/chat/screenroom/widgets/VideoController;->hide()V

    goto :goto_0

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    invoke-interface {v0}, Lcom/narvii/chat/screenroom/widgets/VideoController;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .line 854
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .line 859
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .line 864
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public clearSurfaceView()V
    .locals 2

    .line 878
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->clearSurfaceView:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 900
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 234
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 2

    .line 869
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mAudioSession:I

    if-nez v0, :cond_0

    .line 870
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-direct {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;-><init>()V

    .line 871
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mAudioSession:I

    .line 872
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->release()V

    .line 874
    :cond_0
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mAudioSession:I

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    if-eqz v0, :cond_0

    .line 840
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentBufferPercentage:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 799
    :try_start_0
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "mediaPlayer"

    .line 803
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 787
    :try_start_0
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "mediaPlayer"

    .line 791
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getMediaPlayer()Lnet/protyposis/android/mediaplayer/MediaPlayer;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 307
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVolume:F

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    const/4 v0, 0x0

    .line 825
    :try_start_0
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->isPlaying()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "mediaPlayer"

    .line 827
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public isPreparing()Z
    .locals 2

    .line 243
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

    .line 834
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 883
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 888
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 707
    :goto_0
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    if-eqz v1, :cond_9

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_7

    const/16 v1, 0x55

    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_3

    .line 719
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 720
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->start()V

    .line 721
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->hide()V

    :cond_2
    return v0

    :cond_3
    const/16 v1, 0x56

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7f

    if-ne p1, v1, :cond_4

    goto :goto_1

    .line 732
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->toggleMediaControlsVisiblity()V

    goto :goto_4

    .line 726
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 727
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->pause()V

    .line 728
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->show()V

    :cond_6
    return v0

    .line 710
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 711
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->pause()V

    .line 712
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->show()V

    goto :goto_3

    .line 714
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->start()V

    .line 715
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->hide()V

    :goto_3
    return v0

    .line 736
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 894
    invoke-super/range {p0 .. p5}, Landroid/opengl/GLSurfaceView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 173
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Landroid/opengl/GLSurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 174
    iget v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    invoke-static {v1, p2}, Landroid/opengl/GLSurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 175
    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    if-lez v2, :cond_9

    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    if-lez v2, :cond_9

    .line 177
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 178
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 179
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 180
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    .line 188
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_0

    mul-int v0, v0, p2

    .line 190
    div-int/2addr v0, v2

    move v1, p2

    goto :goto_3

    :cond_0
    mul-int v1, v0, p2

    mul-int v3, p1, v2

    if-le v1, v3, :cond_5

    mul-int v2, v2, p1

    .line 193
    div-int v1, v2, v0

    goto :goto_4

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_3

    .line 198
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    mul-int v0, v0, p1

    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_4

    :cond_3
    if-ne v1, v2, :cond_6

    .line 206
    iget v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_4

    if-le v1, p1, :cond_4

    :goto_0
    goto :goto_1

    :cond_4
    move p1, v1

    :cond_5
    :goto_1
    move v1, p2

    goto :goto_4

    .line 213
    :cond_6
    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    .line 214
    iget v4, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    if-ne v1, v3, :cond_7

    if-le v4, p2, :cond_7

    mul-int v2, v2, p2

    .line 218
    div-int/2addr v2, v4

    move v1, p2

    goto :goto_2

    :cond_7
    move v1, v4

    :goto_2
    if-ne v0, v3, :cond_8

    if-le v2, p1, :cond_8

    .line 223
    iget p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoHeight:I

    mul-int p2, p2, p1

    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVideoWidth:I

    div-int v1, p2, v0

    goto :goto_4

    :cond_8
    move p1, v2

    goto :goto_4

    :cond_9
    :goto_3
    move p1, v0

    .line 229
    :goto_4
    invoke-virtual {p0, p1, v1}, Landroid/opengl/GLSurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 684
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    if-eqz p1, :cond_0

    .line 685
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->toggleMediaControlsVisiblity()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 692
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    if-eqz p1, :cond_0

    .line 693
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->toggleMediaControlsVisiblity()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .locals 3

    .line 762
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->pause()V

    .line 766
    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "mediaPlayer"

    .line 768
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 772
    :cond_0
    :goto_0
    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 0

    .line 238
    invoke-static {p1, p2}, Landroid/opengl/GLSurfaceView;->getDefaultSize(II)I

    move-result p1

    return p1
.end method

.method public resume()V
    .locals 0

    .line 781
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->openVideo()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 811
    :try_start_0
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {v0, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    .line 813
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSeekWhenPrepared:I

    goto :goto_0

    .line 815
    :cond_0
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSeekWhenPrepared:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "mediaPlayer"

    .line 818
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setMediaController(Lcom/narvii/chat/screenroom/widgets/VideoController;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 433
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->attachMediaController()V

    return-void
.end method

.method public setOnCompletionListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->onSeekCompleteListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnSeekListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->onSeekListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;

    return-void
.end method

.method public setOnVideoSizeChangeListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mOnVideoSizeChangeListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setVideoFrameAvailableListener(Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mediaFrameAvailableListener:Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 252
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 262
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

    .line 276
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mUri:Landroid/net/Uri;

    .line 277
    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mHeaders:Ljava/util/Map;

    const/4 p1, 0x0

    .line 278
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mSeekWhenPrepared:I

    .line 279
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->openVideo()V

    .line 280
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestLayout()V

    .line 281
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->invalidate()V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 312
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mVolume:F

    .line 313
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 749
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->start()V

    .line 752
    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "mediaPlayer"

    .line 754
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 757
    :cond_0
    :goto_0
    iput v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    return-void
.end method

.method public stopPlayback()V
    .locals 1

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->stopPlayback(Z)V

    return-void
.end method

.method public stopPlayback(Z)V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->stop()V

    .line 291
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->release()V

    .line 292
    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    const/4 v0, 0x0

    .line 293
    iput v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mCurrentState:I

    .line 294
    iput v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mTargetState:I

    .line 295
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 296
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    if-nez p1, :cond_1

    .line 299
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mMediaController:Lcom/narvii/chat/screenroom/widgets/VideoController;

    if-eqz p1, :cond_1

    .line 300
    invoke-interface {p1, v1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->setMediaPlayer(Lcom/narvii/chat/screenroom/MediaPlayerControl;)V

    :cond_1
    return-void
.end method

.method public suspend()V
    .locals 1

    const/4 v0, 0x0

    .line 777
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->release(Z)V

    return-void
.end method
