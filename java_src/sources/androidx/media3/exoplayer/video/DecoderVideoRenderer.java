package androidx.media3.exoplayer.video;

import android.os.SystemClock;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.decoder.Decoder;
import androidx.media3.decoder.DecoderException;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.drm.DrmSession;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public abstract class DecoderVideoRenderer extends BaseRenderer {
    private static final int REINITIALIZATION_STATE_NONE = 0;
    private static final int REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM = 1;
    private static final int REINITIALIZATION_STATE_WAIT_END_OF_STREAM = 2;
    private static final String TAG = "DecoderVideoRenderer";
    private final long allowedJoiningTimeMs;
    private int buffersInCodecCount;
    private int consecutiveDroppedFrameCount;

    @Nullable
    private Decoder<DecoderInputBuffer, ? extends VideoDecoderOutputBuffer, ? extends DecoderException> decoder;
    protected DecoderCounters decoderCounters;

    @Nullable
    private DrmSession decoderDrmSession;
    private boolean decoderReceivedBuffers;
    private int decoderReinitializationState;
    private long droppedFrameAccumulationStartTimeMs;
    private int droppedFrames;
    private final VideoRendererEventListener.EventDispatcher eventDispatcher;
    private final DecoderInputBuffer flagsOnlyBuffer;
    private final TimedValueQueue<Format> formatQueue;

    @Nullable
    private VideoFrameMetadataListener frameMetadataListener;
    private long initialPositionUs;
    private DecoderInputBuffer inputBuffer;
    private Format inputFormat;
    private boolean inputStreamEnded;
    private long joiningDeadlineMs;
    private long lastRenderTimeUs;
    private final int maxDroppedFramesToNotify;
    private boolean mayRenderFirstFrameAfterEnableIfNotStarted;

    @Nullable
    private Object output;
    private VideoDecoderOutputBuffer outputBuffer;

    @Nullable
    private VideoDecoderOutputBufferRenderer outputBufferRenderer;
    private Format outputFormat;
    private int outputMode;
    private boolean outputStreamEnded;
    private long outputStreamOffsetUs;

    @Nullable
    private Surface outputSurface;
    private boolean renderedFirstFrameAfterEnable;
    private boolean renderedFirstFrameAfterReset;

    @Nullable
    private VideoSize reportedVideoSize;

    @Nullable
    private DrmSession sourceDrmSession;
    private boolean waitingForFirstSampleInFormat;

    private void E() {
        this.renderedFirstFrameAfterReset = false;
    }

    private void F() {
        this.reportedVideoSize = null;
    }

    private boolean L() {
        return this.outputMode != -1;
    }

    private static boolean M(long j6) {
        return j6 < -30000;
    }

    private static boolean N(long j6) {
        return j6 < -500000;
    }

    private void R() {
        this.renderedFirstFrameAfterEnable = true;
        if (this.renderedFirstFrameAfterReset) {
            return;
        }
        this.renderedFirstFrameAfterReset = true;
        this.eventDispatcher.A(this.output);
    }

    protected abstract Decoder<DecoderInputBuffer, ? extends VideoDecoderOutputBuffer, ? extends DecoderException> G(Format format, @Nullable CryptoConfig cryptoConfig) throws DecoderException;

    protected void I(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        o0(0, 1);
        videoDecoderOutputBuffer.n();
    }

    @CallSuper
    protected void K() throws ExoPlaybackException {
        this.buffersInCodecCount = 0;
        if (this.decoderReinitializationState != 0) {
            c0();
            P();
            return;
        }
        this.inputBuffer = null;
        VideoDecoderOutputBuffer videoDecoderOutputBuffer = this.outputBuffer;
        if (videoDecoderOutputBuffer != null) {
            videoDecoderOutputBuffer.n();
            this.outputBuffer = null;
        }
        this.decoder.flush();
        this.decoderReceivedBuffers = false;
    }

    @CallSuper
    protected void V(FormatHolder formatHolder) throws ExoPlaybackException {
        this.waitingForFirstSampleInFormat = true;
        Format format = (Format) Assertions.e(formatHolder.format);
        j0(formatHolder.drmSession);
        Format format2 = this.inputFormat;
        this.inputFormat = format;
        Decoder<DecoderInputBuffer, ? extends VideoDecoderOutputBuffer, ? extends DecoderException> decoder = this.decoder;
        if (decoder == null) {
            P();
            this.eventDispatcher.p(this.inputFormat, null);
            return;
        }
        DecoderReuseEvaluation decoderReuseEvaluation = this.sourceDrmSession != this.decoderDrmSession ? new DecoderReuseEvaluation(decoder.getName(), format2, format, 0, 128) : D(decoder.getName(), format2, format);
        if (decoderReuseEvaluation.result == 0) {
            if (this.decoderReceivedBuffers) {
                this.decoderReinitializationState = 1;
            } else {
                c0();
                P();
            }
        }
        this.eventDispatcher.p(this.inputFormat, decoderReuseEvaluation);
    }

    @CallSuper
    protected void Z(long j6) {
        this.buffersInCodecCount--;
    }

    protected void a0(DecoderInputBuffer decoderInputBuffer) {
    }

    @CallSuper
    protected void c0() {
        this.inputBuffer = null;
        this.outputBuffer = null;
        this.decoderReinitializationState = 0;
        this.decoderReceivedBuffers = false;
        this.buffersInCodecCount = 0;
        Decoder<DecoderInputBuffer, ? extends VideoDecoderOutputBuffer, ? extends DecoderException> decoder = this.decoder;
        if (decoder != null) {
            this.decoderCounters.decoderReleaseCount++;
            decoder.release();
            this.eventDispatcher.l(this.decoder.getName());
            this.decoder = null;
        }
        f0(null);
    }

    protected abstract void e0(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface) throws DecoderException;

    protected abstract void g0(int i10);

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException {
        if (i10 == 1) {
            i0(obj);
        } else if (i10 == 7) {
            this.frameMetadataListener = (VideoFrameMetadataListener) obj;
        } else {
            super.handleMessage(i10, obj);
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void r() {
        this.inputFormat = null;
        F();
        E();
        try {
            j0(null);
            c0();
        } finally {
            this.eventDispatcher.m(this.decoderCounters);
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void t(long j6, boolean z6) throws ExoPlaybackException {
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        E();
        this.initialPositionUs = -9223372036854775807L;
        this.consecutiveDroppedFrameCount = 0;
        if (this.decoder != null) {
            K();
        }
        if (z6) {
            h0();
        } else {
            this.joiningDeadlineMs = -9223372036854775807L;
        }
        this.formatQueue.c();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void x() {
        this.droppedFrames = 0;
        this.droppedFrameAccumulationStartTimeMs = SystemClock.elapsedRealtime();
        this.lastRenderTimeUs = Util.K0(SystemClock.elapsedRealtime());
    }

    private boolean H(long j6, long j10) throws ExoPlaybackException, DecoderException {
        if (this.outputBuffer == null) {
            VideoDecoderOutputBuffer videoDecoderOutputBufferDequeueOutputBuffer = this.decoder.dequeueOutputBuffer();
            this.outputBuffer = videoDecoderOutputBufferDequeueOutputBuffer;
            if (videoDecoderOutputBufferDequeueOutputBuffer == null) {
                return false;
            }
            DecoderCounters decoderCounters = this.decoderCounters;
            int i10 = decoderCounters.skippedOutputBufferCount;
            int i11 = videoDecoderOutputBufferDequeueOutputBuffer.skippedOutputBufferCount;
            decoderCounters.skippedOutputBufferCount = i10 + i11;
            this.buffersInCodecCount -= i11;
        }
        if (!this.outputBuffer.h()) {
            boolean zB0 = b0(j6, j10);
            if (zB0) {
                Z(this.outputBuffer.timeUs);
                this.outputBuffer = null;
            }
            return zB0;
        }
        if (this.decoderReinitializationState == 2) {
            c0();
            P();
        } else {
            this.outputBuffer.n();
            this.outputBuffer = null;
            this.outputStreamEnded = true;
        }
        return false;
    }

    private boolean J() throws ExoPlaybackException, DecoderException {
        Decoder<DecoderInputBuffer, ? extends VideoDecoderOutputBuffer, ? extends DecoderException> decoder = this.decoder;
        if (decoder == null || this.decoderReinitializationState == 2 || this.inputStreamEnded) {
            return false;
        }
        if (this.inputBuffer == null) {
            DecoderInputBuffer decoderInputBufferDequeueInputBuffer = decoder.dequeueInputBuffer();
            this.inputBuffer = decoderInputBufferDequeueInputBuffer;
            if (decoderInputBufferDequeueInputBuffer == null) {
                return false;
            }
        }
        if (this.decoderReinitializationState == 1) {
            this.inputBuffer.l(4);
            this.decoder.queueInputBuffer(this.inputBuffer);
            this.inputBuffer = null;
            this.decoderReinitializationState = 2;
            return false;
        }
        FormatHolder formatHolderM = m();
        int iA = A(formatHolderM, this.inputBuffer, 0);
        if (iA == -5) {
            V(formatHolderM);
            return true;
        }
        if (iA != -4) {
            if (iA == -3) {
                return false;
            }
            throw new IllegalStateException();
        }
        if (this.inputBuffer.h()) {
            this.inputStreamEnded = true;
            this.decoder.queueInputBuffer(this.inputBuffer);
            this.inputBuffer = null;
            return false;
        }
        if (this.waitingForFirstSampleInFormat) {
            this.formatQueue.a(this.inputBuffer.timeUs, this.inputFormat);
            this.waitingForFirstSampleInFormat = false;
        }
        this.inputBuffer.p();
        DecoderInputBuffer decoderInputBuffer = this.inputBuffer;
        decoderInputBuffer.format = this.inputFormat;
        a0(decoderInputBuffer);
        this.decoder.queueInputBuffer(this.inputBuffer);
        this.buffersInCodecCount++;
        this.decoderReceivedBuffers = true;
        this.decoderCounters.queuedInputBufferCount++;
        this.inputBuffer = null;
        return true;
    }

    private void P() throws ExoPlaybackException {
        CryptoConfig cryptoConfigB;
        if (this.decoder != null) {
            return;
        }
        f0(this.sourceDrmSession);
        DrmSession drmSession = this.decoderDrmSession;
        if (drmSession != null) {
            cryptoConfigB = drmSession.b();
            if (cryptoConfigB == null && this.decoderDrmSession.getError() == null) {
                return;
            }
        } else {
            cryptoConfigB = null;
        }
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.decoder = G(this.inputFormat, cryptoConfigB);
            g0(this.outputMode);
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            this.eventDispatcher.k(this.decoder.getName(), jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
            this.decoderCounters.decoderInitCount++;
        } catch (DecoderException e) {
            Log.d(TAG, "Video codec error", e);
            this.eventDispatcher.C(e);
            throw j(e, this.inputFormat, 4001);
        } catch (OutOfMemoryError e2) {
            throw j(e2, this.inputFormat, 4001);
        }
    }

    private void Q() {
        if (this.droppedFrames > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.eventDispatcher.n(this.droppedFrames, jElapsedRealtime - this.droppedFrameAccumulationStartTimeMs);
            this.droppedFrames = 0;
            this.droppedFrameAccumulationStartTimeMs = jElapsedRealtime;
        }
    }

    private void S(int i10, int i11) {
        VideoSize videoSize = this.reportedVideoSize;
        if (videoSize != null && videoSize.width == i10 && videoSize.height == i11) {
            return;
        }
        VideoSize videoSize2 = new VideoSize(i10, i11);
        this.reportedVideoSize = videoSize2;
        this.eventDispatcher.D(videoSize2);
    }

    private void T() {
        if (this.renderedFirstFrameAfterReset) {
            this.eventDispatcher.A(this.output);
        }
    }

    private void U() {
        VideoSize videoSize = this.reportedVideoSize;
        if (videoSize != null) {
            this.eventDispatcher.D(videoSize);
        }
    }

    private boolean b0(long j6, long j10) throws ExoPlaybackException, DecoderException {
        if (this.initialPositionUs == -9223372036854775807L) {
            this.initialPositionUs = j6;
        }
        long j11 = this.outputBuffer.timeUs - j6;
        if (!L()) {
            if (!M(j11)) {
                return false;
            }
            n0(this.outputBuffer);
            return true;
        }
        long j12 = this.outputBuffer.timeUs - this.outputStreamOffsetUs;
        Format formatJ = this.formatQueue.j(j12);
        if (formatJ != null) {
            this.outputFormat = formatJ;
        }
        long jK0 = Util.K0(SystemClock.elapsedRealtime()) - this.lastRenderTimeUs;
        boolean z6 = getState() == 2;
        if (this.renderedFirstFrameAfterEnable ? this.renderedFirstFrameAfterReset : !z6 && !this.mayRenderFirstFrameAfterEnableIfNotStarted) {
            if (!z6 || !m0(j11, jK0)) {
                if (!z6 || j6 == this.initialPositionUs || (k0(j11, j10) && O(j6))) {
                    return false;
                }
                if (l0(j11, j10)) {
                    I(this.outputBuffer);
                    return true;
                }
                if (j11 < 30000) {
                    d0(this.outputBuffer, j12, this.outputFormat);
                    return true;
                }
                return false;
            }
        }
        d0(this.outputBuffer, j12, this.outputFormat);
        return true;
    }

    private void f0(@Nullable DrmSession drmSession) {
        androidx.media3.exoplayer.drm.i.a(this.decoderDrmSession, drmSession);
        this.decoderDrmSession = drmSession;
    }

    private void h0() {
        this.joiningDeadlineMs = this.allowedJoiningTimeMs > 0 ? SystemClock.elapsedRealtime() + this.allowedJoiningTimeMs : -9223372036854775807L;
    }

    private void j0(@Nullable DrmSession drmSession) {
        androidx.media3.exoplayer.drm.i.a(this.sourceDrmSession, drmSession);
        this.sourceDrmSession = drmSession;
    }

    protected DecoderReuseEvaluation D(String str, Format format, Format format2) {
        return new DecoderReuseEvaluation(str, format, format2, 0, 1);
    }

    protected void d0(VideoDecoderOutputBuffer videoDecoderOutputBuffer, long j6, Format format) throws DecoderException {
        VideoFrameMetadataListener videoFrameMetadataListener = this.frameMetadataListener;
        if (videoFrameMetadataListener != null) {
            videoFrameMetadataListener.e(j6, System.nanoTime(), format, null);
        }
        this.lastRenderTimeUs = Util.K0(SystemClock.elapsedRealtime());
        int i10 = videoDecoderOutputBuffer.mode;
        boolean z6 = i10 == 1 && this.outputSurface != null;
        boolean z10 = i10 == 0 && this.outputBufferRenderer != null;
        if (!z10 && !z6) {
            I(videoDecoderOutputBuffer);
            return;
        }
        S(videoDecoderOutputBuffer.width, videoDecoderOutputBuffer.height);
        if (z10) {
            this.outputBufferRenderer.setOutputBuffer(videoDecoderOutputBuffer);
        } else {
            e0(videoDecoderOutputBuffer, this.outputSurface);
        }
        this.consecutiveDroppedFrameCount = 0;
        this.decoderCounters.renderedOutputBufferCount++;
        R();
    }

    protected final void i0(@Nullable Object obj) {
        if (obj instanceof Surface) {
            this.outputSurface = (Surface) obj;
            this.outputBufferRenderer = null;
            this.outputMode = 1;
        } else if (obj instanceof VideoDecoderOutputBufferRenderer) {
            this.outputSurface = null;
            this.outputBufferRenderer = (VideoDecoderOutputBufferRenderer) obj;
            this.outputMode = 0;
        } else {
            this.outputSurface = null;
            this.outputBufferRenderer = null;
            this.outputMode = -1;
            obj = null;
        }
        if (this.output == obj) {
            if (obj != null) {
                Y();
                return;
            }
            return;
        }
        this.output = obj;
        if (obj == null) {
            X();
            return;
        }
        if (this.decoder != null) {
            g0(this.outputMode);
        }
        W();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        if (this.inputFormat != null && ((q() || this.outputBuffer != null) && (this.renderedFirstFrameAfterReset || !L()))) {
            this.joiningDeadlineMs = -9223372036854775807L;
            return true;
        }
        if (this.joiningDeadlineMs == -9223372036854775807L) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.joiningDeadlineMs) {
            return true;
        }
        this.joiningDeadlineMs = -9223372036854775807L;
        return false;
    }

    protected void n0(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        this.decoderCounters.skippedOutputBufferCount++;
        videoDecoderOutputBuffer.n();
    }

    protected void o0(int i10, int i11) {
        DecoderCounters decoderCounters = this.decoderCounters;
        decoderCounters.droppedInputBufferCount += i10;
        int i12 = i10 + i11;
        decoderCounters.droppedBufferCount += i12;
        this.droppedFrames += i12;
        int i13 = this.consecutiveDroppedFrameCount + i12;
        this.consecutiveDroppedFrameCount = i13;
        decoderCounters.maxConsecutiveDroppedBufferCount = Math.max(i13, decoderCounters.maxConsecutiveDroppedBufferCount);
        int i14 = this.maxDroppedFramesToNotify;
        if (i14 <= 0 || this.droppedFrames < i14) {
            return;
        }
        Q();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void render(long j6, long j10) throws ExoPlaybackException {
        if (this.outputStreamEnded) {
            return;
        }
        if (this.inputFormat == null) {
            FormatHolder formatHolderM = m();
            this.flagsOnlyBuffer.b();
            int iA = A(formatHolderM, this.flagsOnlyBuffer, 2);
            if (iA != -5) {
                if (iA == -4) {
                    Assertions.g(this.flagsOnlyBuffer.h());
                    this.inputStreamEnded = true;
                    this.outputStreamEnded = true;
                    return;
                }
                return;
            }
            V(formatHolderM);
        }
        P();
        if (this.decoder != null) {
            try {
                TraceUtil.a("drainAndFeed");
                while (H(j6, j10)) {
                }
                while (J()) {
                }
                TraceUtil.c();
                this.decoderCounters.c();
            } catch (DecoderException e) {
                Log.d(TAG, "Video codec error", e);
                this.eventDispatcher.C(e);
                throw j(e, this.inputFormat, 4003);
            }
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void s(boolean z6, boolean z10) throws ExoPlaybackException {
        DecoderCounters decoderCounters = new DecoderCounters();
        this.decoderCounters = decoderCounters;
        this.eventDispatcher.o(decoderCounters);
        this.mayRenderFirstFrameAfterEnableIfNotStarted = z10;
        this.renderedFirstFrameAfterEnable = false;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void z(Format[] formatArr, long j6, long j10) throws ExoPlaybackException {
        this.outputStreamOffsetUs = j10;
        super.z(formatArr, j6, j10);
    }

    private void W() {
        U();
        E();
        if (getState() == 2) {
            h0();
        }
    }

    private void X() {
        F();
        E();
    }

    private void Y() {
        U();
        T();
    }

    protected boolean O(long j6) throws ExoPlaybackException {
        int iC = C(j6);
        if (iC == 0) {
            return false;
        }
        this.decoderCounters.droppedToKeyframeCount++;
        o0(iC, this.buffersInCodecCount);
        K();
        return true;
    }

    protected boolean k0(long j6, long j10) {
        return N(j6);
    }

    protected boolean l0(long j6, long j10) {
        return M(j6);
    }

    protected boolean m0(long j6, long j10) {
        if (M(j6) && j10 > 100000) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void y() {
        this.joiningDeadlineMs = -9223372036854775807L;
        Q();
    }
}
