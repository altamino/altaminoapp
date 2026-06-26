.class Lnet/protyposis/android/mediaplayer/AudioPlayback;
.super Ljava/lang/Object;
.source "AudioPlayback.java"


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
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 54
    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mVolumeLeft:F

    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mVolumeRight:F

    const/16 v0, 0x2000

    .line 71
    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mFrameChunkSize:I

    .line 72
    new-instance v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;

    invoke-direct {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;-><init>()V

    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mBufferQueue:Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioSessionId:I

    const/4 v0, 0x3

    .line 74
    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioStreamType:I

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lnet/protyposis/android/mediaplayer/AudioPlayback;)Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;
    .locals 0

    .line 36
    iget-object p0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mBufferQueue:Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;

    return-object p0
.end method

.method static synthetic access$300(Lnet/protyposis/android/mediaplayer/AudioPlayback;Ljava/nio/ByteBuffer;J)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->writeToPlaybackBuffer(Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method private checkIfReinitializationRequired(Landroid/media/MediaFormat;)Z
    .locals 2

    .line 155
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioFormat:Landroid/media/MediaFormat;

    const-string v1, "channel-count"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioFormat:Landroid/media/MediaFormat;

    const-string v1, "sample-rate"

    .line 156
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioFormat:Landroid/media/MediaFormat;

    const-string v1, "mime"

    .line 157
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private getPlaybackheadPositionUs()J
    .locals 4

    .line 320
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-double v0, v0

    .line 322
    iget v2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mSampleRate:I

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method private stopAndRelease(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 282
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioThread:Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;

    if-eqz p1, :cond_0

    .line 283
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 286
    :cond_0
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz p1, :cond_2

    .line 287
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 288
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    .line 290
    :cond_1
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V

    :cond_2
    const/4 p1, 0x0

    .line 292
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    return-void
.end method

.method private writeToPlaybackBuffer(Ljava/nio/ByteBuffer;J)V
    .locals 8

    .line 371
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 372
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mTransferBuffer:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, v6, :cond_1

    .line 373
    :cond_0
    new-array v0, v6, [B

    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mTransferBuffer:[B

    .line 375
    :cond_1
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mTransferBuffer:[B

    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 378
    iput-wide p2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mLastPresentationTimeUs:J

    .line 379
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mTransferBuffer:[B

    const/4 v2, 0x0

    iget v4, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mSampleRate:I

    iget v5, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mChannelCount:I

    move-object v0, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->onFrameAvailable([BIIII)V

    .line 381
    :try_start_0
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz p1, :cond_2

    .line 382
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object p2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mTransferBuffer:[B

    invoke-virtual {p1, p2, v7, v6}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 3

    .line 215
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    .line 220
    :cond_0
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V

    .line 221
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mBufferQueue:Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;

    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->flush()V

    .line 224
    sget-wide v1, Lnet/protyposis/android/mediaplayer/AudioPlayback;->PTS_NOT_SET:J

    iput-wide v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_1
    return-void

    .line 230
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 171
    iget v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioSessionId:I

    return v0
.end method

.method public getAudioStreamType()I
    .locals 1

    .line 179
    iget v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioStreamType:I

    return v0
.end method

.method public getCurrentPresentationTimeUs()J
    .locals 8

    .line 335
    iget-wide v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    sget-wide v2, Lnet/protyposis/android/mediaplayer/AudioPlayback;->PTS_NOT_SET:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 339
    :cond_0
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->getPlaybackheadPositionUs()J

    move-result-wide v0

    .line 342
    iget-wide v2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mLastPlaybackHeadPositionUs:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 344
    sget-object v2, Lnet/protyposis/android/mediaplayer/AudioPlayback;->TAG:Ljava/lang/String;

    const-string v3, "playback head has wrapped"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-wide v2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iget v6, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mSampleRate:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double v4, v4, v6

    double-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    .line 348
    :cond_1
    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mLastPlaybackHeadPositionUs:J

    .line 351
    iget-wide v2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public getPlaybackBufferTimeUs()J
    .locals 4

    .line 315
    iget v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPlaybackBufferSize:I

    iget v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mFrameSize:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mSampleRate:I

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public getQueueBufferTimeUs()J
    .locals 4

    .line 304
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mBufferQueue:Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->access$000(Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;)I

    move-result v0

    iget v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mFrameSize:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mSampleRate:I

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public init(Landroid/media/MediaFormat;)V
    .locals 11

    .line 83
    sget-object v0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 88
    invoke-direct {p0, p1}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->checkIfReinitializationRequired(Landroid/media/MediaFormat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioFormat:Landroid/media/MediaFormat;

    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->isPlaying()Z

    move-result v0

    .line 95
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->pause()V

    .line 96
    invoke-direct {p0, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->stopAndRelease(Z)V

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;

    invoke-direct {v0, p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;-><init>(Lnet/protyposis/android/mediaplayer/AudioPlayback;)V

    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioThread:Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;

    .line 100
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioThread:Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;

    invoke-virtual {v0, v2}, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->setPaused(Z)V

    .line 101
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioThread:Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    .line 104
    :goto_0
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioFormat:Landroid/media/MediaFormat;

    const-string v1, "channel-count"

    .line 106
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mChannelCount:I

    .line 108
    iget v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mChannelCount:I

    const/4 v3, 0x2

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mFrameSize:I

    const-string v1, "sample-rate"

    .line 109
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mSampleRate:I

    .line 112
    iget p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mChannelCount:I

    const/4 v1, 0x4

    if-eq p1, v2, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/16 p1, 0x3fc

    const/16 v6, 0x3fc

    goto :goto_1

    :cond_3
    const/16 p1, 0xfc

    const/16 v6, 0xfc

    goto :goto_1

    :cond_4
    const/16 p1, 0xcc

    const/16 v6, 0xcc

    goto :goto_1

    :cond_5
    const/16 p1, 0xc

    const/16 v6, 0xc

    goto :goto_1

    :cond_6
    const/4 v6, 0x4

    .line 129
    :goto_1
    iget p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mFrameChunkSize:I

    iget v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mChannelCount:I

    mul-int p1, p1, v1

    iput p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPlaybackBufferSize:I

    .line 131
    new-instance p1, Landroid/media/AudioTrack;

    iget v4, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioStreamType:I

    iget v5, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mSampleRate:I

    const/4 v7, 0x2

    iget v8, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPlaybackBufferSize:I

    const/4 v9, 0x1

    iget v10, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioSessionId:I

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    .line 139
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result p1

    if-ne p1, v2, :cond_8

    .line 144
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p1

    iput p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioSessionId:I

    .line 145
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getStreamType()I

    move-result p1

    iput p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioStreamType:I

    .line 146
    iget p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mVolumeLeft:F

    iget v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mVolumeRight:F

    invoke-virtual {p0, p1, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->setStereoVolume(FF)V

    .line 147
    sget-wide v1, Lnet/protyposis/android/mediaplayer/AudioPlayback;->PTS_NOT_SET:J

    iput-wide v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    if-eqz v0, :cond_7

    .line 150
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->play()V

    :cond_7
    return-void

    .line 140
    :cond_8
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->stopAndRelease()V

    .line 141
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "audio track init failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isInitialized()Z
    .locals 2

    .line 183
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPlaying()Z
    .locals 2

    .line 367
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

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

    .line 211
    invoke-virtual {p0, v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->pause(Z)V

    return-void
.end method

.method public pause(Z)V
    .locals 2

    .line 198
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioThread:Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->setPaused(Z)V

    .line 200
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->flush()V

    :cond_0
    return-void

    .line 206
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public play()V
    .locals 2

    .line 188
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 190
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioThread:Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->setPaused(Z)V

    return-void

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public setAudioSessionId(I)V
    .locals 1

    .line 164
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iput p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioSessionId:I

    return-void

    .line 165
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot set session id on an initialized audio track"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAudioStreamType(I)V
    .locals 0

    .line 175
    iput p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioStreamType:I

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 2

    .line 359
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mSampleRate:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setPlaybackRate(I)I

    return-void

    .line 362
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setStereoVolume(FF)V
    .locals 1

    .line 398
    iput p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mVolumeLeft:F

    .line 399
    iput p2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mVolumeRight:F

    .line 401
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :cond_0
    return-void
.end method

.method public stopAndRelease()V
    .locals 1

    const/4 v0, 0x1

    .line 296
    invoke-direct {p0, v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->stopAndRelease(Z)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;J)V
    .locals 5

    .line 235
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 238
    iget v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mFrameChunkSize:I

    if-ge v1, v0, :cond_0

    .line 239
    sget-object v1, Lnet/protyposis/android/mediaplayer/AudioPlayback;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming frame chunk size increased to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mFrameChunkSize:I

    .line 242
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {p0, v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->init(Landroid/media/MediaFormat;)V

    .line 246
    :cond_0
    iget-wide v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    sget-wide v2, Lnet/protyposis/android/mediaplayer/AudioPlayback;->PTS_NOT_SET:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 248
    iput-wide p2, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    const-wide/16 v0, 0x0

    .line 249
    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mLastPlaybackHeadPositionUs:J

    .line 267
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->getPlaybackheadPositionUs()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 269
    iget-wide v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mPresentationTimeOffsetUs:J

    .line 270
    sget-object v0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->TAG:Ljava/lang/String;

    const-string v1, "playback head not reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mBufferQueue:Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;

    invoke-virtual {v0, p1, p2, p3}, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->put(Ljava/nio/ByteBuffer;J)V

    .line 278
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback;->mAudioThread:Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;

    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->notifyOfNewBufferInQueue()V

    return-void
.end method
