.class Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;
.super Landroid/os/HandlerThread;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/protyposis/android/mediaplayer/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaybackThread"
.end annotation


# static fields
.field static final DECODER_SET_SURFACE:I = 0x64

.field private static final PLAYBACK_LOOP:I = 0x4

.field private static final PLAYBACK_PAUSE:I = 0x3

.field private static final PLAYBACK_PAUSE_AUDIO:I = 0x7

.field private static final PLAYBACK_PLAY:I = 0x2

.field private static final PLAYBACK_PREPARE:I = 0x1

.field private static final PLAYBACK_RELEASE:I = 0x6

.field private static final PLAYBACK_SEEK:I = 0x5


# instance fields
.field private mAVLocked:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastBufferingUpdateTime:J

.field private volatile mPaused:Z

.field private mPlaybackSpeed:D

.field private mReleasing:Z

.field private mRenderModeApi21:Z

.field private mRenderingStarted:Z

.field private mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

.field final synthetic this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;


# direct methods
.method public constructor <init>(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 2

    .line 985
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x10

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x1

    .line 990
    iput-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPaused:Z

    const/4 v1, 0x0

    .line 991
    iput-boolean v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mReleasing:Z

    .line 992
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$700(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    move-result-object p1

    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->isRenderModeApi21()Z

    move-result p1

    iput-boolean p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mRenderModeApi21:Z

    .line 993
    iput-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mRenderingStarted:Z

    .line 994
    iput-boolean v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mAVLocked:Z

    const-wide/16 v0, 0x0

    .line 995
    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mLastBufferingUpdateTime:J

    return-void
.end method

.method static synthetic access$500(Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;)Z
    .locals 0

    .line 963
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->release()Z

    move-result p0

    return p0
.end method

.method private loopInternal()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1195
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getCachedDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 1203
    iget-object v6, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {v6}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getDuration()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    iget-object v6, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v6}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1000(Lnet/protyposis/android/mediaplayer/MediaPlayer;)J

    move-result-wide v6

    add-long/2addr v6, v0

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v4, v4

    invoke-direct {p0, v4}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->updateBufferPercentage(I)V

    .line 1209
    :cond_0
    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v4}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const-wide/32 v2, 0x1e8480

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->hasCacheReachedEndOfStream()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1212
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 1216
    :cond_1
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    move-result-object v0

    const-wide/16 v1, 0xa

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    if-nez v0, :cond_2

    .line 1219
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    invoke-virtual {v0, v3}, Lnet/protyposis/android/mediaplayer/Decoders;->decodeFrame(Z)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    move-result-object v0

    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 1220
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->isEOS()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1223
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 1228
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1232
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Z

    move-result v0

    const/16 v4, 0xc8

    if-eqz v0, :cond_3

    .line 1233
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0, v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$202(Lnet/protyposis/android/mediaplayer/MediaPlayer;Z)Z

    .line 1234
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v0

    iget-object v8, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v8}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v8

    const/16 v9, 0x2be

    invoke-virtual {v8, v4, v9, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1238
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    move-result-object v0

    iget-object v8, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v8}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v8

    invoke-virtual {v8}, Lnet/protyposis/android/mediaplayer/Decoders;->getCurrentDecodingPTS()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lnet/protyposis/android/mediaplayer/TimeBase;->startAt(J)V

    .line 1246
    :cond_3
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    move-result-object v0

    iget-object v8, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    iget-wide v8, v8, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    invoke-virtual {v0, v8, v9}, Lnet/protyposis/android/mediaplayer/TimeBase;->getOffsetFrom(J)J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    cmp-long v0, v8, v10

    if-lez v0, :cond_4

    .line 1247
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 1252
    :cond_4
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v8

    invoke-virtual {v8}, Lnet/protyposis/android/mediaplayer/Decoders;->getCurrentDecodingPTS()J

    move-result-wide v8

    invoke-static {v0, v8, v9}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1002(Lnet/protyposis/android/mediaplayer/MediaPlayer;J)J

    .line 1254
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    if-eqz v0, :cond_5

    .line 1255
    invoke-direct {p0, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->renderVideoFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    const/4 v0, 0x0

    .line 1256
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 1259
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mRenderingStarted:Z

    if-eqz v0, :cond_5

    .line 1260
    iput-boolean v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mRenderingStarted:Z

    .line 1261
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v0

    iget-object v8, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v8}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v4, v9, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1266
    :cond_5
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1269
    iget-wide v8, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPlaybackSpeed:D

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/TimeBase;->getSpeed()D

    move-result-wide v10

    cmpl-double v0, v8, v10

    if-eqz v0, :cond_6

    .line 1270
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/TimeBase;->getSpeed()D

    move-result-wide v8

    iput-wide v8, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPlaybackSpeed:D

    .line 1271
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v0

    iget-wide v8, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPlaybackSpeed:D

    double-to-float v4, v8

    invoke-virtual {v0, v4}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->setPlaybackSpeed(F)V

    .line 1275
    :cond_6
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->getCurrentPresentationTimeUs()J

    move-result-wide v8

    .line 1276
    sget-wide v10, Lnet/protyposis/android/mediaplayer/AudioPlayback;->PTS_NOT_SET:J

    cmp-long v0, v8, v10

    if-lez v0, :cond_7

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->suspectAudioEOS()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1277
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lnet/protyposis/android/mediaplayer/TimeBase;->startAt(J)V

    .line 1282
    :cond_7
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->isEOS()Z

    move-result v0

    const-wide/16 v8, 0x0

    if-eqz v0, :cond_a

    .line 1283
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1286
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1287
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1289
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->flush()V

    .line 1291
    :cond_8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    sget-object v3, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_PREVIOUS_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    invoke-virtual {v0, v3, v8, v9}, Lnet/protyposis/android/mediaplayer/Decoders;->seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;J)V

    .line 1292
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->renderFrames()V

    goto :goto_0

    :cond_9
    const/4 v0, 0x1

    .line 1296
    iput-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPaused:Z

    .line 1297
    invoke-direct {p0, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->pauseInternal(Z)V

    goto :goto_0

    .line 1301
    :cond_a
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    invoke-virtual {v0, v3}, Lnet/protyposis/android/mediaplayer/Decoders;->decodeFrame(Z)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    move-result-object v0

    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 1304
    :goto_0
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPaused:Z

    if-nez v0, :cond_c

    long-to-double v0, v1

    .line 1308
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    move-result-object v2

    invoke-virtual {v2}, Lnet/protyposis/android/mediaplayer/TimeBase;->getSpeed()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-long v0, v0

    .line 1310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v6

    sub-long/2addr v0, v2

    cmp-long v2, v0, v8

    if-lez v2, :cond_b

    .line 1316
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1319
    :cond_b
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_c
    :goto_1
    return-void
.end method

.method private pauseInternal()V
    .locals 1

    const/4 v0, 0x0

    .line 1184
    invoke-direct {p0, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->pauseInternal(Z)V

    return-void
.end method

.method private pauseInternal(Z)V
    .locals 5

    .line 1170
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1171
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1175
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 1176
    invoke-static {v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v1

    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->getQueueBufferTimeUs()J

    move-result-wide v1

    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v3

    invoke-virtual {v3}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->getPlaybackBufferTimeUs()J

    move-result-wide v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 1175
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1178
    :cond_0
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->pause(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private pauseInternalAudio()V
    .locals 1

    .line 1188
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->pause()V

    :cond_0
    return-void
.end method

.method private playInternal()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1143
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->isEOS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1002(Lnet/protyposis/android/mediaplayer/MediaPlayer;J)J

    .line 1145
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    sget-object v3, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_PREVIOUS_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    invoke-virtual {v0, v3, v1, v2}, Lnet/protyposis/android/mediaplayer/Decoders;->seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;J)V

    .line 1149
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    move-result-object v0

    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v1

    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/Decoders;->getCurrentDecodingPTS()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/protyposis/android/mediaplayer/TimeBase;->startAt(J)V

    .line 1151
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1152
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1153
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->play()V

    .line 1156
    :cond_1
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/TimeBase;->getSpeed()D

    move-result-wide v0

    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPlaybackSpeed:D

    .line 1158
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1159
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v0

    iget-wide v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPlaybackSpeed:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->setPlaybackSpeed(F)V

    .line 1162
    :cond_2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1163
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->loopInternal()V

    return-void
.end method

.method private prepareInternal()V
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x64

    const/4 v2, 0x1

    .line 1119
    :try_start_0
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$800(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 1120
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    sget-object v4, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->PREPARED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    invoke-static {v3, v4}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$902(Lnet/protyposis/android/mediaplayer/MediaPlayer;Lnet/protyposis/android/mediaplayer/MediaPlayer$State;)Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 1123
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1135
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    move-result-object v4

    const-string v5, "prepareAsync() failed: surface might be gone"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1136
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v3

    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v4}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1138
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->releaseInternal()V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 1130
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    move-result-object v4

    const-string v5, "prepareAsync() failed: something is in a wrong state"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1131
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v3

    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v4}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1133
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->releaseInternal()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 1125
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    move-result-object v3

    const-string v4, "prepareAsync() failed: cannot decode stream(s)"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1126
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v0

    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v3

    const/16 v4, -0x3ec

    invoke-virtual {v3, v1, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1128
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->releaseInternal()V

    :goto_0
    return-void
.end method

.method private release()Z
    .locals 3

    .line 1039
    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 1043
    iput-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPaused:Z

    .line 1044
    iput-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mReleasing:Z

    .line 1050
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    const/4 v2, 0x6

    .line 1051
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return v0
.end method

.method private releaseInternal()V
    .locals 3

    .line 1369
    invoke-virtual {p0}, Landroid/os/HandlerThread;->interrupt()V

    .line 1372
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 1374
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    if-eqz v0, :cond_0

    .line 1377
    :try_start_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    move-result-object v0

    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    invoke-virtual {v0, v2}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    :catch_0
    iput-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 1385
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1386
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->release()V

    .line 1388
    :cond_1
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->stopAndRelease()V

    .line 1390
    :cond_2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1600(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 1392
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PlaybackThread destroyed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1700(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1396
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1700(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1397
    :try_start_1
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1700(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1398
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v2, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1702(Lnet/protyposis/android/mediaplayer/MediaPlayer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method private renderVideoFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1404
    iget-boolean v0, p1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->endOfStream:Z

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->dismissFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    return-void

    .line 1413
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    move-result-object v0

    iget-wide v1, p1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Lnet/protyposis/android/mediaplayer/TimeBase;->getOffsetFrom(J)J

    move-result-wide v0

    const-wide/16 v2, -0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 1422
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LAGGING "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v2

    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v3

    const/16 v4, 0xc8

    const/16 v5, 0x2bc

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1428
    :cond_1
    iget-boolean v2, p1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->representationChanged:Z

    if-eqz v2, :cond_2

    .line 1429
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v2

    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v3

    const/4 v4, 0x5

    iget-object v5, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 1430
    invoke-static {v5}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v5

    invoke-virtual {v5}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    move-result-object v5

    invoke-virtual {v5}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->getVideoWidth()I

    move-result v5

    iget-object v6, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v6}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v6

    invoke-virtual {v6}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    move-result-object v6

    invoke-virtual {v6}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->getVideoHeight()I

    move-result v6

    .line 1429
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1434
    :cond_2
    iget-boolean v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mRenderModeApi21:Z

    if-nez v2, :cond_3

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    const-wide/16 v2, 0x3e8

    .line 1437
    div-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1440
    :cond_3
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v2

    invoke-virtual {v2}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->renderFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;J)V

    return-void
.end method

.method private seekInternal(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1325
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    move-result-object v0

    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->dismissFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    const/4 v0, 0x0

    .line 1328
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 1332
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->pause(Z)V

    .line 1335
    :cond_1
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lnet/protyposis/android/mediaplayer/Decoders;->seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;J)V

    .line 1339
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    move-result-object p1

    iget-object p2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {p2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object p2

    invoke-virtual {p2}, Lnet/protyposis/android/mediaplayer/Decoders;->getCurrentDecodingPTS()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/protyposis/android/mediaplayer/TimeBase;->startAt(J)V

    .line 1342
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1346
    iget-object p2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {p2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object p2

    invoke-virtual {p2}, Lnet/protyposis/android/mediaplayer/Decoders;->dismissFrames()V

    goto :goto_0

    .line 1348
    :cond_2
    iget-object p2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {p2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object p2

    invoke-virtual {p2}, Lnet/protyposis/android/mediaplayer/Decoders;->renderFrames()V

    :goto_0
    if-nez p1, :cond_3

    .line 1355
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object p2

    invoke-virtual {p2}, Lnet/protyposis/android/mediaplayer/Decoders;->getCurrentDecodingPTS()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1002(Lnet/protyposis/android/mediaplayer/MediaPlayer;J)J

    .line 1356
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1502(Lnet/protyposis/android/mediaplayer/MediaPlayer;Z)Z

    .line 1357
    iput-boolean p2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mAVLocked:Z

    .line 1359
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1361
    iget-boolean p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPaused:Z

    if-nez p1, :cond_3

    .line 1362
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->playInternal()V

    :cond_3
    return-void
.end method

.method private setVideoSurface(Landroid/view/Surface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1444
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1445
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    move-result-object v0

    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->dismissFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    const/4 v0, 0x0

    .line 1451
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 1454
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->updateSurface(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method private updateBufferPercentage(I)V
    .locals 7

    .line 1459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1463
    iget-wide v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mLastBufferingUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1800(Lnet/protyposis/android/mediaplayer/MediaPlayer;)I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 1464
    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mLastBufferingUpdateTime:J

    .line 1465
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v0

    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1471
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1802(Lnet/protyposis/android/mediaplayer/MediaPlayer;I)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x64

    const/4 v2, 0x1

    .line 1059
    :try_start_0
    iget-boolean v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mReleasing:Z

    if-eqz v3, :cond_0

    .line 1061
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->releaseInternal()V

    return v2

    .line 1065
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v1, :cond_1

    packed-switch v3, :pswitch_data_0

    .line 1091
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v3, "unknown/invalid message"

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1076
    :pswitch_0
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->pauseInternalAudio()V

    return v2

    .line 1085
    :pswitch_1
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->releaseInternal()V

    return v2

    .line 1082
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->seekInternal(J)V

    return v2

    .line 1079
    :pswitch_3
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->loopInternal()V

    return v2

    .line 1073
    :pswitch_4
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->pauseInternal()V

    return v2

    .line 1070
    :pswitch_5
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->playInternal()V

    return v2

    .line 1067
    :pswitch_6
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->prepareInternal()V

    return v2

    .line 1088
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    invoke-direct {p0, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->setVideoSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 1107
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    move-result-object v3

    const-string v4, "decoder exception"

    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1108
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object p1

    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1103
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v3, "decoder error, codec can not be created"

    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1104
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object p1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v0

    const/16 v3, -0x3ec

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1099
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    move-result-object v3

    const-string v4, "decoder error, too many instances?"

    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1100
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object p1

    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_3
    move-exception p1

    .line 1095
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    move-result-object v3

    const-string v4, "decoder interrupted"

    invoke-static {v3, v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1096
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object p1

    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1113
    :goto_0
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->releaseInternal()V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isPaused()Z
    .locals 1

    .line 1023
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPaused:Z

    return v0
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x1

    .line 1018
    iput-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPaused:Z

    .line 1019
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public play()V
    .locals 2

    const/4 v0, 0x0

    .line 1013
    iput-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPaused:Z

    .line 1014
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public prepare()V
    .locals 2

    .line 1009
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public seekTo(J)V
    .locals 2

    .line 1030
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1031
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 1035
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 1000
    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 1003
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    .line 1005
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaybackThread started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
