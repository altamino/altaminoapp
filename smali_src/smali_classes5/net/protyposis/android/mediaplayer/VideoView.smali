.class public Lnet/protyposis/android/mediaplayer/VideoView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VideoView"


# instance fields
.field private mAudioTrackIndex:I

.field private mBufferingUpdateListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

.field private mCurrentState:I

.field private mErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

.field private mInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

.field private mOnBufferingUpdateListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

.field private mOnSeekListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;

.field private mPlaybackSpeedWhenPrepared:F

.field private mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

.field private mPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

.field private mSeekCompleteListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

.field private mSeekListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;

.field private mSeekWhenPrepared:I

.field private mSizeChangedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

.field private mSource:Lnet/protyposis/android/mediaplayer/MediaSource;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTargetState:I

.field private mVideoHeight:I

.field private mVideoTrackIndex:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mCurrentState:I

    iput p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mTargetState:I

    .line 2
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$3;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$3;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    .line 3
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$4;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$4;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSizeChangedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    .line 4
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$5;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$5;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSeekListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;

    .line 5
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$6;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$6;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSeekCompleteListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

    .line 6
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$7;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$7;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    .line 7
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$8;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$8;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 8
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$9;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$9;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    .line 9
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$10;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$10;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mBufferingUpdateListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

    .line 10
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/VideoView;->initVideoView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mCurrentState:I

    iput p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mTargetState:I

    .line 12
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$3;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$3;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    .line 13
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$4;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$4;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSizeChangedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    .line 14
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$5;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$5;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSeekListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;

    .line 15
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$6;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$6;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSeekCompleteListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

    .line 16
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$7;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$7;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    .line 17
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$8;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$8;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 18
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$9;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$9;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    .line 19
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$10;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$10;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mBufferingUpdateListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

    .line 20
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/VideoView;->initVideoView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mCurrentState:I

    iput p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mTargetState:I

    .line 22
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$3;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$3;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    .line 23
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$4;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$4;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSizeChangedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    .line 24
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$5;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$5;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSeekListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;

    .line 25
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$6;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$6;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSeekCompleteListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

    .line 26
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$7;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$7;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    .line 27
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$8;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$8;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 28
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$9;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$9;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    .line 29
    new-instance p1, Lnet/protyposis/android/mediaplayer/VideoView$10;

    invoke-direct {p1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$10;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mBufferingUpdateListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

    .line 30
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/VideoView;->initVideoView()V

    return-void
.end method

.method static synthetic access$002(Lnet/protyposis/android/mediaplayer/VideoView;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mCurrentState:I

    .line 3
    return p1
.end method

.method static synthetic access$100(Lnet/protyposis/android/mediaplayer/VideoView;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mTargetState:I

    .line 3
    return p0
.end method

.method static synthetic access$1000(Lnet/protyposis/android/mediaplayer/VideoView;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSeekWhenPrepared:I

    .line 3
    return p0
.end method

.method static synthetic access$102(Lnet/protyposis/android/mediaplayer/VideoView;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mTargetState:I

    .line 3
    return p1
.end method

.method static synthetic access$1102(Lnet/protyposis/android/mediaplayer/VideoView;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mVideoWidth:I

    .line 3
    return p1
.end method

.method static synthetic access$1202(Lnet/protyposis/android/mediaplayer/VideoView;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mVideoHeight:I

    .line 3
    return p1
.end method

.method static synthetic access$1300(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mOnSeekListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$1400(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mOnSeekCompleteListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$1500(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mOnCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$1600(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mOnErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$1700(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mOnInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$1800(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mOnBufferingUpdateListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaSource;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSource:Lnet/protyposis/android/mediaplayer/MediaSource;

    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lnet/protyposis/android/mediaplayer/VideoView;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mVideoTrackIndex:I

    .line 3
    return p0
.end method

.method static synthetic access$600(Lnet/protyposis/android/mediaplayer/VideoView;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mAudioTrackIndex:I

    .line 3
    return p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/protyposis/android/mediaplayer/VideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lnet/protyposis/android/mediaplayer/VideoView;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlaybackSpeedWhenPrepared:F

    .line 3
    return p0
.end method

.method static synthetic access$900(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mOnPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    .line 3
    return-object p0
.end method

.method private initVideoView()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 2

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private openVideo()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSource:Lnet/protyposis/android/mediaplayer/MediaSource;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/VideoView;->release()V

    .line 13
    .line 14
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;-><init>()V

    .line 18
    .line 19
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 20
    .line 21
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 25
    .line 26
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 27
    const/4 v1, 0x1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 31
    .line 32
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 33
    .line 34
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnPreparedListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;)V

    .line 38
    .line 39
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 40
    .line 41
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSeekListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnSeekListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;)V

    .line 45
    .line 46
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 47
    .line 48
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSeekCompleteListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnSeekCompleteListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;)V

    .line 52
    .line 53
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 54
    .line 55
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnCompletionListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;)V

    .line 59
    .line 60
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 61
    .line 62
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSizeChangedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnVideoSizeChangedListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 66
    .line 67
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 68
    .line 69
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnErrorListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;)V

    .line 73
    .line 74
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 75
    .line 76
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnInfoListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;)V

    .line 80
    .line 81
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 82
    .line 83
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mBufferingUpdateListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setOnBufferingUpdateListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;)V

    .line 87
    .line 88
    new-instance v0, Landroid/os/Handler;

    .line 89
    .line 90
    new-instance v1, Lnet/protyposis/android/mediaplayer/VideoView$1;

    .line 91
    .line 92
    .line 93
    invoke-direct {v1, p0}, Lnet/protyposis/android/mediaplayer/VideoView$1;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 97
    .line 98
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 99
    .line 100
    new-instance v2, Ljava/lang/Thread;

    .line 101
    .line 102
    new-instance v3, Lnet/protyposis/android/mediaplayer/VideoView$2;

    .line 103
    .line 104
    .line 105
    invoke-direct {v3, p0, v1, v0}, Lnet/protyposis/android/mediaplayer/VideoView$2;-><init>(Lnet/protyposis/android/mediaplayer/VideoView;Lnet/protyposis/android/mediaplayer/MediaPlayer;Landroid/os/Handler;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 112
    :cond_1
    :goto_0
    return-void
.end method

.method private release()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->release()V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    .line 13
    iput v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mCurrentState:I

    .line 14
    .line 15
    iput v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mTargetState:I

    .line 16
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getAudioSessionId()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getBufferPercentage()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/VideoView;->isInPlaybackState()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getCurrentPosition()I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getDuration()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public getMediaPlayer()Lnet/protyposis/android/mediaplayer/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    return-object v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/VideoView;->isInPlaybackState()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getPlaybackSpeed()F

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlaybackSpeedWhenPrepared:F

    .line 16
    return v0
.end method

.method public getSeekMode()Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getSeekMode()Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->isPlaying()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mVideoWidth:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mVideoHeight:I

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 12
    move-result v1

    .line 13
    .line 14
    iget v2, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mVideoWidth:I

    .line 15
    .line 16
    if-lez v2, :cond_8

    .line 17
    .line 18
    iget v2, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mVideoHeight:I

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
    iget v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mVideoWidth:I

    .line 45
    .line 46
    mul-int v1, v0, p2

    .line 47
    .line 48
    iget v2, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mVideoHeight:I

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
    iget v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mVideoHeight:I

    .line 74
    mul-int/2addr v0, p1

    .line 75
    .line 76
    iget v2, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mVideoWidth:I

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
    iget v1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mVideoWidth:I

    .line 89
    mul-int/2addr v1, p2

    .line 90
    .line 91
    iget v2, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mVideoHeight:I

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
    iget v2, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mVideoWidth:I

    .line 103
    .line 104
    iget v4, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mVideoHeight:I

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

.method public pause()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/VideoView;->isInPlaybackState()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->pause()V

    .line 12
    :cond_0
    const/4 v0, 0x4

    .line 13
    .line 14
    iput v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mTargetState:I

    .line 15
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/VideoView;->isInPlaybackState()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->seekTo(I)V

    .line 12
    const/4 p1, 0x0

    .line 13
    .line 14
    iput p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSeekWhenPrepared:I

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iput p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSeekWhenPrepared:I

    .line 18
    :goto_0
    return-void
.end method

.method public setOnBufferingUpdateListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mOnBufferingUpdateListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mOnCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mOnErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mOnInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mOnPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mOnSeekCompleteListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnSeekListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mOnSeekListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/VideoView;->isInPlaybackState()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setPlaybackSpeed(F)V

    .line 17
    .line 18
    :cond_0
    iput p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlaybackSpeedWhenPrepared:F

    .line 19
    return-void

    .line 20
    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v0, "speed cannot be negative"

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1
.end method

.method public setSeekMode(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setSeekMode(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;)V

    .line 6
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lnet/protyposis/android/mediaplayer/UriSource;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, p1}, Lnet/protyposis/android/mediaplayer/UriSource;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lnet/protyposis/android/mediaplayer/VideoView;->setVideoSource(Lnet/protyposis/android/mediaplayer/MediaSource;)V

    .line 17
    return-void
.end method

.method public setVideoSource(Lnet/protyposis/android/mediaplayer/MediaSource;)V
    .locals 1

    const/4 v0, -0x2

    .line 4
    invoke-virtual {p0, p1, v0, v0}, Lnet/protyposis/android/mediaplayer/VideoView;->setVideoSource(Lnet/protyposis/android/mediaplayer/MediaSource;II)V

    return-void
.end method

.method public setVideoSource(Lnet/protyposis/android/mediaplayer/MediaSource;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mCurrentState:I

    iput v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mTargetState:I

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSource:Lnet/protyposis/android/mediaplayer/MediaSource;

    iput p2, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mVideoTrackIndex:I

    iput p3, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mAudioTrackIndex:I

    iput v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSeekWhenPrepared:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlaybackSpeedWhenPrepared:F

    .line 1
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/VideoView;->openVideo()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lnet/protyposis/android/mediaplayer/UriSource;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/protyposis/android/mediaplayer/UriSource;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lnet/protyposis/android/mediaplayer/VideoView;->setVideoSource(Lnet/protyposis/android/mediaplayer/MediaSource;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 2
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Lnet/protyposis/android/mediaplayer/UriSource;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lnet/protyposis/android/mediaplayer/UriSource;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lnet/protyposis/android/mediaplayer/VideoView;->setVideoSource(Lnet/protyposis/android/mediaplayer/MediaSource;)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/VideoView;->isInPlaybackState()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->start()V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x3

    .line 14
    .line 15
    iput v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mTargetState:I

    .line 16
    :goto_0
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->stop()V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mCurrentState:I

    .line 11
    .line 12
    iput v0, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mTargetState:I

    .line 13
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/VideoView;->openVideo()V

    .line 6
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/VideoView;->release()V

    .line 7
    return-void
.end method
