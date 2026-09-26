package net.protyposis.android.mediaplayer;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes.dex */
abstract class MediaCodecDecoder {
    public static final int INDEX_NONE = -1;
    public static final long PTS_EOS = Long.MAX_VALUE;
    public static final long PTS_NONE = Long.MIN_VALUE;
    private static final long TIMEOUT_US = 0;
    protected String TAG;
    private MediaCodec.BufferInfo mBufferInfo;
    private MediaCodec mCodec;
    private ByteBuffer[] mCodecInputBuffers;
    private ByteBuffer[] mCodecOutputBuffers;
    private FrameInfo mCurrentFrameInfo;
    private long mDecodingPTS;
    private List<FrameInfo> mEmptyFrameInfos;
    private MediaExtractor mExtractor;
    private MediaFormat mFormat;
    private boolean mInputEos;
    private OnDecoderEventListener mOnDecoderEventListener;
    private boolean mOutputEos;
    private boolean mPassive;
    private boolean mRepresentationChanged;
    private boolean mRepresentationChanging;
    private int mTrackIndex;
    private long metaDuration = -1;
    private boolean needFixCachedDuration;

    static class FrameInfo {
        int buffer;
        ByteBuffer data;
        boolean endOfStream;
        long presentationTimeUs;
        boolean representationChanged;

        public void clear() {
            this.buffer = -1;
            this.data = null;
            this.presentationTimeUs = -1L;
            this.endOfStream = false;
            this.representationChanged = false;
        }

        public String toString() {
            return "FrameInfo{buffer=" + this.buffer + ", data=" + this.data + ", presentationTimeUs=" + this.presentationTimeUs + ", endOfStream=" + this.endOfStream + ", representationChanged=" + this.representationChanged + b.END_OBJ;
        }

        public FrameInfo() {
            clear();
        }
    }

    interface OnDecoderEventListener {
        void onBuffering(MediaCodecDecoder mediaCodecDecoder);
    }

    protected void configureCodec(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        mediaCodec.configure(mediaFormat, (Surface) null, (MediaCrypto) null, 0);
    }

    public void dismissFrame(FrameInfo frameInfo) {
        releaseFrame(frameInfo);
    }

    protected final MediaCodec getCodec() {
        return this.mCodec;
    }

    public long getCurrentDecodingPTS() {
        return this.mDecodingPTS;
    }

    protected final MediaFormat getFormat() {
        return this.mFormat;
    }

    public long getMetaDuration() {
        return this.metaDuration;
    }

    protected final boolean isInputEos() {
        return this.mInputEos;
    }

    protected final boolean isOutputEos() {
        return this.mOutputEos;
    }

    protected final boolean isPassive() {
        return this.mPassive;
    }

    protected void onOutputFormatChanged(MediaFormat mediaFormat) {
    }

    public void renderFrame(FrameInfo frameInfo, long j6) {
        releaseFrame(frameInfo);
    }

    public final void seekTo(MediaPlayer.SeekMode seekMode, long j6) throws IOException {
        this.mDecodingPTS = Long.MIN_VALUE;
        this.mCurrentFrameInfo = seekTo(seekMode, j6, this.mExtractor, this.mCodec);
    }

    protected boolean shouldDecodeAnotherFrame() {
        return true;
    }

    private boolean isInCacheDurationBlackList() {
        if ("lge".equals(Build.BRAND)) {
            return true;
        }
        String str = Build.MODEL;
        if (str == null) {
            return false;
        }
        return str.startsWith("LG") || str.toLowerCase(Locale.US).startsWith("sm-j");
    }

    private boolean needFixCachedDuration() {
        if (this.mExtractor != null && isInCacheDurationBlackList()) {
            long integer = 0;
            for (int i10 = 0; i10 < this.mExtractor.getTrackCount(); i10++) {
                MediaFormat trackFormat = this.mExtractor.getTrackFormat(i10);
                if (trackFormat != null && trackFormat.containsKey("bitrate")) {
                    try {
                        integer += (long) trackFormat.getInteger("bitrate");
                    } catch (Exception unused) {
                    }
                }
            }
            if (integer == 0) {
                return true;
            }
        }
        return false;
    }

    private void resetMetaDuration() {
        try {
            MediaFormat mediaFormat = this.mFormat;
            if (mediaFormat == null || !mediaFormat.containsKey("durationUs")) {
                this.metaDuration = -1L;
            } else {
                this.metaDuration = this.mFormat.getLong("durationUs");
            }
        } catch (Exception unused) {
            this.metaDuration = -1L;
        }
    }

