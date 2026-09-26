.class public Lnet/protyposis/android/mediaplayer/MediaPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;,
        Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;,
        Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;,
        Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;,
        Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;,
        Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;,
        Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;,
        Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;,
        Lnet/protyposis/android/mediaplayer/MediaPlayer$State;,
        Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;,
        Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;,
        Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;,
        Lnet/protyposis/android/mediaplayer/MediaPlayer$AudioFrameAvailableListener;,
        Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;
    }
.end annotation


# static fields
.field private static final BUFFER_LOW_WATER_MARK_US:J = 0x1e8480L

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field public static final TRACK_INDEX_AUTO:I = -0x2

.field public static final TRACK_INDEX_NONE:I = -0x1


# instance fields
.field audioFrameAvailableListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$AudioFrameAvailableListener;

.field private keepScreenOnView:Landroid/view/View;

.field private mAudioExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

.field private mAudioFormat:Landroid/media/MediaFormat;

.field private mAudioMinPTS:J

.field private mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

.field private mAudioSessionId:I

.field private mAudioStreamType:I

.field private mAudioTrackIndex:I

.field private mBufferPercentage:I

.field private mBuffering:Z

.field private mCurrentPosition:J

.field private volatile mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

.field private mDecoders:Lnet/protyposis/android/mediaplayer/Decoders;

.field private mEventHandler:Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

.field private mLooping:Z

.field private mOnBufferingUpdateListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

.field private mOnSeekListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;

.field private mOnVideoSizeChangedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

.field private mPlaybackThread:Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

.field private mReleaseSyncLock:Ljava/lang/Object;

.field private mScreenOnWhilePlaying:Z

.field private mSeekMode:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

.field private mSeekTargetTime:J

.field private mSeeking:Z

.field private mStayAwake:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTimeBase:Lnet/protyposis/android/mediaplayer/TimeBase;

.field private mVideoExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

.field private mVideoFormat:Landroid/media/MediaFormat;

.field private mVideoMinPTS:J

.field private mVideoRenderTimingMode:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

.field private mVideoTrackIndex:I

.field private mVolumeLeft:F

.field private mVolumeRight:F

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_PREVIOUS_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 6
    .line 7
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSeekMode:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 8
    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    .line 11
    iput v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVolumeLeft:F

    .line 12
    .line 13
    iput v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVolumeRight:F

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 17
    .line 18
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mPlaybackThread:Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 19
    .line 20
    new-instance v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p0, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;-><init>(Lnet/protyposis/android/mediaplayer/MediaPlayer;Lnet/protyposis/android/mediaplayer/MediaPlayer$1;)V

    .line 24
    .line 25
    iput-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mEventHandler:Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 26
    .line 27
    new-instance v0, Lnet/protyposis/android/mediaplayer/TimeBase;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Lnet/protyposis/android/mediaplayer/TimeBase;-><init>()V

    .line 31
    .line 32
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mTimeBase:Lnet/protyposis/android/mediaplayer/TimeBase;

    .line 33
    .line 34
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->AUTO:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 35
    .line 36
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoRenderTimingMode:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 37
    .line 38
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->IDLE:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 39
    .line 40
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 41
    const/4 v0, 0x0

    .line 42
    .line 43
    iput v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioSessionId:I

    .line 44
    const/4 v0, 0x3

    .line 45
    .line 46
    iput v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioStreamType:I

    .line 47
    return-void
.end method

.method static synthetic access$100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mPlaybackThread:Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lnet/protyposis/android/mediaplayer/MediaPlayer;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentPosition:J

    .line 3
    return-wide v0
.end method

.method static synthetic access$1002(Lnet/protyposis/android/mediaplayer/MediaPlayer;J)J
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentPosition:J

    .line 3
    return-wide p1
.end method

.method static synthetic access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mTimeBase:Lnet/protyposis/android/mediaplayer/TimeBase;

    .line 3
    return-object p0
.end method

.method static synthetic access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 3
    return-object p0
.end method

.method static synthetic access$1300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mLooping:Z

    .line 3
    return p0
.end method

.method static synthetic access$1400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSeekMode:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 3
    return-object p0
.end method

