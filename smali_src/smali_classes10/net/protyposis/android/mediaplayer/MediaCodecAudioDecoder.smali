.class Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;
.super Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;-><init>(Lnet/protyposis/android/mediaplayer/MediaExtractor;ZILnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;)V

    .line 4
    .line 5
    iput-object p5, p0, Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->reinitCodec()V

    .line 9
    return-void
.end method


# virtual methods
.method protected configureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->configureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 4
    .line 5
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->init(Landroid/media/MediaFormat;)V

    .line 9
    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->init(Landroid/media/MediaFormat;)V

    .line 6
    return-void
.end method

.method public renderFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;J)V
    .locals 2

    .line 1
    .line 2
    iget-object p2, p0, Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 3
    .line 4
    iget-object p3, p1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->data:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    iget-wide v0, p1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p3, v0, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->write(Ljava/nio/ByteBuffer;J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    .line 13
    return-void
.end method

.method protected shouldDecodeAnotherFrame()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->isPassive()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecAudioDecoder;->mAudioPlayback:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->getQueueBufferTimeUs()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    .line 15
    const-wide/32 v2, 0x30d40

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-gez v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-super {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->shouldDecodeAnotherFrame()Z

    .line 27
    move-result v0

    .line 28
    return v0
.end method