    public final FrameInfo decodeFrame(boolean z6, boolean z10) throws IOException {
        while (!this.mOutputEos) {
            FrameInfo frameInfoDequeueDecodedFrame = dequeueDecodedFrame();
            while (queueSampleToCodec(z6)) {
            }
            if (frameInfoDequeueDecodedFrame != null) {
                return frameInfoDequeueDecodedFrame;
            }
            if (!z10) {
                return null;
            }
        }
        Log.d(this.TAG, "EOS NULL");
        return null;
    }

    public final FrameInfo dequeueDecodedFrame() throws IOException {
        if (this.mOutputEos) {
            return null;
        }
        int iDequeueOutputBuffer = this.mCodec.dequeueOutputBuffer(this.mBufferInfo, 0L);
        boolean z6 = iDequeueOutputBuffer >= 0 && (this.mBufferInfo.flags & 4) != 0;
        this.mOutputEos = z6;
        if (z6 && this.mRepresentationChanging) {
            reinitCodec();
            this.mOutputEos = false;
            this.mRepresentationChanging = false;
            this.mRepresentationChanged = true;
        } else {
            if (iDequeueOutputBuffer >= 0) {
                ByteBuffer byteBuffer = this.mCodecOutputBuffers[iDequeueOutputBuffer];
                if (byteBuffer != null) {
                    MediaCodec.BufferInfo bufferInfo = this.mBufferInfo;
                    if (bufferInfo.size != 0) {
                        byteBuffer.position(bufferInfo.offset);
                        MediaCodec.BufferInfo bufferInfo2 = this.mBufferInfo;
                        byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
                    }
                }
                FrameInfo frameInfo = this.mEmptyFrameInfos.get(0);
                frameInfo.buffer = iDequeueOutputBuffer;
                frameInfo.data = byteBuffer;
                long j6 = this.mBufferInfo.presentationTimeUs;
                frameInfo.presentationTimeUs = j6;
                boolean z10 = this.mOutputEos;
                frameInfo.endOfStream = z10;
                if (this.mRepresentationChanged) {
                    this.mRepresentationChanged = false;
                    frameInfo.representationChanged = true;
                }
                if (z10) {
                    Log.d(this.TAG, "EOS output");
                } else {
                    this.mDecodingPTS = j6;
                }
                return frameInfo;
            }
            if (iDequeueOutputBuffer == -3) {
                this.mCodecOutputBuffers = this.mCodec.getOutputBuffers();
                Log.d(this.TAG, "output buffers have changed.");
            } else if (iDequeueOutputBuffer == -2) {
                MediaFormat outputFormat = this.mCodec.getOutputFormat();
                Log.d(this.TAG, "output format has changed to " + outputFormat);
                onOutputFormatChanged(outputFormat);
            }
        }
        return null;
    }

    public void dismissFrame() {
        FrameInfo frameInfo = this.mCurrentFrameInfo;
        if (frameInfo != null) {
            dismissFrame(frameInfo);
        }
    }

    public long getCachedDuration() {
        if (this.needFixCachedDuration) {
            return -1L;
        }
        return this.mExtractor.getCachedDuration();
    }

    public boolean hasCacheReachedEndOfStream() {
        return this.mExtractor.hasCacheReachedEndOfStream();
    }

    public final boolean queueSampleToCodec(boolean z6) {
        int i10;
        long sampleTime;
        boolean z10;
        OnDecoderEventListener onDecoderEventListener;
        OnDecoderEventListener onDecoderEventListener2;
        if (this.mInputEos || !shouldDecodeAnotherFrame()) {
            return false;
        }
        if (this.mExtractor.getSampleTrackIndex() != -1 && this.mExtractor.getSampleTrackIndex() != this.mTrackIndex) {
            if (z6) {
                return this.mExtractor.advance();
            }
            return false;
        }
        int iDequeueInputBuffer = this.mCodec.dequeueInputBuffer(0L);
        if (iDequeueInputBuffer < 0) {
            return false;
        }
        ByteBuffer byteBuffer = this.mCodecInputBuffers[iDequeueInputBuffer];
        if (this.mExtractor.hasTrackFormatChanged()) {
            this.mRepresentationChanging = true;
            this.mCodec.queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
            if (getCachedDuration() <= -1 || (onDecoderEventListener2 = this.mOnDecoderEventListener) == null) {
                return false;
            }
            onDecoderEventListener2.onBuffering(this);
            return false;
        }
        if (getCachedDuration() > -1 && (onDecoderEventListener = this.mOnDecoderEventListener) != null) {
            onDecoderEventListener.onBuffering(this);
        }
        int sampleData = this.mExtractor.readSampleData(byteBuffer, 0);
        if (sampleData < 0) {
            Log.d(this.TAG, "EOS input");
            this.mInputEos = true;
            z10 = false;
            i10 = 0;
            sampleTime = 0;
        } else {
            i10 = sampleData;
            sampleTime = this.mExtractor.getSampleTime();
            z10 = true;
        }
        this.mCodec.queueInputBuffer(iDequeueInputBuffer, 0, i10, sampleTime, this.mInputEos ? 4 : 0);
        if (!this.mInputEos) {
            this.mExtractor.advance();
        }
        return z10;
    }

