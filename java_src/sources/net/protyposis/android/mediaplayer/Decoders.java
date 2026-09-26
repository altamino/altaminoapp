package net.protyposis.android.mediaplayer;

import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class Decoders {
    private static final String TAG = "Decoders";
    private MediaCodecAudioDecoder mAudioDecoder;
    private List<MediaCodecDecoder> mDecoders = new ArrayList();
    private MediaCodecVideoDecoder mVideoDecoder;

    public MediaCodecAudioDecoder getAudioDecoder() {
        return this.mAudioDecoder;
    }

    public List<MediaCodecDecoder> getDecoders() {
        return this.mDecoders;
    }

    public MediaCodecVideoDecoder getVideoDecoder() {
        return this.mVideoDecoder;
    }

    public void addDecoder(MediaCodecDecoder mediaCodecDecoder) {
        this.mDecoders.add(mediaCodecDecoder);
        if (mediaCodecDecoder instanceof MediaCodecVideoDecoder) {
            this.mVideoDecoder = (MediaCodecVideoDecoder) mediaCodecDecoder;
        } else if (mediaCodecDecoder instanceof MediaCodecAudioDecoder) {
            this.mAudioDecoder = (MediaCodecAudioDecoder) mediaCodecDecoder;
        }
    }

    public MediaCodecDecoder.FrameInfo decodeFrame(boolean z6) throws IOException {
        int i10;
        do {
            i10 = 0;
            MediaCodecDecoder.FrameInfo frameInfo = null;
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
                    i10++;
                }
            }
            if (frameInfo != null) {
                return frameInfo;
            }
            if (!z6) {
                return null;
            }
        } while (i10 != this.mDecoders.size());
        Log.d(TAG, "EOS NULL");
        return null;
    }

    public void dismissFrames() {
        Iterator<MediaCodecDecoder> it = this.mDecoders.iterator();
        while (it.hasNext()) {
            it.next().dismissFrame();
        }
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

    public long getCurrentDecodingPTS() {
        long j6 = Long.MAX_VALUE;
        for (MediaCodecDecoder mediaCodecDecoder : this.mDecoders) {
            if (!(mediaCodecDecoder instanceof MediaCodecAudioDecoder) || this.mVideoDecoder == null || !mediaCodecDecoder.suspectEOS()) {
                long currentDecodingPTS = mediaCodecDecoder.getCurrentDecodingPTS();
                if (currentDecodingPTS != Long.MIN_VALUE && j6 > currentDecodingPTS) {
                    j6 = currentDecodingPTS;
                }
            }
        }
        return j6;
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

    public boolean isEOS() {
        Iterator<MediaCodecDecoder> it = this.mDecoders.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (it.next().isOutputEos()) {
                i10++;
            }
        }
        return i10 == this.mDecoders.size();
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

    public void renderFrames() {
        Iterator<MediaCodecDecoder> it = this.mDecoders.iterator();
        while (it.hasNext()) {
            it.next().renderFrame();
        }
    }

    public void seekTo(MediaPlayer.SeekMode seekMode, long j6) throws IOException {
        Iterator<MediaCodecDecoder> it = this.mDecoders.iterator();
        while (it.hasNext()) {
            it.next().seekTo(seekMode, j6);
        }
    }

    public boolean suspectAudioEOS() {
        MediaCodecAudioDecoder mediaCodecAudioDecoder = this.mAudioDecoder;
        if (mediaCodecAudioDecoder != null) {
            return mediaCodecAudioDecoder.suspectEOS();
        }
        return false;
    }
}
