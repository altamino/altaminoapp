.class public Lcom/narvii/video/SharedVideoView;
.super Landroid/view/SurfaceView;
.source "SharedVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Lcom/narvii/youtube/YoutubeVideoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/SharedVideoView$LoadVideoListener;,
        Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;
    }
.end annotation


# static fields
.field private static ACTIVE_VIEW:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/video/SharedVideoView;",
            ">;"
        }
    .end annotation
.end field

.field public static final MEDIA_ERROR_FILE_NOT_EXISTS:I = 0x194

.field public static final MEDIA_ERROR_YOUTUBE:I = 0x258

.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PAUSED:I = 0x5

.field public static final STATE_PLAYBACK_COMPLETED:I = 0x6

.field public static final STATE_PLAYING:I = 0x4

.field public static final STATE_PREPARED:I = 0x3

.field public static final STATE_PREPARING:I = 0x1

.field public static final STATE_YOUTUBE_LOADING:I = 0x2

.field static final TAG:Ljava/lang/String; = "videoplayer"

.field static final VERBOSE:Z

.field private static mSurfaceHolderCleanTimeout:I


# instance fields
.field private isPaused:Z

.field private mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

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

.field private mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mLoadVideoListener:Lcom/narvii/video/SharedVideoView$LoadVideoListener;

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private mMute:Z

.field private mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mRenderingStart:Z

.field private mRequestYoutubeVideoId:Ljava/lang/String;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mScreenOnWhilePlaying:Z

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private mStateChangedListener:Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

.field private mStreamUri:Landroid/net/Uri;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceHolderDirty:Z

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mVideoHeight:I

.field private mVideoUri:Landroid/net/Uri;

.field private mVideoWidth:I

.field private mYoutubeService:Lcom/narvii/youtube/YoutubeService;

.field private mediaPreloadService:Lcom/narvii/video/MediaPreloadService;

.field private mediaPreloadServiceInited:Z

.field private openVideoBeginTime:J

.field private photoManager:Lcom/narvii/photos/PhotoManager;

.field private final renderingStartBuffer:Ljava/lang/Runnable;