    public void release() {
        this.mCodec.stop();
        this.mCodec.release();
        Log.d(this.TAG, "decoder released");
    }

    public void releaseFrame(FrameInfo frameInfo) {
        this.mCodec.releaseOutputBuffer(frameInfo.buffer, false);
        releaseFrameInfo(frameInfo);
    }

    public void renderFrame() {
        FrameInfo frameInfo = this.mCurrentFrameInfo;
        if (frameInfo != null) {
            renderFrame(frameInfo, 0L);
        }
    }

    protected FrameInfo seekTo(MediaPlayer.SeekMode seekMode, long j6, MediaExtractor mediaExtractor, MediaCodec mediaCodec) throws IOException {
        if (this.mPassive) {
            this.mInputEos = false;
            this.mOutputEos = false;
            mediaCodec.flush();
            return null;
        }
        Log.d(this.TAG, "seeking to:                 " + j6);
        Log.d(this.TAG, "extractor current position: " + mediaExtractor.getSampleTime());
        mediaExtractor.seekTo(j6, seekMode.getBaseSeekMode());
        Log.d(this.TAG, "extractor new position:     " + mediaExtractor.getSampleTime());
        this.mInputEos = false;
        this.mOutputEos = false;
        mediaCodec.flush();
        if (mediaExtractor.hasTrackFormatChanged()) {
            reinitCodec();
            this.mRepresentationChanged = true;
        }
        return decodeFrame(true, true);
    }

    public final void skipToNextSample() {
        if (this.mPassive) {
            return;
        }
        while (true) {
            int sampleTrackIndex = this.mExtractor.getSampleTrackIndex();
            if (sampleTrackIndex == -1 || sampleTrackIndex == this.mTrackIndex || this.mInputEos) {
                return;
            } else {
                this.mExtractor.advance();
            }
        }
    }

    public MediaCodecDecoder(MediaExtractor mediaExtractor, boolean z6, int i10, OnDecoderEventListener onDecoderEventListener) throws IllegalStateException, IOException {
        this.TAG = MediaCodecDecoder.class.getSimpleName();
        this.TAG = getClass().getSimpleName();
        if (mediaExtractor != null && i10 != -1) {
            this.mExtractor = mediaExtractor;
            this.needFixCachedDuration = needFixCachedDuration();
            this.mPassive = z6;
            this.mTrackIndex = i10;
            this.mFormat = mediaExtractor.getTrackFormat(i10);
            resetMetaDuration();
            this.mOnDecoderEventListener = onDecoderEventListener;
            this.mCodec = MediaCodec.createDecoderByType(this.mFormat.getString("mime"));
            this.mDecodingPTS = Long.MIN_VALUE;
            return;
        }
        throw new IllegalArgumentException("no track specified");
    }

    protected final void reinitCodec() throws IOException {
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.mFormat = this.mExtractor.getTrackFormat(this.mTrackIndex);
            resetMetaDuration();
            this.mCodec.stop();
            configureCodec(this.mCodec, this.mFormat);
            this.mCodec.start();
            this.mCodecInputBuffers = this.mCodec.getInputBuffers();
            this.mCodecOutputBuffers = this.mCodec.getOutputBuffers();
            this.mBufferInfo = new MediaCodec.BufferInfo();
            this.mInputEos = false;
            this.mOutputEos = false;
            this.mEmptyFrameInfos = new ArrayList();
            for (int i10 = 0; i10 < this.mCodecOutputBuffers.length; i10++) {
                this.mEmptyFrameInfos.add(new FrameInfo());
            }
            Log.d(this.TAG, "reinitCodec " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
        } catch (IllegalArgumentException e) {
            this.mCodec.release();
            Log.e(this.TAG, "reinitCodec: invalid surface or format");
            throw e;
        } catch (IllegalStateException e2) {
            this.mCodec.release();
            Log.e(this.TAG, "reinitCodec: illegal state");
            throw e2;
        }
    }

    protected final void releaseFrameInfo(FrameInfo frameInfo) {
        frameInfo.clear();
        this.mEmptyFrameInfos.add(frameInfo);
    }

    public boolean suspectEOS() {
        long metaDuration = getMetaDuration();
        if (metaDuration > 0) {
            long currentDecodingPTS = metaDuration - getCurrentDecodingPTS();
            if (currentDecodingPTS >= 0 && currentDecodingPTS < 200000) {
                return true;
            }
            return false;
        }
        return false;
    }
}
