.class Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;
.super Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;
.source "MediaCodecAudioDecoder.java"


# instance fields
.field private mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;


# direct methods
.method public constructor <init>(Lnet/protyposis/android/mediaplayer/MediaExtractor;ZILnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;Lnet/protyposis/android/mediaplayer/AudioPlayback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;-><init>(Lnet/protyposis/android/mediaplayer/MediaExtractor;ZILnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;)V

    .line 35
    iput-object p5, p0, Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 36
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->reinitCodec()V

    return-void
.end method


# virtual methods
.method protected configureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->configureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 42
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    invoke-virtual {p1, p2}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->init(Landroid/media/MediaFormat;)V

    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    invoke-virtual {v0, p1}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->init(Landroid/media/MediaFormat;)V

    return-void
.end method

.method public renderFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;J)V
    .locals 2

    .line 60
    iget-object p2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    iget-object p3, p1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->data:Ljava/nio/ByteBuffer;

    iget-wide v0, p1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    invoke-virtual {p2, p3, v0, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->write(Ljava/nio/ByteBuffer;J)V

    .line 61
    invoke-virtual {p0, p1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    return-void
.end method

.method protected shouldDecodeAnotherFrame()Z
    .locals 5

    .line 50
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->isPassive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->getQueueBufferTimeUs()J

    move-result-wide v0

    const-wide/32 v2, 0x30d40

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 54
    :cond_1
    invoke-super {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->shouldDecodeAnotherFrame()Z

    move-result v0

    return v0
.end method