.method static synthetic access$1502(Lnet/protyposis/android/mediaplayer/MediaPlayer;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSeeking:Z

    .line 3
    return p1
.end method

.method static synthetic access$1600(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->releaseMediaExtractors()V

    .line 4
    return-void
.end method

.method static synthetic access$1700(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mReleaseSyncLock:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method static synthetic access$1702(Lnet/protyposis/android/mediaplayer/MediaPlayer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mReleaseSyncLock:Ljava/lang/Object;

    .line 3
    return-object p1
.end method

.method static synthetic access$1800(Lnet/protyposis/android/mediaplayer/MediaPlayer;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mBufferPercentage:I

    .line 3
    return p0
.end method

.method static synthetic access$1802(Lnet/protyposis/android/mediaplayer/MediaPlayer;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mBufferPercentage:I

    .line 3
    return p1
.end method

.method static synthetic access$1900(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mBuffering:Z

    .line 3
    return p0
.end method

.method static synthetic access$2000(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnSeekCompleteListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$202(Lnet/protyposis/android/mediaplayer/MediaPlayer;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mBuffering:Z

    .line 3
    return p1
.end method

.method static synthetic access$2100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$2200(Lnet/protyposis/android/mediaplayer/MediaPlayer;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->stayAwake(Z)V

    .line 4
    return-void
.end method

.method static synthetic access$2300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnVideoSizeChangedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$2400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$2500(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$2600(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnBufferingUpdateListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mDecoders:Lnet/protyposis/android/mediaplayer/Decoders;

    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mEventHandler:Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 3
    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoRenderTimingMode:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->prepareInternal()V

    .line 4
    return-void
.end method

.method static synthetic access$902(Lnet/protyposis/android/mediaplayer/MediaPlayer;Lnet/protyposis/android/mediaplayer/MediaPlayer$State;)Lnet/protyposis/android/mediaplayer/MediaPlayer$State;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 3
    return-object p1
.end method

.method private getTrackIndex(Lnet/protyposis/android/mediaplayer/MediaExtractor;Ljava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getTrackCount()I

    .line 9
    move-result v2

    .line 10
    .line 11
    if-ge v1, v2, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    sget-object v3, Lnet/protyposis/android/mediaplayer/MediaPlayer;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    .line 24
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    const-string v3, "mime"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    move-result v2

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    return v1

    .line 38
    .line 39
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return v0
.end method

.method private prepareInternal()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v7, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v7, p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;-><init>(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 6
    .line 7
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 8
    .line 9
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->RELEASING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    new-instance v0, Lnet/protyposis/android/mediaplayer/Decoders;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Lnet/protyposis/android/mediaplayer/Decoders;-><init>()V

    .line 18
    .line 19
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mDecoders:Lnet/protyposis/android/mediaplayer/Decoders;

    .line 20
    .line 21
    iget v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoTrackIndex:I

    .line 22
    const/4 v8, -0x1

    .line 23
    .line 24
    if-eq v3, v8, :cond_1

    .line 25
    .line 26
    :try_start_0
    new-instance v9, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 27
    .line 28
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    iget-object v5, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSurface:Landroid/view/Surface;

    .line 32
    .line 33
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoRenderTimingMode:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->isRenderModeApi21()Z

    .line 37
    move-result v6

    .line 38
    move-object v0, v9

    .line 39
    move-object v4, v7

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v0 .. v6}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;-><init>(Lnet/protyposis/android/mediaplayer/MediaExtractor;ZILnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;Landroid/view/Surface;Z)V

    .line 43
    .line 44
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mDecoders:Lnet/protyposis/android/mediaplayer/Decoders;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v9}, Lnet/protyposis/android/mediaplayer/Decoders;->addDecoder(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .line 51
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string v3, "cannot create video decoder: "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    :cond_1
    :goto_0
    iget v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioTrackIndex:I

    .line 78
    const/4 v6, 0x0

    .line 79
    const/4 v9, 0x1

    .line 80
    .line 81
    if-eq v0, v8, :cond_5

    .line 82
    .line 83
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$2;

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$2;-><init>(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 87
    .line 88
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 89
    .line 90
    iget v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioStreamType:I

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->setAudioStreamType(I)V

    .line 94
    .line 95
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 96
    .line 97
    iget v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioSessionId:I

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->setAudioSessionId(I)V

    .line 101
    .line 102
    iget v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVolumeLeft:F

    .line 103
    .line 104
    iget v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVolumeRight:F

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v0, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setVolume(FF)V

    .line 108
    .line 109
    :try_start_1
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 110
    .line 111
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 112
    .line 113
    if-eq v0, v1, :cond_3

    .line 114
    .line 115
    if-nez v0, :cond_2

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    move v2, v6

    .line 118
    goto :goto_2

    .line 119
    :cond_3
    :goto_1
    move v2, v9

    .line 120
    .line 121
    :goto_2
    new-instance v8, Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;

    .line 122
    .line 123
    if-eqz v0, :cond_4

    .line 124
    move-object v1, v0

    .line 125
    .line 126
    :cond_4
    iget v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioTrackIndex:I

    .line 127
    .line 128
    iget-object v5, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 129
    move-object v0, v8

    .line 130
    move-object v4, v7

    .line 131
    .line 132
    .line 133
    invoke-direct/range {v0 .. v5}, Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;-><init>(Lnet/protyposis/android/mediaplayer/MediaExtractor;ZILnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;Lnet/protyposis/android/mediaplayer/AudioPlayback;)V

    .line 134
    .line 135
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mDecoders:Lnet/protyposis/android/mediaplayer/Decoders;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v8}, Lnet/protyposis/android/mediaplayer/Decoders;->addDecoder(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    goto :goto_3

    .line 140
    :catch_1
    move-exception v0

    .line 141
    .line 142
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer;->TAG:Ljava/lang/String;

    .line 143
    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    const-string v3, "cannot create audio decoder: "

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    .line 166
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    .line 168
    .line 169
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 170
    .line 171
    :cond_5
    :goto_3
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mDecoders:Lnet/protyposis/android/mediaplayer/Decoders;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getDecoders()Ljava/util/List;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    .line 178
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 179
    move-result v0

    .line 180
    .line 181
    if-nez v0, :cond_c

    .line 182
    .line 183
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 184
    .line 185
    if-eqz v0, :cond_6

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->getAudioSessionId()I

    .line 189
    move-result v0

    .line 190
    .line 191
    iput v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioSessionId:I

    .line 192
    .line 193
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->getAudioStreamType()I

    .line 197
    move-result v0

    .line 198
    .line 199
    iput v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioStreamType:I

    .line 200
    .line 201
    :cond_6
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mDecoders:Lnet/protyposis/android/mediaplayer/Decoders;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 205
    move-result-object v0

    .line 206
    .line 207
    if-eqz v0, :cond_8

    .line 208
    .line 209
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mDecoders:Lnet/protyposis/android/mediaplayer/Decoders;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 213
    move-result-object v0

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->getVideoWidth()I

    .line 217
    move-result v0

    .line 218
    .line 219
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mDecoders:Lnet/protyposis/android/mediaplayer/Decoders;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 223
    move-result-object v1

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->getVideoHeight()I

    .line 227
    move-result v1

    .line 228
    .line 229
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mDecoders:Lnet/protyposis/android/mediaplayer/Decoders;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 233
    move-result-object v2

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->getVideoRotation()I

    .line 237
    move-result v2

    .line 238
    .line 239
    if-lez v2, :cond_7

    .line 240
    .line 241
    const/16 v3, 0xb4

    .line 242
    .line 243
    if-eq v2, v3, :cond_7

    .line 244
    move v10, v1

    .line 245
    move v1, v0

    .line 246
    move v0, v10

    .line 247
    .line 248
    :cond_7
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mEventHandler:Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 249
    const/4 v3, 0x5

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 253
    move-result-object v0

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 257
    .line 258
    :cond_8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 259
    .line 260
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->RELEASING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 261
    .line 262
    if-ne v0, v1, :cond_9

    .line 263
    return-void

    .line 264
    .line 265
    :cond_9
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mDecoders:Lnet/protyposis/android/mediaplayer/Decoders;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 269
    move-result-object v0

    .line 270
    .line 271
    if-eqz v0, :cond_a

    .line 272
    .line 273
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mDecoders:Lnet/protyposis/android/mediaplayer/Decoders;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v9}, Lnet/protyposis/android/mediaplayer/Decoders;->decodeFrame(Z)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 277
    move-result-object v0

    .line 278
    .line 279
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mDecoders:Lnet/protyposis/android/mediaplayer/Decoders;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 283
    move-result-object v1

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, v0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    .line 287
    goto :goto_4

    .line 288
    .line 289
    :cond_a
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mDecoders:Lnet/protyposis/android/mediaplayer/Decoders;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v6}, Lnet/protyposis/android/mediaplayer/Decoders;->decodeFrame(Z)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 293
    .line 294
    :goto_4
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 295
    .line 296
    if-eqz v0, :cond_b

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v9}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->pause(Z)V

    .line 300
    .line 301
    :cond_b
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mDecoders:Lnet/protyposis/android/mediaplayer/Decoders;

    .line 302
    .line 303
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_PREVIOUS_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 304
    .line 305
    const-wide/16 v2, 0x0

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v1, v2, v3}, Lnet/protyposis/android/mediaplayer/Decoders;->seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;J)V

    .line 309
    return-void

    .line 310
    .line 311
    :cond_c
    new-instance v0, Ljava/io/IOException;

    .line 312
    .line 313
    const-string v1, "cannot decode any stream"

    .line 314
    .line 315
    .line 316
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 317
    throw v0
.end method

.method private releaseMediaExtractors()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->release()V

    .line 9
    .line 10
    iput-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->release()V

    .line 18
    .line 19
    iput-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 20
    :cond_1
    return-void
.end method

.method private stayAwake(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 15
    .line 16
    .line 17
    const-wide/32 v1, 0x927c0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    if-nez p1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 37
    .line 38
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mStayAwake:Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->updateSurfaceScreenOn()V

    .line 42
    return-void
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    iget v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioSessionId:I

    return v0
.end method

.method public getAudioStreamType()I
    .locals 1

    iget v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioStreamType:I

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    iget v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mBufferPercentage:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v0

    .line 7
    .line 8
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->RELEASING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSeeking:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSeekTargetTime:J

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentPosition:J

    .line 24
    .line 25
    :goto_0
    const-wide/16 v2, 0x3e8

    .line 26
    div-long/2addr v0, v2

    .line 27
    long-to-int v0, v0

    .line 28
    return v0

    .line 29
    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 34
    throw v0
.end method

.method public getDuration()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v0

    .line 7
    .line 8
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->PREPARING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-gt v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result v0

    .line 21
    .line 22
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->RELEASING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 26
    move-result v1

    .line 27
    .line 28
    if-ge v0, v1, :cond_0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 35
    throw v0

    .line 36
    .line 37
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoFormat:Landroid/media/MediaFormat;

    .line 38
    .line 39
    const-wide/16 v1, 0x3e8

    .line 40
    .line 41
    const-string v3, "durationUs"

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    .line 47
    move-result-wide v3

    .line 48
    div-long/2addr v3, v1

    .line 49
    :goto_1
    long-to-int v0, v3

    .line 50
    goto :goto_2

    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioFormat:Landroid/media/MediaFormat;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioFormat:Landroid/media/MediaFormat;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    .line 66
    move-result-wide v3

    .line 67
    div-long/2addr v3, v1

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const/4 v0, 0x0

    .line 70
    :goto_2
    return v0
.end method

.method public getPlaybackSpeed()F
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mTimeBase:Lnet/protyposis/android/mediaplayer/TimeBase;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/TimeBase;->getSpeed()D

    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    return v0
.end method

.method public getSeekMode()Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;
    .locals 1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSeekMode:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v0

    .line 7
    .line 8
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->RELEASING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-ge v0, v1, :cond_6

    .line 15
    .line 16
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoFormat:Landroid/media/MediaFormat;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    return v1

    .line 21
    .line 22
    :cond_0
    const-string v2, "rotation-degrees"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 26
    move-result v0

    .line 27
    const/4 v3, 0x1

    .line 28
    .line 29
    const/16 v4, 0x5a

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoFormat:Landroid/media/MediaFormat;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 37
    move-result v0

    .line 38
    .line 39
    rem-int/lit16 v0, v0, 0xb4

    .line 40
    .line 41
    if-ne v0, v4, :cond_2

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoFormat:Landroid/media/MediaFormat;

    .line 45
    .line 46
    const-string v2, "rotation"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoFormat:Landroid/media/MediaFormat;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 58
    move-result v0

    .line 59
    .line 60
    rem-int/lit16 v0, v0, 0xb4

    .line 61
    .line 62
    if-ne v0, v4, :cond_2

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v3, v1

    .line 65
    .line 66
    :goto_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoFormat:Landroid/media/MediaFormat;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    const-string/jumbo v2, "width"

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 76
    move-result v0

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_3
    const-string v2, "height"

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    move v0, v1

    .line 82
    .line 83
    :goto_2
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoFormat:Landroid/media/MediaFormat;

    .line 84
    .line 85
    if-eqz v2, :cond_5

    .line 86
    move v1, v0

    .line 87
    :cond_5
    return v1

    .line 88
    .line 89
    :cond_6
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->ERROR:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 90
    .line 91
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 92
    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 97
    throw v0
.end method

.method public getVideoWidth()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v0

    .line 7
    .line 8
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->RELEASING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-ge v0, v1, :cond_6

    .line 15
    .line 16
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoFormat:Landroid/media/MediaFormat;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    return v1

    .line 21
    .line 22
    :cond_0
    const-string v2, "rotation-degrees"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 26
    move-result v0

    .line 27
    const/4 v3, 0x1

    .line 28
    .line 29
    const/16 v4, 0x5a

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoFormat:Landroid/media/MediaFormat;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 37
    move-result v0

    .line 38
    .line 39
    rem-int/lit16 v0, v0, 0xb4

    .line 40
    .line 41
    if-ne v0, v4, :cond_2

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoFormat:Landroid/media/MediaFormat;

    .line 45
    .line 46
    const-string v2, "rotation"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoFormat:Landroid/media/MediaFormat;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 58
    move-result v0

    .line 59
    .line 60
    rem-int/lit16 v0, v0, 0xb4

    .line 61
    .line 62
    if-ne v0, v4, :cond_2

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v3, v1

    .line 65
    .line 66
    :goto_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoFormat:Landroid/media/MediaFormat;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    const-string v2, "height"

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 76
    move-result v0

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_3
    const-string/jumbo v2, "width"

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    move v0, v1

    .line 82
    .line 83
    :goto_2
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoFormat:Landroid/media/MediaFormat;

    .line 84
    .line 85
    if-eqz v2, :cond_5

    .line 86
    move v1, v0

    .line 87
    :cond_5
    return v1

    .line 88
    .line 89
    :cond_6
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->ERROR:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 90
    .line 91
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 92
    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 97
    throw v0
.end method

.method public isLooping()Z
    .locals 1

    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mLooping:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mPlaybackThread:Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->isPaused()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

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

.method public isPlaying()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v0

    .line 7
    .line 8
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->RELEASING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mPlaybackThread:Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->isPaused()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0

    .line 29
    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 34
    throw v0
.end method

.method protected onAudioFrameAvailable([BIIII)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->audioFrameAvailableListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$AudioFrameAvailableListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    .line 11
    .line 12
    invoke-interface/range {v0 .. v5}, Lnet/protyposis/android/mediaplayer/MediaPlayer$AudioFrameAvailableListener;->onAudioFrameAvailable([BIIII)V

    .line 13
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 3
    .line 4
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->PREPARED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mPlaybackThread:Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->pause()V

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->stayAwake(Z)V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 22
    throw v0
.end method

.method public prepare()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 3
    .line 4
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->INITIALIZED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 9
    .line 10
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->STOPPED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->PREPARING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 22
    .line 23
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->prepareInternal()V

    .line 27
    .line 28
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;-><init>(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 32
    .line 33
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mPlaybackThread:Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->start()V

    .line 37
    .line 38
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->PREPARED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 39
    .line 40
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 41
    return-void
.end method

.method public prepareAsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 3
    .line 4
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->INITIALIZED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 9
    .line 10
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->STOPPED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 19
    throw v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->PREPARING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 22
    .line 23
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 24
    .line 25
    new-instance v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;-><init>(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 29
    .line 30
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mPlaybackThread:Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->start()V

    .line 34
    .line 35
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mPlaybackThread:Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->prepare()V

    .line 39
    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 3
    .line 4
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->RELEASING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 9
    .line 10
    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->RELEASED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iput-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->stop()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->releaseMediaExtractors()V

    .line 22
    .line 23
    iput-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnBufferingUpdateListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

    .line 27
    .line 28
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    .line 29
    .line 30
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 31
    .line 32
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    .line 33
    .line 34
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    .line 35
    .line 36
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnSeekCompleteListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

    .line 37
    .line 38
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnSeekListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;

    .line 39
    .line 40
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnVideoSizeChangedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->stop()V

    .line 4
    .line 5
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->IDLE:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 6
    .line 7
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 8
    return-void
.end method

.method public seekTo(I)V
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 6
    invoke-virtual {p0, v0, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->seekTo(J)V

    return-void
.end method

.method public seekTo(J)V
    .locals 4

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->PREPARED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->RELEASING:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->TAG:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seekTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " with video sample offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoMinPTS:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnSeekListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0, p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;->onSeek(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSeeking:Z

    iget-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoMinPTS:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSeekTargetTime:J

    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mPlaybackThread:Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 5
    invoke-virtual {p1, v0, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->seekTo(J)V

    return-void
.end method

.method public setAudioFrameAvailableListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$AudioFrameAvailableListener;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->audioFrameAvailableListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$AudioFrameAvailableListener;

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 3
    .line 4
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->IDLE:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioSessionId:I

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 15
    throw p1
.end method

.method public setAudioStreamType(I)V
    .locals 0

    iput p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioStreamType:I

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, p2, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    new-instance v0, Lnet/protyposis/android/mediaplayer/UriSource;

    invoke-direct {v0, p1, p2, p3}, Lnet/protyposis/android/mediaplayer/UriSource;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setDataSource(Lnet/protyposis/android/mediaplayer/MediaSource;)V

    return-void
.end method

.method public setDataSource(Lnet/protyposis/android/mediaplayer/MediaSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, -0x2

    .line 19
    invoke-virtual {p0, p1, v0, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setDataSource(Lnet/protyposis/android/mediaplayer/MediaSource;II)V

    return-void
.end method

.method public setDataSource(Lnet/protyposis/android/mediaplayer/MediaSource;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 1
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->IDLE:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    if-ne v0, v1, :cond_b

    .line 2
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->releaseMediaExtractors()V

    .line 3
    invoke-interface {p1}, Lnet/protyposis/android/mediaplayer/MediaSource;->getVideoExtractor()Lnet/protyposis/android/mediaplayer/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 4
    invoke-interface {p1}, Lnet/protyposis/android/mediaplayer/MediaSource;->getAudioExtractor()Lnet/protyposis/android/mediaplayer/MediaExtractor;

    move-result-object p1

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    :cond_0
    const/4 p1, -0x2

    const/4 v1, -0x1

    if-eq p2, p1, :cond_2

    if-eq p2, v1, :cond_1

    iput p2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoTrackIndex:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoTrackIndex:I

    goto :goto_0

    :cond_2
    const-string/jumbo p2, "video/"

    .line 5
    invoke-direct {p0, v0, p2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getTrackIndex(Lnet/protyposis/android/mediaplayer/MediaExtractor;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoTrackIndex:I

    :goto_0
    if-eq p3, p1, :cond_4

    if-eq p3, v1, :cond_3

    iput p3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioTrackIndex:I

    goto :goto_1

    :cond_3
    iput v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioTrackIndex:I

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    const-string p2, "audio/"

    .line 6
    invoke-direct {p0, p1, p2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getTrackIndex(Lnet/protyposis/android/mediaplayer/MediaExtractor;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioTrackIndex:I

    :goto_1
    iget p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoTrackIndex:I

    const-string p2, " "

    if-eq p1, v1, :cond_5

    iget-object p3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 7
    invoke-virtual {p3, p1}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->selectTrack(I)V

    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    iget p3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoTrackIndex:I

    .line 8
    invoke-virtual {p1, p3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoFormat:Landroid/media/MediaFormat;

    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 9
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoMinPTS:J

    sget-object p1, Lnet/protyposis/android/mediaplayer/MediaPlayer;->TAG:Ljava/lang/String;

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "selected video track #"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoTrackIndex:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioTrackIndex:I

    if-eq p1, v1, :cond_6

    iget-object p3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 11
    invoke-virtual {p3, p1}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->selectTrack(I)V

    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    iget p3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioTrackIndex:I

    .line 12
    invoke-virtual {p1, p3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioFormat:Landroid/media/MediaFormat;

    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    .line 13
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioMinPTS:J

    sget-object p1, Lnet/protyposis/android/mediaplayer/MediaPlayer;->TAG:Ljava/lang/String;

    .line 14
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "selected audio track #"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioTrackIndex:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {p2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoTrackIndex:I

    if-ne p1, v1, :cond_7

    const/4 p2, 0x0

    iput-object p2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoExtractor:Lnet/protyposis/android/mediaplayer/MediaExtractor;

    :cond_7
    if-ne p1, v1, :cond_9

    iget p2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioTrackIndex:I

    if-eq p2, v1, :cond_8

    goto :goto_2

    .line 15
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid data source, no supported stream found"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_2
    if-eq p1, v1, :cond_a

    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mPlaybackThread:Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    if-nez p1, :cond_a

    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSurface:Landroid/view/Surface;

    if-nez p1, :cond_a

    sget-object p1, Lnet/protyposis/android/mediaplayer/MediaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "no video output surface specified"

    .line 16
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_a
    sget-object p1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->INITIALIZED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    return-void

    .line 18
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSurface:Landroid/view/Surface;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSurface:Landroid/view/Surface;

    .line 15
    .line 16
    :goto_0
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mDecoders:Lnet/protyposis/android/mediaplayer/Decoders;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mPlaybackThread:Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    sget-object p1, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->AUTO:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setVideoRenderTimingMode(Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->updateSurfaceScreenOn()V

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSurface:Landroid/view/Surface;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->setSurface(Landroid/view/Surface;)V

    .line 40
    :goto_1
    return-void
.end method

.method public setKeepScreenOnView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->keepScreenOnView:Landroid/view/View;

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mLooping:Z

    return-void
.end method

.method public setOnBufferingUpdateListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnBufferingUpdateListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnCompletionListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnErrorListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnInfoListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnPreparedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnSeekCompleteListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnSeekListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnSeekListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mOnVideoSizeChangedListener:Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mTimeBase:Lnet/protyposis/android/mediaplayer/TimeBase;

    .line 8
    float-to-double v1, p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lnet/protyposis/android/mediaplayer/TimeBase;->setSpeed(D)V

    .line 12
    .line 13
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mTimeBase:Lnet/protyposis/android/mediaplayer/TimeBase;

    .line 14
    .line 15
    iget-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentPosition:J

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lnet/protyposis/android/mediaplayer/TimeBase;->startAt(J)V

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string/jumbo v0, "speed cannot be negative"

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    :cond_0
    iput-boolean p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->updateSurfaceScreenOn()V

    .line 23
    :cond_1
    return-void
.end method

.method public setSeekMode(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSeekMode:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSurface:Landroid/view/Surface;

    .line 3
    .line 4
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    sget-object p1, Lnet/protyposis/android/mediaplayer/MediaPlayer;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string/jumbo v0, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    .line 18
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 19
    .line 20
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mPlaybackThread:Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    sget-object p1, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->SLEEP:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setVideoRenderTimingMode(Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->updateSurfaceScreenOn()V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mSurface:Landroid/view/Surface;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->setSurface(Landroid/view/Surface;)V

    .line 37
    :goto_0
    return-void
.end method

.method setVideoRenderTimingMode(Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mPlaybackThread:Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string/jumbo v2, "setVideoRenderTimingMode "

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVideoRenderTimingMode:Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 29
    return-void

    .line 30
    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "called after prepare/prepareAsync"

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p1
.end method

.method public setVolume(F)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    iput p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVolumeLeft:F

    iput p2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mVolumeRight:F

    :try_start_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, p1, p2}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->setStereoVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    const/4 v2, 0x0

    .line 21
    .line 22
    iput-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, v1

    .line 25
    .line 26
    :goto_1
    const-string v2, "power"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Landroid/os/PowerManager;

    .line 33
    .line 34
    const/high16 v2, 0x20000000

    .line 35
    or-int/2addr p2, v2

    .line 36
    .line 37
    const-class v2, Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 55
    .line 56
    .line 57
    const-wide/32 v0, 0x927c0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 61
    :cond_2
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 3
    .line 4
    sget-object v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->PREPARED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mPlaybackThread:Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->play()V

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->stayAwake(Z)V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 22
    throw v0
.end method

.method public stop()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mPlaybackThread:Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    new-instance v0, Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mReleaseSyncLock:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    :try_start_0
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mPlaybackThread:Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->access$500(Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    iput-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mPlaybackThread:Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mReleaseSyncLock:Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    iput-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mReleaseSyncLock:Ljava/lang/Object;

    .line 35
    goto :goto_2

    .line 36
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    throw v1

    .line 38
    :cond_1
    :goto_2
    const/4 v0, 0x0

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->stayAwake(Z)V

    .line 42
    .line 43
    sget-object v0, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->STOPPED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 44
    .line 45
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mCurrentState:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 46
    return-void
.end method

.method public updateSurfaceScreenOn()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->keepScreenOnView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-boolean v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer;->mStayAwake:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 19
    :cond_1
    return-void
.end method
