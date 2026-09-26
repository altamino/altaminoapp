package net.protyposis.android.mediaplayer;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.util.Log;
import android.view.Surface;
import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
class MediaCodecVideoDecoder extends MediaCodecDecoder {
    private boolean mRenderModeApi21;
    private Surface mVideoSurface;

    public void releaseFrame(MediaCodecDecoder.FrameInfo frameInfo, boolean z6) {
        getCodec().releaseOutputBuffer(frameInfo.buffer, z6);
        releaseFrameInfo(frameInfo);
    }

    @Override // net.protyposis.android.mediaplayer.MediaCodecDecoder
    protected void configureCodec(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        mediaCodec.configure(mediaFormat, this.mVideoSurface, (MediaCrypto) null, 0);
    }

    @Override // net.protyposis.android.mediaplayer.MediaCodecDecoder
    @SuppressLint({"NewApi"})
    public void renderFrame(MediaCodecDecoder.FrameInfo frameInfo, long j6) {
        if (this.mRenderModeApi21) {
            releaseFrame(frameInfo, j6);
        } else {
            releaseFrame(frameInfo, true);
        }
    }

    @Override // net.protyposis.android.mediaplayer.MediaCodecDecoder
    protected MediaCodecDecoder.FrameInfo seekTo(MediaPlayer.SeekMode seekMode, long j6, MediaExtractor mediaExtractor, MediaCodec mediaCodec) throws IOException {
        long j10 = j6 / 1000;
        MediaCodecDecoder.FrameInfo frameInfoSeekTo = super.seekTo(seekMode, j6, mediaExtractor, mediaCodec);
        long j11 = -1;
        if (seekMode == MediaPlayer.SeekMode.FAST || seekMode == MediaPlayer.SeekMode.FAST_TO_CLOSEST_SYNC || seekMode == MediaPlayer.SeekMode.FAST_TO_PREVIOUS_SYNC || seekMode == MediaPlayer.SeekMode.FAST_TO_NEXT_SYNC) {
            Log.d(this.TAG, "fast seek to " + j6 + " arrived at " + frameInfoSeekTo.presentationTimeUs);
        } else {
            if (seekMode == MediaPlayer.SeekMode.FAST_EXACT) {
                releaseFrame(frameInfoSeekTo, false);
                fastSeek(j6, mediaExtractor, mediaCodec);
                MediaCodecDecoder.FrameInfo frameInfoDecodeFrame = decodeFrame(true, true);
                Log.d(this.TAG, "fast_exact seek to " + j6 + " arrived at " + frameInfoDecodeFrame.presentationTimeUs);
                if (frameInfoDecodeFrame.presentationTimeUs < j6) {
                    Log.d(this.TAG, "presentation is behind...");
                }
                return frameInfoDecodeFrame;
            }
            if (seekMode == MediaPlayer.SeekMode.PRECISE || seekMode == MediaPlayer.SeekMode.EXACT) {
                int i10 = 0;
                long j12 = -1;
                j11 = frameInfoSeekTo.presentationTimeUs / 1000;
                while (j11 < j10) {
                    if (i10 == 0) {
                        Log.d(this.TAG, "skipping frames...");
                    }
                    i10++;
                    if (isOutputEos()) {
                        j10 = frameInfoSeekTo.presentationTimeUs / 1000;
                    }
                    if (frameInfoSeekTo.endOfStream) {
                        Log.d(this.TAG, "end of stream reached, seeking to last frame");
                        releaseFrame(frameInfoSeekTo, false);
                        return seekTo(seekMode, j12, mediaExtractor, mediaCodec);
                    }
                    j12 = frameInfoSeekTo.presentationTimeUs;
                    releaseFrame(frameInfoSeekTo, false);
                    frameInfoSeekTo = decodeFrame(true, true);
                    j11 = frameInfoSeekTo.presentationTimeUs / 1000;
                }
                Log.d(this.TAG, "frame new position:         " + frameInfoSeekTo.presentationTimeUs);
                Log.d(this.TAG, "seeking finished, skipped " + i10 + " frames");
                if (seekMode == MediaPlayer.SeekMode.EXACT && j11 > j10) {
                    if (i10 != 0) {
                        Log.d(this.TAG, "exact seek: repeat seek for previous frame at " + j12);
                        releaseFrame(frameInfoSeekTo, false);
                        return seekTo(seekMode, j12, mediaExtractor, mediaCodec);
                    }
                    Log.w(this.TAG, "this should never happen");
                }
            }
        }
        if (j11 == j10) {
            Log.d(this.TAG, "exact seek match!");
        }
        return frameInfoSeekTo;
    }

    public void updateSurface(Surface surface) throws IOException {
        if (surface == null) {
            throw new RuntimeException("surface must not be null");
        }
        this.mVideoSurface = surface;
        reinitCodec();
    }

    public MediaCodecVideoDecoder(MediaExtractor mediaExtractor, boolean z6, int i10, MediaCodecDecoder.OnDecoderEventListener onDecoderEventListener, Surface surface, boolean z10) throws IOException {
        super(mediaExtractor, z6, i10, onDecoderEventListener);
        this.mVideoSurface = surface;
        this.mRenderModeApi21 = z10;
        reinitCodec();
    }

    private long fastSeek(long j6, MediaExtractor mediaExtractor, MediaCodec mediaCodec) throws IOException {
        mediaCodec.flush();
        mediaExtractor.seekTo(j6, 0);
        if (mediaExtractor.getSampleTime() == j6) {
            Log.d(this.TAG, "skip fastseek, already there");
            return j6;
        }
        skipToNextSample();
        queueSampleToCodec(false);
        mediaExtractor.seekTo(j6, 0);
        long j10 = Long.MAX_VALUE;
        int i10 = 0;
        long sampleTime = 0;
        while (mediaExtractor.advance() && i10 < 20) {
            long sampleTime2 = j6 - mediaExtractor.getSampleTime();
            if (sampleTime2 >= 0 && sampleTime2 < j10) {
                sampleTime = mediaExtractor.getSampleTime();
                j10 = sampleTime2;
            }
            if (sampleTime2 < 0) {
                i10++;
            }
        }
        mediaExtractor.seekTo(sampleTime, 0);
        while (mediaExtractor.getSampleTime() != sampleTime) {
            mediaExtractor.advance();
        }
        Log.d(this.TAG, "exact fastseek match:       " + mediaExtractor.getSampleTime());
        return sampleTime;
    }

    public int getVideoHeight() {
        MediaFormat format = getFormat();
        if (format != null) {
            return format.getInteger("height");
        }
        return 0;
    }

    public int getVideoRotation() {
        MediaFormat format = getFormat();
        if (format != null && format.containsKey("rotation-degrees")) {
            return format.getInteger("rotation-degrees");
        }
        return 0;
    }

    public int getVideoWidth() {
        MediaFormat format = getFormat();
        if (format != null) {
            return (int) (format.getInteger("height") * format.getFloat(MediaExtractor.MEDIA_FORMAT_EXTENSION_KEY_DAR));
        }
        return 0;
    }

    @TargetApi(21)
    public void releaseFrame(MediaCodecDecoder.FrameInfo frameInfo, long j6) {
        getCodec().releaseOutputBuffer(frameInfo.buffer, System.nanoTime() + (j6 * 1000));
        releaseFrameInfo(frameInfo);
    }
}
