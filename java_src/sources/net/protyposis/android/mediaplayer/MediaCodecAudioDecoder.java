package net.protyposis.android.mediaplayer;

import android.media.MediaCodec;
import android.media.MediaFormat;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
class MediaCodecAudioDecoder extends MediaCodecDecoder {
    private AudioPlayback mAudioPlayback;

    @Override // net.protyposis.android.mediaplayer.MediaCodecDecoder
    protected void onOutputFormatChanged(MediaFormat mediaFormat) {
        this.mAudioPlayback.init(mediaFormat);
    }

    @Override // net.protyposis.android.mediaplayer.MediaCodecDecoder
    public void renderFrame(MediaCodecDecoder.FrameInfo frameInfo, long j6) {
        this.mAudioPlayback.write(frameInfo.data, frameInfo.presentationTimeUs);
        releaseFrame(frameInfo);
    }

    public MediaCodecAudioDecoder(MediaExtractor mediaExtractor, boolean z6, int i10, MediaCodecDecoder.OnDecoderEventListener onDecoderEventListener, AudioPlayback audioPlayback) throws IOException {
        super(mediaExtractor, z6, i10, onDecoderEventListener);
        this.mAudioPlayback = audioPlayback;
        reinitCodec();
    }

    @Override // net.protyposis.android.mediaplayer.MediaCodecDecoder
    protected void configureCodec(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        super.configureCodec(mediaCodec, mediaFormat);
        this.mAudioPlayback.init(mediaFormat);
    }

    @Override // net.protyposis.android.mediaplayer.MediaCodecDecoder
    protected boolean shouldDecodeAnotherFrame() {
        if (!isPassive()) {
            if (this.mAudioPlayback.getQueueBufferTimeUs() < 200000) {
                return true;
            }
            return false;
        }
        return super.shouldDecodeAnotherFrame();
    }
}
