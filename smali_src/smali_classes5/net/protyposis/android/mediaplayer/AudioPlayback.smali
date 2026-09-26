.class Lnet/protyposis/android/mediaplayer/AudioPlayback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;,
        Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;
    }
.end annotation


# static fields
.field public static PTS_NOT_SET:J = -0x8000000000000000L

.field private static final TAG:Ljava/lang/String; = "AudioPlayback"


# instance fields
.field private mAudioFormat:Landroid/media/MediaFormat;

.field private mAudioSessionId:I

.field private mAudioStreamType:I

.field private mAudioThread:Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mBufferQueue:Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;

.field public mChannelCount:I

.field private mFrameChunkSize:I

.field private mFrameSize:I

.field private mLastPlaybackHeadPositionUs:J

.field private mLastPresentationTimeUs:J

.field private mPlaybackBufferSize:I

.field private mPresentationTimeOffsetUs:J

.field private mSampleRate:I

.field private mTransferBuffer:[B

.field private mVolumeLeft:F

.field private mVolumeRight:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mVolumeLeft:F

    .line 8
    .line 9
    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mVolumeRight:F

    .line 10
    .line 11
    const/16 v0, 0x2000

    .line 12
    .line 13
    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mFrameChunkSize:I

    .line 14
    .line 15
    new-instance v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;-><init>()V

    .line 19
    .line 20
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mBufferQueue:Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioSessionId:I

    .line 24
    const/4 v0, 0x3

    .line 25
    .line 26
    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioStreamType:I

    .line 27
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lnet/protyposis/android/mediaplayer/AudioPlayback;)Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mBufferQueue:Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;

    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lnet/protyposis/android/mediaplayer/AudioPlayback;Ljava/nio/ByteBuffer;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->writeToPlaybackBuffer(Ljava/nio/ByteBuffer;J)V

    .line 4
    return-void
.end method

