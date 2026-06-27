package net.protyposis.android.mediaplayer;

import android.media.MediaCodec;
import android.media.MediaFormat;
import java.io.IOException;
import net.protyposis.android.mediaplayer.MediaCodecDecoder;

/* loaded from: classes4.dex */
class MediaCodecAudioDecoder extends MediaCodecDecoder {
    private AudioPlayback mAudioPlayback;

    public MediaCodecAudioDecoder(MediaExtractor mediaExtractor, boolean z, int i, MediaCodecDecoder.OnDecoderEventListener onDecoderEventListener, AudioPlayback audioPlayback) throws IOException {
        super(mediaExtractor, z, i, onDecoderEventListener);
        this.mAudioPlayback = audioPlayback;
        reinitCodec();
    }

    @Override // net.protyposis.android.mediaplayer.MediaCodecDecoder
    protected void configureCodec(MediaCodec mediaCodec, MediaFormat mediaFormat) throws IllegalStateException {
        super.configureCodec(mediaCodec, mediaFormat);
        this.mAudioPlayback.init(mediaFormat);
    }

    @Override // net.protyposis.android.mediaplayer.MediaCodecDecoder
    protected boolean shouldDecodeAnotherFrame() {
        if (isPassive()) {
            return super.shouldDecodeAnotherFrame();
        }
        return this.mAudioPlayback.getQueueBufferTimeUs() < 200000;
    }

    @Override // net.protyposis.android.mediaplayer.MediaCodecDecoder
    public void renderFrame(MediaCodecDecoder.FrameInfo frameInfo, long j) throws IllegalStateException {
        this.mAudioPlayback.write(frameInfo.data, frameInfo.presentationTimeUs);
        releaseFrame(frameInfo);
    }

    @Override // net.protyposis.android.mediaplayer.MediaCodecDecoder
    protected void onOutputFormatChanged(MediaFormat mediaFormat) throws IllegalStateException {
        this.mAudioPlayback.init(mediaFormat);
    }
}
