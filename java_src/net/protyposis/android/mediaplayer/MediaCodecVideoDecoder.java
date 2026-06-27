package net.protyposis.android.mediaplayer;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.util.Log;
import android.view.Surface;
import java.io.IOException;
import net.protyposis.android.mediaplayer.MediaCodecDecoder;
import net.protyposis.android.mediaplayer.MediaPlayer;

/* loaded from: classes4.dex */
class MediaCodecVideoDecoder extends MediaCodecDecoder {
    private boolean mRenderModeApi21;
    private Surface mVideoSurface;

    public MediaCodecVideoDecoder(MediaExtractor mediaExtractor, boolean z, int i, MediaCodecDecoder.OnDecoderEventListener onDecoderEventListener, Surface surface, boolean z2) throws IOException {
        super(mediaExtractor, z, i, onDecoderEventListener);
        this.mVideoSurface = surface;
        this.mRenderModeApi21 = z2;
        reinitCodec();
    }

    @Override // net.protyposis.android.mediaplayer.MediaCodecDecoder
    protected void configureCodec(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        mediaCodec.configure(mediaFormat, this.mVideoSurface, (MediaCrypto) null, 0);
    }

    public void updateSurface(Surface surface) throws IOException {
        if (surface == null) {
            throw new RuntimeException("surface must not be null");
        }
        this.mVideoSurface = surface;
        reinitCodec();
    }

    public int getVideoWidth() {
        MediaFormat format = getFormat();
        if (format != null) {
            return (int) (format.getInteger("height") * format.getFloat(MediaExtractor.MEDIA_FORMAT_EXTENSION_KEY_DAR));
        }
        return 0;
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
        if (format == null || !format.containsKey("rotation-degrees")) {
            return 0;
        }
        return format.getInteger("rotation-degrees");
    }

    @Override // net.protyposis.android.mediaplayer.MediaCodecDecoder
    @SuppressLint({"NewApi"})
    public void renderFrame(MediaCodecDecoder.FrameInfo frameInfo, long j) {
        if (this.mRenderModeApi21) {
            releaseFrame(frameInfo, j);
        } else {
            releaseFrame(frameInfo, true);
        }
    }

    public void releaseFrame(MediaCodecDecoder.FrameInfo frameInfo, boolean z) {
        getCodec().releaseOutputBuffer(frameInfo.buffer, z);
        releaseFrameInfo(frameInfo);
    }

    @TargetApi(21)
    public void releaseFrame(MediaCodecDecoder.FrameInfo frameInfo, long j) {
        getCodec().releaseOutputBuffer(frameInfo.buffer, System.nanoTime() + (j * 1000));
        releaseFrameInfo(frameInfo);
    }

    @Override // net.protyposis.android.mediaplayer.MediaCodecDecoder
    protected MediaCodecDecoder.FrameInfo seekTo(MediaPlayer.SeekMode seekMode, long j, MediaExtractor mediaExtractor, MediaCodec mediaCodec) throws MediaCodec.CryptoException, IOException {
        long j2 = j / 1000;
        MediaCodecDecoder.FrameInfo frameInfoSeekTo = super.seekTo(seekMode, j, mediaExtractor, mediaCodec);
        long j3 = -1;
        if (seekMode == MediaPlayer.SeekMode.FAST || seekMode == MediaPlayer.SeekMode.FAST_TO_CLOSEST_SYNC || seekMode == MediaPlayer.SeekMode.FAST_TO_PREVIOUS_SYNC || seekMode == MediaPlayer.SeekMode.FAST_TO_NEXT_SYNC) {
            Log.d(this.TAG, "fast seek to " + j + " arrived at " + frameInfoSeekTo.presentationTimeUs);
        } else {
            boolean z = true;
            boolean z2 = false;
            if (seekMode == MediaPlayer.SeekMode.FAST_EXACT) {
                releaseFrame(frameInfoSeekTo, false);
                fastSeek(j, mediaExtractor, mediaCodec);
                MediaCodecDecoder.FrameInfo frameInfoDecodeFrame = decodeFrame(true, true);
                Log.d(this.TAG, "fast_exact seek to " + j + " arrived at " + frameInfoDecodeFrame.presentationTimeUs);
                if (frameInfoDecodeFrame.presentationTimeUs < j) {
                    Log.d(this.TAG, "presentation is behind...");
                }
                return frameInfoDecodeFrame;
            }
            if (seekMode == MediaPlayer.SeekMode.PRECISE || seekMode == MediaPlayer.SeekMode.EXACT) {
                long j4 = -1;
                j3 = frameInfoSeekTo.presentationTimeUs / 1000;
                int i = 0;
                while (j3 < j2) {
                    if (i == 0) {
                        Log.d(this.TAG, "skipping frames...");
                    }
                    i++;
                    if (isOutputEos()) {
                        j2 = frameInfoSeekTo.presentationTimeUs / 1000;
                    }
                    if (frameInfoSeekTo.endOfStream) {
                        Log.d(this.TAG, "end of stream reached, seeking to last frame");
                        releaseFrame(frameInfoSeekTo, z2);
                        return seekTo(seekMode, j4, mediaExtractor, mediaCodec);
                    }
                    long j5 = frameInfoSeekTo.presentationTimeUs;
                    releaseFrame(frameInfoSeekTo, z2);
                    frameInfoSeekTo = decodeFrame(z, z);
                    j4 = j5;
                    j3 = frameInfoSeekTo.presentationTimeUs / 1000;
                    z = true;
                    z2 = false;
                }
                Log.d(this.TAG, "frame new position:         " + frameInfoSeekTo.presentationTimeUs);
                Log.d(this.TAG, "seeking finished, skipped " + i + " frames");
                if (seekMode == MediaPlayer.SeekMode.EXACT && j3 > j2) {
                    if (i == 0) {
                        Log.w(this.TAG, "this should never happen");
                    } else {
                        String str = this.TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("exact seek: repeat seek for previous frame at ");
                        long j6 = j4;
                        sb.append(j6);
                        Log.d(str, sb.toString());
                        releaseFrame(frameInfoSeekTo, false);
                        return seekTo(seekMode, j6, mediaExtractor, mediaCodec);
                    }
                }
            }
        }
        if (j3 == j2) {
            Log.d(this.TAG, "exact seek match!");
        }
        return frameInfoSeekTo;
    }

    private long fastSeek(long j, MediaExtractor mediaExtractor, MediaCodec mediaCodec) throws MediaCodec.CryptoException, IOException {
        mediaCodec.flush();
        mediaExtractor.seekTo(j, 0);
        if (mediaExtractor.getSampleTime() == j) {
            Log.d(this.TAG, "skip fastseek, already there");
            return j;
        }
        skipToNextSample();
        queueSampleToCodec(false);
        mediaExtractor.seekTo(j, 0);
        long j2 = Long.MAX_VALUE;
        long sampleTime = 0;
        int i = 0;
        while (mediaExtractor.advance() && i < 20) {
            long sampleTime2 = j - mediaExtractor.getSampleTime();
            if (sampleTime2 >= 0 && sampleTime2 < j2) {
                sampleTime = mediaExtractor.getSampleTime();
                j2 = sampleTime2;
            }
            if (sampleTime2 < 0) {
                i++;
            }
        }
        mediaExtractor.seekTo(sampleTime, 0);
        while (mediaExtractor.getSampleTime() != sampleTime) {
            mediaExtractor.advance();
        }
        Log.d(this.TAG, "exact fastseek match:       " + mediaExtractor.getSampleTime());
        return sampleTime;
    }
}