.method private checkIfReinitializationRequired(Landroid/media/MediaFormat;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioFormat:Landroid/media/MediaFormat;

    .line 3
    .line 4
    const-string v1, "channel-count"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioFormat:Landroid/media/MediaFormat;

    .line 17
    .line 18
    const-string v1, "sample-rate"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 26
    move-result v1

    .line 27
    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioFormat:Landroid/media/MediaFormat;

    .line 31
    .line 32
    const-string v1, "mime"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result p1

    .line 45
    .line 46
    if-nez p1, :cond_0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 51
    :goto_1
    return p1
.end method

.method private getPlaybackheadPositionUs()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v2, 0xffffffffL

    .line 13
    and-long/2addr v0, v2

    .line 14
    long-to-double v0, v0

    .line 15
    .line 16
    iget v2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mSampleRate:I

    .line 17
    int-to-double v2, v2

    .line 18
    div-double/2addr v0, v2

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 24
    mul-double/2addr v0, v2

    .line 25
    double-to-long v0, v0

    .line 26
    return-wide v0
.end method

.method private stopAndRelease(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioThread:Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    .line 3
    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    :cond_1
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    .line 4
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    return-void
.end method

.method private writeToPlaybackBuffer(Ljava/nio/ByteBuffer;J)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 4
    move-result v6

    .line 5
    .line 6
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mTransferBuffer:[B

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    array-length v0, v0

    .line 10
    .line 11
    if-ge v0, v6, :cond_1

    .line 12
    .line 13
    :cond_0
    new-array v0, v6, [B

    .line 14
    .line 15
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mTransferBuffer:[B

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mTransferBuffer:[B

    .line 18
    const/4 v7, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, v7, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    iput-wide p2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mLastPresentationTimeUs:J

    .line 24
    .line 25
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mTransferBuffer:[B

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    iget v4, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mSampleRate:I

    .line 29
    .line 30
    iget v5, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mChannelCount:I

    .line 31
    move-object v0, p0

    .line 32
    move v3, v6

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {v0 .. v5}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->onFrameAvailable([BIIII)V

    .line 36
    .line 37
    :try_start_0
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget-object p2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mTransferBuffer:[B

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2, v7, v6}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :catch_0
    :cond_2
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->isInitialized()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->isPlaying()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V

    .line 23
    .line 24
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mBufferQueue:Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->flush()V

    .line 28
    .line 29
    sget-wide v1, Lnet/protyposis/android/mediaplayer/AudioPlayback;->PTS_NOT_SET:J

    .line 30
    .line 31
    iput-wide v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 39
    :cond_1
    return-void

    .line 40
    .line 41
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 45
    throw v0
.end method

.method public getAudioSessionId()I
    .locals 1

    iget v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioSessionId:I

    return v0
.end method

.method public getAudioStreamType()I
    .locals 1

    iget v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioStreamType:I

    return v0
.end method

.method public getCurrentPresentationTimeUs()J
    .locals 8

    .line 1
    .line 2
    iget-wide v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    .line 3
    .line 4
    sget-wide v2, Lnet/protyposis/android/mediaplayer/AudioPlayback;->PTS_NOT_SET:J

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-wide v2

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->getPlaybackheadPositionUs()J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    iget-wide v2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mLastPlaybackHeadPositionUs:J

    .line 16
    .line 17
    cmp-long v2, v0, v2

    .line 18
    .line 19
    if-gez v2, :cond_1

    .line 20
    .line 21
    sget-object v2, Lnet/protyposis/android/mediaplayer/AudioPlayback;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string v3, "playback head has wrapped"

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    iget-wide v2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    .line 29
    .line 30
    iget v4, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mSampleRate:I

    .line 31
    int-to-double v4, v4

    .line 32
    .line 33
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 34
    div-double/2addr v6, v4

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 40
    mul-double/2addr v6, v4

    .line 41
    double-to-long v4, v6

    .line 42
    add-long/2addr v2, v4

    .line 43
    .line 44
    iput-wide v2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    .line 45
    .line 46
    :cond_1
    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mLastPlaybackHeadPositionUs:J

    .line 47
    .line 48
    iget-wide v2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    .line 49
    add-long/2addr v2, v0

    .line 50
    return-wide v2
.end method

.method public getLastPresentationTimeUs()J
    .locals 2

    iget-wide v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mLastPresentationTimeUs:J

    return-wide v0
.end method

.method public getPlaybackBufferTimeUs()J
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPlaybackBufferSize:I

    .line 3
    .line 4
    iget v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mFrameSize:I

    .line 5
    div-int/2addr v0, v1

    .line 6
    int-to-double v0, v0

    .line 7
    .line 8
    iget v2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mSampleRate:I

    .line 9
    int-to-double v2, v2

    .line 10
    div-double/2addr v0, v2

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 16
    mul-double/2addr v0, v2

    .line 17
    double-to-long v0, v0

    .line 18
    return-wide v0
.end method

.method public getQueueBufferTimeUs()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mBufferQueue:Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->access$000(Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mFrameSize:I

    .line 9
    div-int/2addr v0, v1

    .line 10
    int-to-double v0, v0

    .line 11
    .line 12
    iget v2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mSampleRate:I

    .line 13
    int-to-double v2, v2

    .line 14
    div-double/2addr v0, v2

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 20
    mul-double/2addr v0, v2

    .line 21
    double-to-long v0, v0

    .line 22
    return-wide v0
.end method

.method public init(Landroid/media/MediaFormat;)V
    .locals 11

    .line 1
    .line 2
    sget-object v0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "init"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->isInitialized()Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->checkIfReinitializationRequired(Landroid/media/MediaFormat;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioFormat:Landroid/media/MediaFormat;

    .line 24
    return-void

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->isPlaying()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->pause()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v2}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->stopAndRelease(Z)V

    .line 35
    move v2, v0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    new-instance v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;-><init>(Lnet/protyposis/android/mediaplayer/AudioPlayback;)V

    .line 42
    .line 43
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioThread:Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->setPaused(Z)V

    .line 47
    .line 48
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioThread:Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    .line 53
    :goto_0
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioFormat:Landroid/media/MediaFormat;

    .line 54
    .line 55
    const-string v0, "channel-count"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 59
    move-result v0

    .line 60
    .line 61
    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mChannelCount:I

    .line 62
    const/4 v3, 0x2

    .line 63
    mul-int/2addr v0, v3

    .line 64
    .line 65
    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mFrameSize:I

    .line 66
    .line 67
    const-string v0, "sample-rate"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 71
    move-result p1

    .line 72
    .line 73
    iput p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mSampleRate:I

    .line 74
    .line 75
    iget p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mChannelCount:I

    .line 76
    const/4 v0, 0x4

    .line 77
    .line 78
    if-eq p1, v1, :cond_3

    .line 79
    .line 80
    if-eq p1, v3, :cond_6

    .line 81
    .line 82
    if-eq p1, v0, :cond_5

    .line 83
    const/4 v0, 0x6

    .line 84
    .line 85
    if-eq p1, v0, :cond_4

    .line 86
    .line 87
    const/16 v0, 0x8

    .line 88
    .line 89
    if-eq p1, v0, :cond_2

    .line 90
    move v6, v1

    .line 91
    goto :goto_2

    .line 92
    .line 93
    :cond_2
    const/16 v0, 0x3fc

    .line 94
    :cond_3
    :goto_1
    move v6, v0

    .line 95
    goto :goto_2

    .line 96
    .line 97
    :cond_4
    const/16 v0, 0xfc

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_5
    const/16 v0, 0xcc

    .line 101
    goto :goto_1

    .line 102
    .line 103
    :cond_6
    const/16 v0, 0xc

    .line 104
    goto :goto_1

    .line 105
    .line 106
    :goto_2
    iget v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mFrameChunkSize:I

    .line 107
    mul-int/2addr v0, p1

    .line 108
    .line 109
    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPlaybackBufferSize:I

    .line 110
    .line 111
    new-instance p1, Landroid/media/AudioTrack;

    .line 112
    .line 113
    iget v4, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioStreamType:I

    .line 114
    .line 115
    iget v5, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mSampleRate:I

    .line 116
    const/4 v7, 0x2

    .line 117
    .line 118
    iget v8, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPlaybackBufferSize:I

    .line 119
    const/4 v9, 0x1

    .line 120
    .line 121
    iget v10, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioSessionId:I

    .line 122
    move-object v3, p1

    .line 123
    .line 124
    .line 125
    invoke-direct/range {v3 .. v10}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 126
    .line 127
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    .line 131
    move-result p1

    .line 132
    .line 133
    if-ne p1, v1, :cond_8

    .line 134
    .line 135
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 139
    move-result p1

    .line 140
    .line 141
    iput p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioSessionId:I

    .line 142
    .line 143
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getStreamType()I

    .line 147
    move-result p1

    .line 148
    .line 149
    iput p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioStreamType:I

    .line 150
    .line 151
    iget p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mVolumeLeft:F

    .line 152
    .line 153
    iget v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mVolumeRight:F

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, p1, v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->setStereoVolume(FF)V

    .line 157
    .line 158
    sget-wide v0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->PTS_NOT_SET:J

    .line 159
    .line 160
    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    .line 161
    .line 162
    if-eqz v2, :cond_7

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->play()V

    .line 166
    :cond_7
    return-void

    .line 167
    .line 168
    .line 169
    :cond_8
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->stopAndRelease()V

    .line 170
    .line 171
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 172
    .line 173
    const-string v0, "audio track init failed"

    .line 174
    .line 175
    .line 176
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 177
    throw p1
.end method

.method public isInitialized()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
.end method

.method public isPlaying()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method protected onFrameAvailable([BIIII)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->pause(Z)V

    return-void
.end method

.method public pause(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioThread:Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->setPaused(Z)V

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->flush()V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public play()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->isInitialized()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 12
    .line 13
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioThread:Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->setPaused(Z)V

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 24
    throw v0
.end method

.method public setAudioSessionId(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->isInitialized()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioSessionId:I

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v0, "cannot set session id on an initialized audio track"

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p1
.end method

.method public setAudioStreamType(I)V
    .locals 0

    iput p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioStreamType:I

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->isInitialized()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    .line 9
    .line 10
    iget v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mSampleRate:I

    .line 11
    int-to-float v1, v1

    .line 12
    mul-float/2addr v1, p1

    .line 13
    float-to-int p1, v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setPlaybackRate(I)I

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 23
    throw p1
.end method

.method public setStereoVolume(FF)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mVolumeLeft:F

    .line 3
    .line 4
    iput p2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mVolumeRight:F

    .line 5
    .line 6
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 12
    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p1}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->setStereoVolume(FF)V

    .line 4
    return-void
.end method

.method public stopAndRelease()V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->stopAndRelease(Z)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;J)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mFrameChunkSize:I

    .line 7
    .line 8
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    sget-object v1, Lnet/protyposis/android/mediaplayer/AudioPlayback;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v3, "incoming frame chunk size increased to "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mFrameChunkSize:I

    .line 33
    .line 34
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioFormat:Landroid/media/MediaFormat;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->init(Landroid/media/MediaFormat;)V

    .line 38
    .line 39
    :cond_0
    iget-wide v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    .line 40
    .line 41
    sget-wide v2, Lnet/protyposis/android/mediaplayer/AudioPlayback;->PTS_NOT_SET:J

    .line 42
    .line 43
    cmp-long v0, v0, v2

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    iput-wide p2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    .line 48
    .line 49
    const-wide/16 v0, 0x0

    .line 50
    .line 51
    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mLastPlaybackHeadPositionUs:J

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->getPlaybackheadPositionUs()J

    .line 55
    move-result-wide v2

    .line 56
    .line 57
    cmp-long v0, v2, v0

    .line 58
    .line 59
    if-lez v0, :cond_1

    .line 60
    .line 61
    iget-wide v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    .line 62
    sub-long/2addr v0, v2

    .line 63
    .line 64
    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    .line 65
    .line 66
    sget-object v0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->TAG:Ljava/lang/String;

    .line 67
    .line 68
    const-string v1, "playback head not reset"

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    :cond_1
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mBufferQueue:Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1, p2, p3}, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->put(Ljava/nio/ByteBuffer;J)V

    .line 77
    .line 78
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioThread:Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->notifyOfNewBufferInQueue()V

    .line 82
    return-void
.end method
