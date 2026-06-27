package net.protyposis.android.mediaplayer;

import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.protyposis.android.mediaplayer.MediaCodecDecoder;
import net.protyposis.android.mediaplayer.MediaPlayer;

/* loaded from: classes4.dex */
class Decoders {
    private static final String TAG = "Decoders";
    private MediaCodecAudioDecoder mAudioDecoder;
    private List<MediaCodecDecoder> mDecoders = new ArrayList();
    private MediaCodecVideoDecoder mVideoDecoder;

    public void addDecoder(MediaCodecDecoder mediaCodecDecoder) {
        this.mDecoders.add(mediaCodecDecoder);
        if (mediaCodecDecoder instanceof MediaCodecVideoDecoder) {
            this.mVideoDecoder = (MediaCodecVideoDecoder) mediaCodecDecoder;
        } else if (mediaCodecDecoder instanceof MediaCodecAudioDecoder) {
            this.mAudioDecoder = (MediaCodecAudioDecoder) mediaCodecDecoder;
        }
    }

    public List<MediaCodecDecoder> getDecoders() {
        return this.mDecoders;
    }

    public MediaCodecVideoDecoder getVideoDecoder() {
        return this.mVideoDecoder;
    }

    public MediaCodecDecoder.FrameInfo decodeFrame(boolean z) throws IOException {
        boolean z2;
        while (true) {
            while (!z2) {
                MediaCodecDecoder.FrameInfo frameInfo = null;
                int i = 0;
                for (MediaCodecDecoder mediaCodecDecoder : this.mDecoders) {
                    while (true) {
                        MediaCodecDecoder.FrameInfo frameInfoDequeueDecodedFrame = mediaCodecDecoder.dequeueDecodedFrame();
                        if (frameInfoDequeueDecodedFrame == null) {
                            break;
                        }
                        if (mediaCodecDecoder == this.mVideoDecoder) {
                            frameInfo = frameInfoDequeueDecodedFrame;
                            break;
                        }
                        mediaCodecDecoder.renderFrame(frameInfoDequeueDecodedFrame, 0L);
                    }
                    while (mediaCodecDecoder.queueSampleToCodec(false)) {
                    }
                    if (mediaCodecDecoder.isOutputEos()) {
                        i++;
                    }
                }
                if (frameInfo != null) {
                    return frameInfo;
                }
                if (!z) {
                    return null;
                }
                z2 = i == this.mDecoders.size();
            }
            Log.d(TAG, "EOS NULL");
            return null;
        }
    }

    public void release() {
        Iterator<MediaCodecDecoder> it = this.mDecoders.iterator();
        while (it.hasNext()) {
            try {
                it.next().release();
            } catch (Exception e) {
                Log.e(TAG, "release failed", e);
            }
        }
        this.mDecoders.clear();
    }

    public void seekTo(MediaPlayer.SeekMode seekMode, long j) throws IOException {
        Iterator<MediaCodecDecoder> it = this.mDecoders.iterator();
        while (it.hasNext()) {
            it.next().seekTo(seekMode, j);
        }
    }

    public void renderFrames() {
        Iterator<MediaCodecDecoder> it = this.mDecoders.iterator();
        while (it.hasNext()) {
            it.next().renderFrame();
        }
    }

    public boolean suspectAudioEOS() {
        MediaCodecAudioDecoder mediaCodecAudioDecoder = this.mAudioDecoder;
        if (mediaCodecAudioDecoder != null) {
            return mediaCodecAudioDecoder.suspectEOS();
        }
        return false;
    }

    public void dismissFrames() {
        Iterator<MediaCodecDecoder> it = this.mDecoders.iterator();
        while (it.hasNext()) {
            it.next().dismissFrame();
        }
    }

    public long getCurrentDecodingPTS() {
        long j = Long.MAX_VALUE;
        for (MediaCodecDecoder mediaCodecDecoder : this.mDecoders) {
            if (!(mediaCodecDecoder instanceof MediaCodecAudioDecoder) || this.mVideoDecoder == null || !mediaCodecDecoder.suspectEOS()) {
                long currentDecodingPTS = mediaCodecDecoder.getCurrentDecodingPTS();
                if (currentDecodingPTS != Long.MIN_VALUE && j > currentDecodingPTS) {
                    j = currentDecodingPTS;
                }
            }
        }
        return j;
    }

    public boolean isEOS() {
        Iterator<MediaCodecDecoder> it = this.mDecoders.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().isOutputEos()) {
                i++;
            }
        }
        return i == this.mDecoders.size();
    }

    public long getCachedDuration() {
        Iterator<MediaCodecDecoder> it = this.mDecoders.iterator();
        long jMin = Long.MAX_VALUE;
        while (it.hasNext()) {
            jMin = Math.min(it.next().getCachedDuration(), jMin);
        }
        if (jMin == Long.MAX_VALUE) {
            return -1L;
        }
        return jMin;
    }

    public boolean hasCacheReachedEndOfStream() {
        Iterator<MediaCodecDecoder> it = this.mDecoders.iterator();
        while (it.hasNext()) {
            if (!it.next().hasCacheReachedEndOfStream()) {
                return false;
            }
        }
        return true;
    }
}