.field private youtubeLoggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    sput-boolean v0, Lcom/narvii/video/SharedVideoView;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 125
    iput p1, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    .line 126
    iput p1, p0, Lcom/narvii/video/SharedVideoView;->mTargetState:I

    .line 129
    iput-boolean p1, p0, Lcom/narvii/video/SharedVideoView;->mRenderingStart:Z

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 133
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 662
    new-instance p1, Lcom/narvii/video/SharedVideoView$1;

    invoke-direct {p1, p0}, Lcom/narvii/video/SharedVideoView$1;-><init>(Lcom/narvii/video/SharedVideoView;)V

    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 674
    new-instance p1, Lcom/narvii/video/SharedVideoView$2;

    invoke-direct {p1, p0}, Lcom/narvii/video/SharedVideoView$2;-><init>(Lcom/narvii/video/SharedVideoView;)V

    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 735
    new-instance p1, Lcom/narvii/video/SharedVideoView$3;

    invoke-direct {p1, p0}, Lcom/narvii/video/SharedVideoView$3;-><init>(Lcom/narvii/video/SharedVideoView;)V

    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 751
    new-instance p1, Lcom/narvii/video/SharedVideoView$4;

    invoke-direct {p1, p0}, Lcom/narvii/video/SharedVideoView$4;-><init>(Lcom/narvii/video/SharedVideoView;)V

    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 772
    new-instance p1, Lcom/narvii/video/SharedVideoView$5;

    invoke-direct {p1, p0}, Lcom/narvii/video/SharedVideoView$5;-><init>(Lcom/narvii/video/SharedVideoView;)V

    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->renderingStartBuffer:Ljava/lang/Runnable;

    .line 789
    new-instance p1, Lcom/narvii/video/SharedVideoView$6;

    invoke-direct {p1, p0}, Lcom/narvii/video/SharedVideoView$6;-><init>(Lcom/narvii/video/SharedVideoView;)V

    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 810
    new-instance p1, Lcom/narvii/video/SharedVideoView$7;

    invoke-direct {p1, p0}, Lcom/narvii/video/SharedVideoView$7;-><init>(Lcom/narvii/video/SharedVideoView;)V

    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 858
    new-instance p1, Lcom/narvii/video/SharedVideoView$8;

    invoke-direct {p1, p0}, Lcom/narvii/video/SharedVideoView$8;-><init>(Lcom/narvii/video/SharedVideoView;)V

    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 158
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->initVideoView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/video/SharedVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->initVideoView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 167
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 125
    iput p1, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    .line 126
    iput p1, p0, Lcom/narvii/video/SharedVideoView;->mTargetState:I

    .line 129
    iput-boolean p1, p0, Lcom/narvii/video/SharedVideoView;->mRenderingStart:Z

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 133
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 662
    new-instance p1, Lcom/narvii/video/SharedVideoView$1;

    invoke-direct {p1, p0}, Lcom/narvii/video/SharedVideoView$1;-><init>(Lcom/narvii/video/SharedVideoView;)V

    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 674
    new-instance p1, Lcom/narvii/video/SharedVideoView$2;

    invoke-direct {p1, p0}, Lcom/narvii/video/SharedVideoView$2;-><init>(Lcom/narvii/video/SharedVideoView;)V

    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 735
    new-instance p1, Lcom/narvii/video/SharedVideoView$3;

    invoke-direct {p1, p0}, Lcom/narvii/video/SharedVideoView$3;-><init>(Lcom/narvii/video/SharedVideoView;)V

    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 751
    new-instance p1, Lcom/narvii/video/SharedVideoView$4;

    invoke-direct {p1, p0}, Lcom/narvii/video/SharedVideoView$4;-><init>(Lcom/narvii/video/SharedVideoView;)V

    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 772
    new-instance p1, Lcom/narvii/video/SharedVideoView$5;

    invoke-direct {p1, p0}, Lcom/narvii/video/SharedVideoView$5;-><init>(Lcom/narvii/video/SharedVideoView;)V

    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->renderingStartBuffer:Ljava/lang/Runnable;

    .line 789
    new-instance p1, Lcom/narvii/video/SharedVideoView$6;

    invoke-direct {p1, p0}, Lcom/narvii/video/SharedVideoView$6;-><init>(Lcom/narvii/video/SharedVideoView;)V

    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 810
    new-instance p1, Lcom/narvii/video/SharedVideoView$7;

    invoke-direct {p1, p0}, Lcom/narvii/video/SharedVideoView$7;-><init>(Lcom/narvii/video/SharedVideoView;)V

    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 858
    new-instance p1, Lcom/narvii/video/SharedVideoView$8;

    invoke-direct {p1, p0}, Lcom/narvii/video/SharedVideoView$8;-><init>(Lcom/narvii/video/SharedVideoView;)V

    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 168
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->initVideoView()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/video/SharedVideoView;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/narvii/video/SharedVideoView;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$002(Lcom/narvii/video/SharedVideoView;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/narvii/video/SharedVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/video/SharedVideoView;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/narvii/video/SharedVideoView;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$1002(Lcom/narvii/video/SharedVideoView;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/narvii/video/SharedVideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$102(Lcom/narvii/video/SharedVideoView;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/narvii/video/SharedVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1102(Lcom/narvii/video/SharedVideoView;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/narvii/video/SharedVideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/narvii/video/SharedVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/narvii/video/SharedVideoView;)Landroid/widget/MediaController;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/narvii/video/SharedVideoView;->mMediaController:Landroid/widget/MediaController;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/narvii/video/SharedVideoView;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/narvii/video/SharedVideoView;->mSeekWhenPrepared:I

    return p0
.end method

.method static synthetic access$1602(Lcom/narvii/video/SharedVideoView;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/narvii/video/SharedVideoView;->mSurfaceHolderDirty:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/narvii/video/SharedVideoView;)Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/narvii/video/SharedVideoView;->mStateChangedListener:Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/narvii/video/SharedVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/narvii/video/SharedVideoView;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/narvii/video/SharedVideoView;->mRenderingStart:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/narvii/video/SharedVideoView;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/narvii/video/SharedVideoView;->mRenderingStart:Z

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/video/SharedVideoView;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/narvii/video/SharedVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/narvii/video/SharedVideoView;)Ljava/lang/Runnable;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/narvii/video/SharedVideoView;->renderingStartBuffer:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$202(Lcom/narvii/video/SharedVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/narvii/video/SharedVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/narvii/video/SharedVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/narvii/video/SharedVideoView;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/narvii/video/SharedVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$2400(Lcom/narvii/video/SharedVideoView;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$2500(Lcom/narvii/video/SharedVideoView;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/narvii/video/SharedVideoView;->detachMediaPlayer(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/narvii/video/SharedVideoView;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/narvii/video/SharedVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/video/SharedVideoView;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    return p0
.end method

.method static synthetic access$302(Lcom/narvii/video/SharedVideoView;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$400(Lcom/narvii/video/SharedVideoView;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/narvii/video/SharedVideoView;->mTargetState:I

    return p0
.end method

.method static synthetic access$402(Lcom/narvii/video/SharedVideoView;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/narvii/video/SharedVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$500(Lcom/narvii/video/SharedVideoView;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/narvii/video/SharedVideoView;->mSurfaceWidth:I

    return p0
.end method

.method static synthetic access$502(Lcom/narvii/video/SharedVideoView;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/narvii/video/SharedVideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$600(Lcom/narvii/video/SharedVideoView;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/narvii/video/SharedVideoView;->mSurfaceHeight:I

    return p0
.end method

.method static synthetic access$602(Lcom/narvii/video/SharedVideoView;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/narvii/video/SharedVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/narvii/video/SharedVideoView;)Landroid/net/Uri;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/narvii/video/SharedVideoView;->mVideoUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/video/SharedVideoView;)J
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/narvii/video/SharedVideoView;->openVideoBeginTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/narvii/video/SharedVideoView;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/narvii/video/SharedVideoView;->mCanPause:Z

    return p1
.end method

.method private attachMediaController()V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 654
    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 655
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 657
    :goto_0
    iget-object v1, p0, Lcom/narvii/video/SharedVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 658
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->isInPlaybackState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private clearSurface(Landroid/view/Surface;)V
    .locals 12

    .line 595
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    sget v0, Lcom/narvii/video/SharedVideoView;->mSurfaceHolderCleanTimeout:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto/16 :goto_0

    .line 598
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 599
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 600
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v10

    const/4 v4, 0x0

    .line 601
    invoke-interface {v0, v10, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/16 v4, 0xd

    new-array v6, v4, [I

    .line 603
    fill-array-data v6, :array_0

    new-array v11, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v9, v1, [I

    .line 614
    array-length v8, v11

    move-object v4, v0

    move-object v5, v10

    move-object v7, v11

    invoke-interface/range {v4 .. v9}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v4, 0x0

    .line 615
    aget-object v5, v11, v4

    .line 616
    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v7, 0x3

    new-array v7, v7, [I

    fill-array-data v7, :array_1

    invoke-interface {v0, v10, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v6

    new-array v7, v1, [I

    const/16 v8, 0x3038

    aput v8, v7, v4

    .line 620
    invoke-interface {v0, v10, v5, p1, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    .line 625
    invoke-interface {v0, v10, p1, p1, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 626
    invoke-static {v5, v5, v5, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v4, 0x4000

    .line 627
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 628
    invoke-interface {v0, v10, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 629
    invoke-interface {v0, v10, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 630
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v10, p1, p1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 632
    invoke-interface {v0, v10, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 633
    invoke-interface {v0, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 634
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x1e

    cmp-long p1, v4, v2

    if-lez p1, :cond_1

    .line 636
    sget p1, Lcom/narvii/video/SharedVideoView;->mSurfaceHolderCleanTimeout:I

    add-int/2addr p1, v1

    sput p1, Lcom/narvii/video/SharedVideoView;->mSurfaceHolderCleanTimeout:I

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0xf

    cmp-long p1, v4, v2

    if-gez p1, :cond_2

    .line 638
    sget p1, Lcom/narvii/video/SharedVideoView;->mSurfaceHolderCleanTimeout:I

    if-lez p1, :cond_2

    sub-int/2addr p1, v1

    .line 639
    sput p1, Lcom/narvii/video/SharedVideoView;->mSurfaceHolderCleanTimeout:I

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
        0x0
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private detachMediaPlayer(Z)V
    .locals 3

    .line 552
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 553
    sget-boolean v0, Lcom/narvii/video/SharedVideoView;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "videoplayer"

    const-string v2, "detachMediaPlayer()"

    .line 554
    invoke-static {v0, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0}, Lcom/narvii/video/SharedMediaPlayer;->isReleased(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    .line 557
    iget v0, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 558
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 562
    :cond_2
    sput-object v1, Lcom/narvii/video/SharedMediaPlayer;->gPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 563
    sput-object v1, Lcom/narvii/video/SharedMediaPlayer;->gErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 564
    sput-object v1, Lcom/narvii/video/SharedMediaPlayer;->gCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 565
    sput-object v1, Lcom/narvii/video/SharedMediaPlayer;->gInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 566
    sput-object v1, Lcom/narvii/video/SharedMediaPlayer;->gBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 567
    sput-object v1, Lcom/narvii/video/SharedMediaPlayer;->gVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 569
    :cond_3
    iput-object v1, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 571
    iget p1, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    const/4 v2, 0x1

    if-le p1, v2, :cond_5

    .line 572
    iput v2, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    .line 573
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView;->mStateChangedListener:Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    if-eqz p1, :cond_5

    .line 574
    iget v2, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    invoke-interface {p1, p0, v2}, Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/narvii/video/SharedVideoView;I)V

    goto :goto_0

    .line 578
    :cond_4
    iget p1, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    if-eqz p1, :cond_5

    .line 579
    iput v0, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    .line 580
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView;->mStateChangedListener:Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    if-eqz p1, :cond_5

    .line 581
    iget v2, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    invoke-interface {p1, p0, v2}, Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/narvii/video/SharedVideoView;I)V

    .line 585
    :cond_5
    :goto_0
    iput v0, p0, Lcom/narvii/video/SharedVideoView;->mVideoWidth:I

    .line 586
    iput v0, p0, Lcom/narvii/video/SharedVideoView;->mVideoHeight:I

    .line 587
    sget-object p1, Lcom/narvii/video/SharedVideoView;->ACTIVE_VIEW:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_6

    .line 588
    sput-object v1, Lcom/narvii/video/SharedVideoView;->ACTIVE_VIEW:Ljava/lang/ref/WeakReference;

    :cond_6
    return-void
.end method

.method private getMediaPreloadService()Lcom/narvii/video/MediaPreloadService;
    .locals 2

    .line 1116
    iget-boolean v0, p0, Lcom/narvii/video/SharedVideoView;->mediaPreloadServiceInited:Z

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mediaPreloadService:Lcom/narvii/video/MediaPreloadService;

    return-object v0

    .line 1119
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1121
    iput-object v0, p0, Lcom/narvii/video/SharedVideoView;->mediaPreloadService:Lcom/narvii/video/MediaPreloadService;

    goto :goto_0

    :cond_1
    const-string v1, "mediapreload"

    .line 1123
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/MediaPreloadService;

    iput-object v0, p0, Lcom/narvii/video/SharedVideoView;->mediaPreloadService:Lcom/narvii/video/MediaPreloadService;

    const/4 v0, 0x1

    .line 1124
    iput-boolean v0, p0, Lcom/narvii/video/SharedVideoView;->mediaPreloadServiceInited:Z

    .line 1126
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mediaPreloadService:Lcom/narvii/video/MediaPreloadService;

    return-object v0
.end method

.method private getPhotoManager()Lcom/narvii/photos/PhotoManager;
    .locals 2

    .line 1099
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->photoManager:Lcom/narvii/photos/PhotoManager;

    if-nez v0, :cond_0

    .line 1100
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "photo"

    .line 1102
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    iput-object v0, p0, Lcom/narvii/video/SharedVideoView;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->photoManager:Lcom/narvii/photos/PhotoManager;

    return-object v0
.end method

.method private getYoutubeService()Lcom/narvii/youtube/YoutubeService;
    .locals 2

    .line 1132
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mYoutubeService:Lcom/narvii/youtube/YoutubeService;

    if-eqz v0, :cond_0

    return-object v0

    .line 1135
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "youtube"

    .line 1137
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/youtube/YoutubeService;

    .line 1138
    iput-object v0, p0, Lcom/narvii/video/SharedVideoView;->mYoutubeService:Lcom/narvii/youtube/YoutubeService;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private initVideoView()V
    .locals 3

    const/4 v0, 0x0

    .line 322
    iput v0, p0, Lcom/narvii/video/SharedVideoView;->mVideoWidth:I

    .line 323
    iput v0, p0, Lcom/narvii/video/SharedVideoView;->mVideoHeight:I

    .line 324
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 325
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v1, 0x1

    .line 326
    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 327
    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 328
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestFocus()Z

    .line 329
    iput v0, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    .line 330
    iput v0, p0, Lcom/narvii/video/SharedVideoView;->mTargetState:I

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .line 1062
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

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
    .locals 11

    .line 407
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mVideoUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 408
    invoke-direct {p0, v1}, Lcom/narvii/video/SharedVideoView;->detachMediaPlayer(Z)V

    return-void

    .line 412
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mStreamUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-nez v2, :cond_d

    if-nez v0, :cond_5

    .line 415
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v6, "photo"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 416
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->getPhotoManager()Lcom/narvii/photos/PhotoManager;

    move-result-object v2

    iget-object v6, p0, Lcom/narvii/video/SharedVideoView;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 417
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    .line 418
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/video/SharedVideoView;->mStreamUri:Landroid/net/Uri;

    goto/16 :goto_1

    .line 420
    :cond_1
    invoke-direct {p0, v1}, Lcom/narvii/video/SharedVideoView;->detachMediaPlayer(Z)V

    .line 421
    iput v5, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    .line 422
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mStateChangedListener:Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_2

    .line 423
    iget v2, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    invoke-interface {v0, p0, v2}, Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/narvii/video/SharedVideoView;I)V

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_3

    const/16 v2, 0x194

    .line 426
    invoke-interface {v0, v3, v2, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    :cond_3
    return-void

    .line 431
    :cond_4
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mVideoUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/narvii/video/SharedVideoView;->mStreamUri:Landroid/net/Uri;

    goto :goto_1

    .line 433
    :cond_5
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->getYoutubeService()Lcom/narvii/youtube/YoutubeService;

    move-result-object v2

    if-nez v2, :cond_8

    .line 434
    invoke-direct {p0, v1}, Lcom/narvii/video/SharedVideoView;->detachMediaPlayer(Z)V

    .line 435
    iput v5, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    .line 436
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mStateChangedListener:Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_6

    .line 437
    iget v2, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    invoke-interface {v0, p0, v2}, Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/narvii/video/SharedVideoView;I)V

    .line 439
    :cond_6
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_7

    const/16 v2, 0x258

    .line 440
    invoke-interface {v0, v3, v2, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    :cond_7
    return-void

    .line 444
    :cond_8
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mRequestYoutubeVideoId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 445
    iput-object v0, p0, Lcom/narvii/video/SharedVideoView;->mRequestYoutubeVideoId:Ljava/lang/String;

    .line 446
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->getYoutubeService()Lcom/narvii/youtube/YoutubeService;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/video/SharedVideoView;->youtubeLoggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;

    invoke-virtual {v2, v0, v3, p0}, Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    .line 449
    :cond_9
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mStreamUri:Landroid/net/Uri;

    if-nez v0, :cond_c

    .line 450
    iget v0, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    if-ne v0, v5, :cond_a

    goto :goto_0

    :cond_a
    const/4 v4, 0x0

    .line 451
    :goto_0
    invoke-direct {p0, v1}, Lcom/narvii/video/SharedVideoView;->detachMediaPlayer(Z)V

    if-nez v4, :cond_c

    const/4 v0, 0x2

    .line 453
    iput v0, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    .line 454
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mStateChangedListener:Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_b

    .line 455
    iget v1, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    invoke-interface {v0, p0, v1}, Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/narvii/video/SharedVideoView;I)V

    .line 457
    :cond_b
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mLoadVideoListener:Lcom/narvii/video/SharedVideoView$LoadVideoListener;

    if-eqz v0, :cond_c

    .line 458
    invoke-interface {v0}, Lcom/narvii/video/SharedVideoView$LoadVideoListener;->onBeignFetchUrl()V

    :cond_c
    return-void

    .line 466
    :cond_d
    :goto_1
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mStreamUri:Landroid/net/Uri;

    if-eqz v0, :cond_e

    .line 468
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->getMediaPreloadService()Lcom/narvii/video/MediaPreloadService;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 470
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mStreamUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lcom/narvii/video/MediaPreloadService;->translateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_2

    .line 472
    :cond_e
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v6, "http"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mStreamUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v6, "https"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 473
    :cond_f
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->getMediaPreloadService()Lcom/narvii/video/MediaPreloadService;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 475
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mStreamUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/narvii/video/SharedVideoView;->mStreamUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/narvii/video/MediaPreloadService;->translateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 478
    :cond_10
    :goto_2
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, p0, Lcom/narvii/video/SharedVideoView;->mHeaders:Ljava/util/Map;

    invoke-static {v0, v2, v6}, Lcom/narvii/video/SharedMediaPlayer;->getMediaPlayer(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 479
    sget-boolean v2, Lcom/narvii/video/SharedVideoView;->VERBOSE:Z

    if-eqz v2, :cond_12

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openVideo(), mpState="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/narvii/video/SharedMediaPlayer;->gCurrentState:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", tState="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/narvii/video/SharedVideoView;->mTargetState:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", surface="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/narvii/video/SharedVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v6, :cond_11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/narvii/video/SharedVideoView;->mSurfaceWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/narvii/video/SharedVideoView;->mSurfaceHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_11
    const-string v6, "null"

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "videoplayer"

    invoke-static {v6, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_12
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mLoadVideoListener:Lcom/narvii/video/SharedVideoView$LoadVideoListener;

    if-eqz v2, :cond_13

    .line 483
    invoke-interface {v2}, Lcom/narvii/video/SharedVideoView$LoadVideoListener;->onBeignLoadVideo()V

    .line 485
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/narvii/video/SharedVideoView;->openVideoBeginTime:J

    .line 486
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eq v0, v2, :cond_16

    .line 489
    invoke-direct {p0, v1}, Lcom/narvii/video/SharedVideoView;->detachMediaPlayer(Z)V

    .line 490
    iget-boolean v2, p0, Lcom/narvii/video/SharedVideoView;->mMute:Z

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    goto :goto_4

    :cond_14
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_4
    iget-boolean v8, p0, Lcom/narvii/video/SharedVideoView;->mMute:Z

    if-eqz v8, :cond_15

    goto :goto_5

    :cond_15
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_5
    invoke-interface {v0, v2, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    .line 492
    :cond_16
    sget-object v2, Lcom/narvii/video/SharedVideoView;->ACTIVE_VIEW:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_17

    .line 493
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/SharedVideoView;

    .line 494
    sput-object v3, Lcom/narvii/video/SharedVideoView;->ACTIVE_VIEW:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_17

    if-eq v2, p0, :cond_17

    .line 496
    invoke-direct {v2, v4}, Lcom/narvii/video/SharedVideoView;->detachMediaPlayer(Z)V

    .line 499
    :cond_17
    iput-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 500
    iget-boolean v2, p0, Lcom/narvii/video/SharedVideoView;->mScreenOnWhilePlaying:Z

    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 502
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/narvii/video/SharedVideoView;->ACTIVE_VIEW:Ljava/lang/ref/WeakReference;

    .line 504
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    sput-object v2, Lcom/narvii/video/SharedMediaPlayer;->gPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 505
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    sput-object v2, Lcom/narvii/video/SharedMediaPlayer;->gVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 506
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    sput-object v2, Lcom/narvii/video/SharedMediaPlayer;->gCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 507
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    sput-object v2, Lcom/narvii/video/SharedMediaPlayer;->gErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 508
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    sput-object v2, Lcom/narvii/video/SharedMediaPlayer;->gInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 509
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    sput-object v2, Lcom/narvii/video/SharedMediaPlayer;->gBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 510
    sget v2, Lcom/narvii/video/SharedMediaPlayer;->gCurrentBufferPercentage:I

    iput v2, p0, Lcom/narvii/video/SharedVideoView;->mCurrentBufferPercentage:I

    .line 512
    sget-boolean v2, Lcom/narvii/video/SharedMediaPlayer;->gCurrentRenderingStart:Z

    iput-boolean v2, p0, Lcom/narvii/video/SharedVideoView;->mRenderingStart:Z

    .line 513
    iget v2, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_18

    sget v6, Lcom/narvii/video/SharedMediaPlayer;->gCurrentState:I

    if-ne v2, v6, :cond_18

    return-void

    .line 518
    :cond_18
    sget v2, Lcom/narvii/video/SharedMediaPlayer;->gCurrentState:I

    iput v2, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    .line 519
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_1c

    .line 520
    iget-boolean v6, p0, Lcom/narvii/video/SharedVideoView;->mSurfaceHolderDirty:Z

    if-eqz v6, :cond_19

    .line 522
    :try_start_0
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/narvii/video/SharedVideoView;->clearSurface(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v2

    .line 524
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 526
    :goto_6
    iput-boolean v1, p0, Lcom/narvii/video/SharedVideoView;->mSurfaceHolderDirty:Z

    .line 528
    :cond_19
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/narvii/video/SharedVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 529
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->attachMediaController()V

    .line 531
    sget v2, Lcom/narvii/video/SharedMediaPlayer;->gCurrentState:I

    if-lt v2, v3, :cond_1a

    .line 532
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v2, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 534
    iget v0, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    const/4 v0, 0x1

    goto :goto_7

    :cond_1a
    const/4 v0, 0x0

    .line 537
    :goto_7
    iget v2, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    if-ne v2, v5, :cond_1b

    .line 538
    iput v5, p0, Lcom/narvii/video/SharedVideoView;->mTargetState:I

    .line 539
    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2, v3, v4, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    goto :goto_8

    .line 540
    :cond_1b
    iget v1, p0, Lcom/narvii/video/SharedVideoView;->mTargetState:I

    const/4 v5, 0x4

    if-ne v1, v5, :cond_1d

    if-eq v2, v5, :cond_1d

    if-lt v2, v3, :cond_1d

    .line 541
    invoke-virtual {p0}, Lcom/narvii/video/SharedVideoView;->start()V

    const/4 v0, 0x1

    goto :goto_8

    :cond_1c
    const/4 v0, 0x0

    .line 545
    :cond_1d
    :goto_8
    sget-boolean v1, Lcom/narvii/video/SharedMediaPlayer;->gCurrentRenderingStart:Z

    iput-boolean v1, p0, Lcom/narvii/video/SharedVideoView;->mRenderingStart:Z

    if-nez v0, :cond_1e

    .line 546
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mStateChangedListener:Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_1e

    .line 547
    iget v1, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    invoke-interface {v0, p0, v1}, Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/narvii/video/SharedVideoView;I)V

    :cond_1e
    return-void
.end method

.method private release(Z)V
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 892
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    .line 893
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    const/4 v0, 0x0

    .line 894
    iput-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v0, 0x0

    .line 895
    iput v0, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    if-eqz p1, :cond_0

    .line 897
    iput v0, p0, Lcom/narvii/video/SharedVideoView;->mTargetState:I

    :cond_0
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_0

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .line 1070
    iget-boolean v0, p0, Lcom/narvii/video/SharedVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .line 1075
    iget-boolean v0, p0, Lcom/narvii/video/SharedVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .line 1080
    iget-boolean v0, p0, Lcom/narvii/video/SharedVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 1085
    invoke-static {}, Lcom/narvii/video/SharedMediaPlayer;->getAudioSession()I

    move-result v0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 1056
    iget v0, p0, Lcom/narvii/video/SharedVideoView;->mCurrentBufferPercentage:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 1032
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentState()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 1023
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getProgress()F
    .locals 2

    .line 1015
    invoke-virtual {p0}, Lcom/narvii/video/SharedVideoView;->getDuration()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1018
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/SharedVideoView;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    invoke-virtual {p0}, Lcom/narvii/video/SharedVideoView;->getDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getStreamURI()Landroid/net/Uri;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mStreamUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getTargetState()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/narvii/video/SharedVideoView;->mTargetState:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1093
    iget v0, p0, Lcom/narvii/video/SharedVideoView;->mVideoHeight:I

    return v0
.end method

.method public getVideoURI()Landroid/net/Uri;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1089
    iget v0, p0, Lcom/narvii/video/SharedVideoView;->mVideoWidth:I

    return v0
.end method

.method public isMute()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/narvii/video/SharedVideoView;->mMute:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1050
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRenderingStart()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/narvii/video/SharedVideoView;->mRenderingStart:Z

    return v0
.end method

.method public isScreenOnWhilePlaying()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/narvii/video/SharedVideoView;->mScreenOnWhilePlaying:Z

    return v0
.end method

.method public onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mRequestYoutubeVideoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1163
    sget-boolean p1, Lcom/narvii/video/SharedVideoView;->VERBOSE:Z

    if-eqz p1, :cond_0

    .line 1164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "youtube fail: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "videoplayer"

    invoke-static {p3, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 1166
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mRequestYoutubeVideoId:Ljava/lang/String;

    const/4 p3, -0x1

    .line 1167
    iput p3, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    .line 1168
    iget-object p3, p0, Lcom/narvii/video/SharedVideoView;->mStateChangedListener:Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    if-eqz p3, :cond_1

    .line 1169
    iget v0, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    invoke-interface {p3, p0, v0}, Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/narvii/video/SharedVideoView;I)V

    .line 1171
    :cond_1
    iget-object p3, p0, Lcom/narvii/video/SharedVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    if-eqz p3, :cond_2

    const/16 v0, 0x258

    .line 1172
    invoke-interface {p3, p1, v0, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    :cond_2
    return-void
.end method

.method public onFinish(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;)V
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mRequestYoutubeVideoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1148
    invoke-virtual {p2}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 1149
    sget-boolean p2, Lcom/narvii/video/SharedVideoView;->VERBOSE:Z

    if-eqz p2, :cond_0

    .line 1150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "youtube finish: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "videoplayer"

    invoke-static {v0, p2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    .line 1152
    iput-object p2, p0, Lcom/narvii/video/SharedVideoView;->mRequestYoutubeVideoId:Ljava/lang/String;

    .line 1153
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mStreamUri:Landroid/net/Uri;

    .line 1154
    iget-boolean p1, p0, Lcom/narvii/video/SharedVideoView;->isPaused:Z

    if-nez p1, :cond_1

    .line 1155
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->openVideo()V

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 311
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 312
    const-class v0, Lcom/narvii/video/SharedVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 317
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 318
    const-class v0, Lcom/narvii/video/SharedVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

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

    .line 927
    :goto_0
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/narvii/video/SharedVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_9

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_7

    const/16 v1, 0x55

    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_3

    .line 939
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 940
    invoke-virtual {p0}, Lcom/narvii/video/SharedVideoView;->start()V

    .line 941
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    :cond_2
    return v0

    :cond_3
    const/16 v1, 0x56

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7f

    if-ne p1, v1, :cond_4

    goto :goto_1

    .line 952
    :cond_4
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->toggleMediaControlsVisiblity()V

    goto :goto_4

    .line 946
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 947
    invoke-virtual {p0}, Lcom/narvii/video/SharedVideoView;->pause()V

    .line 948
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->show()V

    :cond_6
    return v0

    .line 930
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 931
    invoke-virtual {p0}, Lcom/narvii/video/SharedVideoView;->pause()V

    .line 932
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->show()V

    goto :goto_3

    .line 934
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/video/SharedVideoView;->start()V

    .line 935
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    :goto_3
    return v0

    .line 956
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 227
    iget v0, p0, Lcom/narvii/video/SharedVideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 228
    iget v1, p0, Lcom/narvii/video/SharedVideoView;->mVideoHeight:I

    invoke-static {v1, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 229
    iget v2, p0, Lcom/narvii/video/SharedVideoView;->mVideoWidth:I

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-lez v2, :cond_b

    iget v2, p0, Lcom/narvii/video/SharedVideoView;->mVideoHeight:I

    if-lez v2, :cond_b

    .line 231
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 232
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 233
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 234
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-ne v0, v4, :cond_1

    if-ne v1, v4, :cond_1

    .line 242
    iget v0, p0, Lcom/narvii/video/SharedVideoView;->mVideoWidth:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/narvii/video/SharedVideoView;->mVideoHeight:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_0

    mul-int v0, v0, p2

    .line 244
    div-int/2addr v0, v2

    goto :goto_2

    :cond_0
    mul-int v1, v0, p2

    mul-int v3, p1, v2

    if-le v1, v3, :cond_4

    mul-int v2, v2, p1

    .line 247
    div-int/2addr v2, v0

    :goto_0
    move v0, p1

    move v1, v2

    goto/16 :goto_4

    :cond_1
    if-ne v0, v4, :cond_3

    .line 252
    iget v0, p0, Lcom/narvii/video/SharedVideoView;->mVideoHeight:I

    mul-int v0, v0, p1

    iget v2, p0, Lcom/narvii/video/SharedVideoView;->mVideoWidth:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    move v0, p1

    goto/16 :goto_4

    :cond_3
    if-ne v1, v4, :cond_6

    .line 260
    iget v1, p0, Lcom/narvii/video/SharedVideoView;->mVideoWidth:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/narvii/video/SharedVideoView;->mVideoHeight:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    :cond_4
    :goto_1
    move v0, p1

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    move v1, p2

    goto/16 :goto_4

    :cond_6
    if-ne v0, v3, :cond_8

    if-ne v1, v3, :cond_8

    if-lez p1, :cond_8

    if-lez p2, :cond_8

    .line 268
    iget v0, p0, Lcom/narvii/video/SharedVideoView;->mVideoWidth:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/narvii/video/SharedVideoView;->mVideoHeight:I

    mul-int v3, v2, p1

    if-le v1, v3, :cond_7

    mul-int v2, v2, p1

    .line 270
    div-int/2addr v2, v0

    goto :goto_0

    :cond_7
    mul-int v0, v0, p2

    .line 273
    div-int/2addr v0, v2

    goto :goto_2

    .line 277
    :cond_8
    iget v2, p0, Lcom/narvii/video/SharedVideoView;->mVideoWidth:I

    .line 278
    iget v4, p0, Lcom/narvii/video/SharedVideoView;->mVideoHeight:I

    if-ne v1, v3, :cond_9

    if-le v4, p2, :cond_9

    mul-int v2, v2, p2

    .line 282
    div-int/2addr v2, v4

    goto :goto_3

    :cond_9
    move p2, v4

    :goto_3
    if-ne v0, v3, :cond_a

    if-le v2, p1, :cond_a

    .line 287
    iget p2, p0, Lcom/narvii/video/SharedVideoView;->mVideoHeight:I

    mul-int p2, p2, p1

    iget v0, p0, Lcom/narvii/video/SharedVideoView;->mVideoWidth:I

    div-int/2addr p2, v0

    goto :goto_1

    :cond_a
    move v1, p2

    move v0, v2

    goto :goto_4

    .line 292
    :cond_b
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 293
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-ne v2, v4, :cond_c

    if-eq v5, v4, :cond_c

    mul-int/lit8 p1, v0, 0x9

    .line 295
    div-int/lit8 v1, p1, 0x10

    if-ne v5, v3, :cond_d

    .line 297
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_4

    :cond_c
    if-eq v2, v4, :cond_d

    if-ne v5, v4, :cond_d

    mul-int/lit8 p2, v1, 0x10

    .line 300
    div-int/lit8 v0, p2, 0x9

    if-ne v2, v3, :cond_d

    .line 302
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 306
    :cond_d
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 904
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->isInPlaybackState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/video/SharedVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz p1, :cond_0

    .line 905
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->toggleMediaControlsVisiblity()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 912
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->isInPlaybackState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/video/SharedVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz p1, :cond_0

    .line 913
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->toggleMediaControlsVisiblity()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .locals 3

    .line 997
    sget-boolean v0, Lcom/narvii/video/SharedVideoView;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pause(), isInPlaybackState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->isInPlaybackState()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoplayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1002
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    .line 1003
    iget v0, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    if-eq v0, v1, :cond_1

    .line 1004
    iput v1, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    .line 1005
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mStateChangedListener:Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_1

    .line 1006
    iget v2, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    invoke-interface {v0, p0, v2}, Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/narvii/video/SharedVideoView;I)V

    .line 1011
    :cond_1
    iput v1, p0, Lcom/narvii/video/SharedVideoView;->mTargetState:I

    return-void
.end method

.method public removeLoadVideoListener(Lcom/narvii/video/SharedVideoView$LoadVideoListener;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mLoadVideoListener:Lcom/narvii/video/SharedVideoView$LoadVideoListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 181
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mLoadVideoListener:Lcom/narvii/video/SharedVideoView$LoadVideoListener;

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 3

    .line 1040
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    const/4 p1, 0x0

    .line 1042
    iput p1, p0, Lcom/narvii/video/SharedVideoView;->mSeekWhenPrepared:I

    goto :goto_0

    .line 1044
    :cond_0
    iput p1, p0, Lcom/narvii/video/SharedVideoView;->mSeekWhenPrepared:I

    :goto_0
    return-void
.end method

.method public setLoadVideoListener(Lcom/narvii/video/SharedVideoView$LoadVideoListener;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mLoadVideoListener:Lcom/narvii/video/SharedVideoView$LoadVideoListener;

    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 648
    :cond_0
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mMediaController:Landroid/widget/MediaController;

    .line 649
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->attachMediaController()V

    return-void
.end method

.method public setMute(Z)V
    .locals 4

    .line 190
    iput-boolean p1, p0, Lcom/narvii/video/SharedVideoView;->mMute:Z

    .line 191
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 192
    :goto_1
    invoke-interface {v0, v3, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    .line 193
    iget v0, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    xor-int/lit8 p1, p1, 0x1

    .line 194
    invoke-static {p1}, Lcom/narvii/video/SharedMediaPlayer;->setAudioFocused(Z)V

    :cond_2
    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 833
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .line 845
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .line 855
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPlaybackStateChangedListener(Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mStateChangedListener:Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 823
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setPaused(Z)V
    .locals 0

    .line 992
    iput-boolean p1, p0, Lcom/narvii/video/SharedVideoView;->isPaused:Z

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    .line 204
    iput-boolean p1, p0, Lcom/narvii/video/SharedVideoView;->mScreenOnWhilePlaying:Z

    .line 205
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    :cond_0
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 339
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/video/SharedVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0, p1, v0, v0}, Lcom/narvii/video/SharedVideoView;->setVideoURI(Landroid/net/Uri;Lcom/narvii/youtube/YoutubeLoggingStub;Ljava/util/Map;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Lcom/narvii/youtube/YoutubeLoggingStub;)V
    .locals 1

    const/4 v0, 0x0

    .line 352
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/video/SharedVideoView;->setVideoURI(Landroid/net/Uri;Lcom/narvii/youtube/YoutubeLoggingStub;Ljava/util/Map;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Lcom/narvii/youtube/YoutubeLoggingStub;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/narvii/youtube/YoutubeLoggingStub;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mVideoUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 367
    iput-object v1, p0, Lcom/narvii/video/SharedVideoView;->mStreamUri:Landroid/net/Uri;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mRequestYoutubeVideoId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->getYoutubeService()Lcom/narvii/youtube/YoutubeService;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/video/SharedVideoView;->mRequestYoutubeVideoId:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lcom/narvii/youtube/YoutubeService;->abort(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    .line 371
    iput-object v1, p0, Lcom/narvii/video/SharedVideoView;->mRequestYoutubeVideoId:Ljava/lang/String;

    .line 372
    iput-object v1, p0, Lcom/narvii/video/SharedVideoView;->mStreamUri:Landroid/net/Uri;

    .line 374
    :cond_1
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView;->mVideoUri:Landroid/net/Uri;

    .line 375
    iput-object p2, p0, Lcom/narvii/video/SharedVideoView;->youtubeLoggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;

    .line 376
    iput-object p3, p0, Lcom/narvii/video/SharedVideoView;->mHeaders:Ljava/util/Map;

    const/4 p1, 0x0

    .line 377
    iput p1, p0, Lcom/narvii/video/SharedVideoView;->mSeekWhenPrepared:I

    .line 378
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->openVideo()V

    .line 379
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 380
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method public start()V
    .locals 4

    .line 969
    sget-boolean v0, Lcom/narvii/video/SharedVideoView;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start(), isInPlaybackState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->isInPlaybackState()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoplayer"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/SharedVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    .line 973
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 974
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setLooping(Z)V

    .line 975
    iget v0, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    if-eq v0, v1, :cond_1

    .line 976
    iput v1, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    .line 977
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mStateChangedListener:Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_1

    .line 978
    iget v3, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    invoke-interface {v0, p0, v3}, Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/narvii/video/SharedVideoView;I)V

    .line 981
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/video/SharedVideoView;->mMute:Z

    if-eqz v0, :cond_2

    .line 982
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 984
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v3, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    .line 985
    invoke-static {v2}, Lcom/narvii/video/SharedMediaPlayer;->setAudioFocused(Z)V

    .line 988
    :cond_3
    :goto_0
    iput v1, p0, Lcom/narvii/video/SharedVideoView;->mTargetState:I

    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 396
    invoke-direct {p0, v0}, Lcom/narvii/video/SharedVideoView;->detachMediaPlayer(Z)V

    const/4 v1, 0x0

    .line 397
    iput-object v1, p0, Lcom/narvii/video/SharedVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 398
    iput v0, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    .line 399
    iput v0, p0, Lcom/narvii/video/SharedVideoView;->mTargetState:I

    .line 400
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView;->mStateChangedListener:Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_0

    .line 401
    iget v1, p0, Lcom/narvii/video/SharedVideoView;->mCurrentState:I

    invoke-interface {v0, p0, v1}, Lcom/narvii/video/SharedVideoView$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/narvii/video/SharedVideoView;I)V

    :cond_0
    return-void
.end method
