package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.CallSuper;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.decoder.Decoder;
import androidx.media3.decoder.DecoderException;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.SimpleDecoderOutputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.MediaClock;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.h2;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public abstract class DecoderAudioRenderer<T extends Decoder<DecoderInputBuffer, ? extends SimpleDecoderOutputBuffer, ? extends DecoderException>> extends BaseRenderer implements MediaClock {
    private static final int MAX_PENDING_OUTPUT_STREAM_OFFSET_COUNT = 10;
    private static final int REINITIALIZATION_STATE_NONE = 0;
    private static final int REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM = 1;
    private static final int REINITIALIZATION_STATE_WAIT_END_OF_STREAM = 2;
    private static final String TAG = "DecoderAudioRenderer";
    private boolean allowFirstBufferPositionDiscontinuity;
    private boolean allowPositionDiscontinuity;
    private final AudioSink audioSink;
    private boolean audioTrackNeedsConfigure;
    private long currentPositionUs;

    @Nullable
    private T decoder;
    private DecoderCounters decoderCounters;

    @Nullable
    private DrmSession decoderDrmSession;
    private boolean decoderReceivedBuffers;
    private int decoderReinitializationState;
    private int encoderDelay;
    private int encoderPadding;
    private final AudioRendererEventListener.EventDispatcher eventDispatcher;
    private boolean experimentalKeepAudioTrackOnSeek;
    private boolean firstStreamSampleRead;
    private final DecoderInputBuffer flagsOnlyBuffer;

    @Nullable
    private DecoderInputBuffer inputBuffer;
    private Format inputFormat;
    private boolean inputStreamEnded;

    @Nullable
    private SimpleDecoderOutputBuffer outputBuffer;
    private boolean outputStreamEnded;
    private long outputStreamOffsetUs;
    private int pendingOutputStreamOffsetCount;
    private final long[] pendingOutputStreamOffsetsUs;

    @Nullable
    private DrmSession sourceDrmSession;

    @RequiresApi
    private static final class Api23 {
        @DoNotInline
        public static void a(AudioSink audioSink, @Nullable Object obj) {
            audioSink.setPreferredDevice((AudioDeviceInfo) obj);
        }

        private Api23() {
        }
    }

    private final class AudioSinkListener implements AudioSink.Listener {
        private AudioSinkListener() {
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public /* synthetic */ void c() {
            n.c(this);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public /* synthetic */ void d() {
            n.b(this);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public /* synthetic */ void e() {
            n.a(this);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void a(Exception exc) {
            Log.d(DecoderAudioRenderer.TAG, "Audio sink error", exc);
            DecoderAudioRenderer.this.eventDispatcher.l(exc);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void b(long j6) {
            DecoderAudioRenderer.this.eventDispatcher.B(j6);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void onPositionDiscontinuity() {
            DecoderAudioRenderer.this.M();
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void onSkipSilenceEnabledChanged(boolean z6) {
            DecoderAudioRenderer.this.eventDispatcher.C(z6);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void onUnderrun(int i10, long j6, long j10) {
            DecoderAudioRenderer.this.eventDispatcher.D(i10, j6, j10);
        }
    }

    public DecoderAudioRenderer() {
        this((Handler) null, (AudioRendererEventListener) null, new AudioProcessor[0]);
    }

    private void O() throws AudioSink.WriteException {
        this.outputStreamEnded = true;
        this.audioSink.playToEndOfStream();
    }

    private void Q() {
        this.inputBuffer = null;
        this.outputBuffer = null;
        this.decoderReinitializationState = 0;
        this.decoderReceivedBuffers = false;
        T t5 = this.decoder;
        if (t5 != null) {
            this.decoderCounters.decoderReleaseCount++;
            t5.release();
            this.eventDispatcher.n(this.decoder.getName());
            this.decoder = null;
        }
        R(null);
    }

    protected abstract T F(Format format, @Nullable CryptoConfig cryptoConfig) throws DecoderException;

    protected abstract Format J(T t5);

    @CallSuper
    protected void M() {
        this.allowPositionDiscontinuity = true;
    }

    protected abstract int U(Format format);

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    @Nullable
    public MediaClock getMediaClock() {
        return this;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException {
        if (i10 == 2) {
            this.audioSink.setVolume(((Float) obj).floatValue());
            return;
        }
        if (i10 == 3) {
            this.audioSink.h((AudioAttributes) obj);
            return;
        }
        if (i10 == 6) {
            this.audioSink.l((AuxEffectInfo) obj);
            return;
        }
        if (i10 == 12) {
            if (Util.SDK_INT >= 23) {
                Api23.a(this.audioSink, obj);
            }
        } else if (i10 == 9) {
            this.audioSink.g(((Boolean) obj).booleanValue());
        } else if (i10 != 10) {
            super.handleMessage(i10, obj);
        } else {
            this.audioSink.setAudioSessionId(((Integer) obj).intValue());
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void r() {
        this.inputFormat = null;
        this.audioTrackNeedsConfigure = true;
        S(-9223372036854775807L);
        try {
            T(null);
            Q();
            this.audioSink.reset();
        } finally {
            this.eventDispatcher.o(this.decoderCounters);
        }
    }

    public DecoderAudioRenderer(@Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener, AudioProcessor... audioProcessorArr) {
        this(handler, audioRendererEventListener, null, audioProcessorArr);
    }

    private boolean G() throws ExoPlaybackException, DecoderException, AudioSink.WriteException, AudioSink.InitializationException, AudioSink.ConfigurationException {
        if (this.outputBuffer == null) {
            SimpleDecoderOutputBuffer simpleDecoderOutputBuffer = (SimpleDecoderOutputBuffer) this.decoder.dequeueOutputBuffer();
            this.outputBuffer = simpleDecoderOutputBuffer;
            if (simpleDecoderOutputBuffer == null) {
                return false;
            }
            int i10 = simpleDecoderOutputBuffer.skippedOutputBufferCount;
            if (i10 > 0) {
                this.decoderCounters.skippedOutputBufferCount += i10;
                this.audioSink.handleDiscontinuity();
            }
            if (this.outputBuffer.i()) {
                P();
            }
        }
        if (this.outputBuffer.h()) {
            if (this.decoderReinitializationState == 2) {
                Q();
                K();
                this.audioTrackNeedsConfigure = true;
            } else {
                this.outputBuffer.n();
                this.outputBuffer = null;
                try {
                    O();
                } catch (AudioSink.WriteException e) {
                    throw k(e, e.format, e.isRecoverable, 5002);
                }
            }
            return false;
        }
        if (this.audioTrackNeedsConfigure) {
            this.audioSink.j(J(this.decoder).b().P(this.encoderDelay).Q(this.encoderPadding).G(), 0, null);
            this.audioTrackNeedsConfigure = false;
        }
        AudioSink audioSink = this.audioSink;
        SimpleDecoderOutputBuffer simpleDecoderOutputBuffer2 = this.outputBuffer;
        if (!audioSink.e(simpleDecoderOutputBuffer2.data, simpleDecoderOutputBuffer2.timeUs, 1)) {
            return false;
        }
        this.decoderCounters.renderedOutputBufferCount++;
        this.outputBuffer.n();
        this.outputBuffer = null;
        return true;
    }

    private boolean H() throws ExoPlaybackException, DecoderException {
        T t5 = this.decoder;
        if (t5 == null || this.decoderReinitializationState == 2 || this.inputStreamEnded) {
            return false;
        }
        if (this.inputBuffer == null) {
            DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) t5.dequeueInputBuffer();
            this.inputBuffer = decoderInputBuffer;
            if (decoderInputBuffer == null) {
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
            L(formatHolderM);
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
        if (!this.firstStreamSampleRead) {
            this.firstStreamSampleRead = true;
            this.inputBuffer.a(134217728);
        }
        this.inputBuffer.p();
        DecoderInputBuffer decoderInputBuffer2 = this.inputBuffer;
        decoderInputBuffer2.format = this.inputFormat;
        N(decoderInputBuffer2);
        this.decoder.queueInputBuffer(this.inputBuffer);
        this.decoderReceivedBuffers = true;
        this.decoderCounters.queuedInputBufferCount++;
        this.inputBuffer = null;
        return true;
    }

    private void I() throws ExoPlaybackException {
        if (this.decoderReinitializationState != 0) {
            Q();
            K();
            return;
        }
        this.inputBuffer = null;
        SimpleDecoderOutputBuffer simpleDecoderOutputBuffer = this.outputBuffer;
        if (simpleDecoderOutputBuffer != null) {
            simpleDecoderOutputBuffer.n();
            this.outputBuffer = null;
        }
        this.decoder.flush();
        this.decoderReceivedBuffers = false;
    }

    private void K() throws ExoPlaybackException {
        CryptoConfig cryptoConfigB;
        if (this.decoder != null) {
            return;
        }
        R(this.sourceDrmSession);
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
            TraceUtil.a("createAudioDecoder");
            this.decoder = (T) F(this.inputFormat, cryptoConfigB);
            TraceUtil.c();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            this.eventDispatcher.m(this.decoder.getName(), jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
            this.decoderCounters.decoderInitCount++;
        } catch (DecoderException e) {
            Log.d(TAG, "Audio codec error", e);
            this.eventDispatcher.k(e);
            throw j(e, this.inputFormat, 4001);
        } catch (OutOfMemoryError e2) {
            throw j(e2, this.inputFormat, 4001);
        }
    }

    private void L(FormatHolder formatHolder) throws ExoPlaybackException {
        Format format = (Format) Assertions.e(formatHolder.format);
        T(formatHolder.drmSession);
        Format format2 = this.inputFormat;
        this.inputFormat = format;
        this.encoderDelay = format.encoderDelay;
        this.encoderPadding = format.encoderPadding;
        T t5 = this.decoder;
        if (t5 == null) {
            K();
            this.eventDispatcher.q(this.inputFormat, null);
            return;
        }
        DecoderReuseEvaluation decoderReuseEvaluation = this.sourceDrmSession != this.decoderDrmSession ? new DecoderReuseEvaluation(t5.getName(), format2, format, 0, 128) : E(t5.getName(), format2, format);
        if (decoderReuseEvaluation.result == 0) {
            if (this.decoderReceivedBuffers) {
                this.decoderReinitializationState = 1;
            } else {
                Q();
                K();
                this.audioTrackNeedsConfigure = true;
            }
        }
        this.eventDispatcher.q(this.inputFormat, decoderReuseEvaluation);
    }

    private void P() {
        this.audioSink.handleDiscontinuity();
        if (this.pendingOutputStreamOffsetCount != 0) {
            S(this.pendingOutputStreamOffsetsUs[0]);
            int i10 = this.pendingOutputStreamOffsetCount - 1;
            this.pendingOutputStreamOffsetCount = i10;
            long[] jArr = this.pendingOutputStreamOffsetsUs;
            System.arraycopy(jArr, 1, jArr, 0, i10);
        }
    }

    private void R(@Nullable DrmSession drmSession) {
        androidx.media3.exoplayer.drm.i.a(this.decoderDrmSession, drmSession);
        this.decoderDrmSession = drmSession;
    }

    private void S(long j6) {
        this.outputStreamOffsetUs = j6;
        if (j6 != -9223372036854775807L) {
            this.audioSink.f(j6);
        }
    }

    private void T(@Nullable DrmSession drmSession) {
        androidx.media3.exoplayer.drm.i.a(this.sourceDrmSession, drmSession);
        this.sourceDrmSession = drmSession;
    }

    private void V() {
        long currentPositionUs = this.audioSink.getCurrentPositionUs(isEnded());
        if (currentPositionUs != Long.MIN_VALUE) {
            if (!this.allowPositionDiscontinuity) {
                currentPositionUs = Math.max(this.currentPositionUs, currentPositionUs);
            }
            this.currentPositionUs = currentPositionUs;
            this.allowPositionDiscontinuity = false;
        }
    }

    protected DecoderReuseEvaluation E(String str, Format format, Format format2) {
        return new DecoderReuseEvaluation(str, format, format2, 0, 1);
    }

    protected void N(DecoderInputBuffer decoderInputBuffer) {
        if (!this.allowFirstBufferPositionDiscontinuity || decoderInputBuffer.f()) {
            return;
        }
        if (Math.abs(decoderInputBuffer.timeUs - this.currentPositionUs) > 500000) {
            this.currentPositionUs = decoderInputBuffer.timeUs;
        }
        this.allowFirstBufferPositionDiscontinuity = false;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final int a(Format format) {
        if (!MimeTypes.o(format.sampleMimeType)) {
            return h2.c(0);
        }
        int iU = U(format);
        if (iU <= 2) {
            return h2.c(iU);
        }
        return h2.d(iU, 8, Util.SDK_INT >= 21 ? 32 : 0);
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public void b(PlaybackParameters playbackParameters) {
        this.audioSink.b(playbackParameters);
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public PlaybackParameters getPlaybackParameters() {
        return this.audioSink.getPlaybackParameters();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded && this.audioSink.isEnded();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        return this.audioSink.hasPendingData() || (this.inputFormat != null && (q() || this.outputBuffer != null));
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void render(long j6, long j10) throws ExoPlaybackException {
        if (this.outputStreamEnded) {
            try {
                this.audioSink.playToEndOfStream();
                return;
            } catch (AudioSink.WriteException e) {
                throw k(e, e.format, e.isRecoverable, 5002);
            }
        }
        if (this.inputFormat == null) {
            FormatHolder formatHolderM = m();
            this.flagsOnlyBuffer.b();
            int iA = A(formatHolderM, this.flagsOnlyBuffer, 2);
            if (iA != -5) {
                if (iA == -4) {
                    Assertions.g(this.flagsOnlyBuffer.h());
                    this.inputStreamEnded = true;
                    try {
                        O();
                        return;
                    } catch (AudioSink.WriteException e2) {
                        throw j(e2, null, 5002);
                    }
                }
                return;
            }
            L(formatHolderM);
        }
        K();
        if (this.decoder != null) {
            try {
                TraceUtil.a("drainAndFeed");
                while (G()) {
                }
                while (H()) {
                }
                TraceUtil.c();
                this.decoderCounters.c();
            } catch (DecoderException e6) {
                Log.d(TAG, "Audio codec error", e6);
                this.eventDispatcher.k(e6);
                throw j(e6, this.inputFormat, 4003);
            } catch (AudioSink.ConfigurationException e7) {
                throw j(e7, e7.format, 5001);
            } catch (AudioSink.InitializationException e10) {
                throw k(e10, e10.format, e10.isRecoverable, 5001);
            } catch (AudioSink.WriteException e11) {
                throw k(e11, e11.format, e11.isRecoverable, 5002);
            }
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void s(boolean z6, boolean z10) throws ExoPlaybackException {
        DecoderCounters decoderCounters = new DecoderCounters();
        this.decoderCounters = decoderCounters;
        this.eventDispatcher.p(decoderCounters);
        if (l().tunneling) {
            this.audioSink.d();
        } else {
            this.audioSink.disableTunneling();
        }
        this.audioSink.m(o());
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void t(long j6, boolean z6) throws ExoPlaybackException {
        if (this.experimentalKeepAudioTrackOnSeek) {
            this.audioSink.c();
        } else {
            this.audioSink.flush();
        }
        this.currentPositionUs = j6;
        this.allowFirstBufferPositionDiscontinuity = true;
        this.allowPositionDiscontinuity = true;
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        if (this.decoder != null) {
            I();
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void x() {
        this.audioSink.play();
    }

    public DecoderAudioRenderer(@Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener, AudioCapabilities audioCapabilities, AudioProcessor... audioProcessorArr) {
        this(handler, audioRendererEventListener, new DefaultAudioSink.Builder().h((AudioCapabilities) com.google.common.base.i.a(audioCapabilities, AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES)).j(audioProcessorArr).g());
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public long getPositionUs() {
        if (getState() == 2) {
            V();
        }
        return this.currentPositionUs;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void y() {
        V();
        this.audioSink.pause();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void z(Format[] formatArr, long j6, long j10) throws ExoPlaybackException {
        super.z(formatArr, j6, j10);
        this.firstStreamSampleRead = false;
        if (this.outputStreamOffsetUs == -9223372036854775807L) {
            S(j10);
            return;
        }
        int i10 = this.pendingOutputStreamOffsetCount;
        if (i10 == this.pendingOutputStreamOffsetsUs.length) {
            Log.i(TAG, "Too many stream changes, so dropping offset: " + this.pendingOutputStreamOffsetsUs[this.pendingOutputStreamOffsetCount - 1]);
        } else {
            this.pendingOutputStreamOffsetCount = i10 + 1;
        }
        this.pendingOutputStreamOffsetsUs[this.pendingOutputStreamOffsetCount - 1] = j10;
    }

    public DecoderAudioRenderer(@Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener, AudioSink audioSink) {
        super(1);
        this.eventDispatcher = new AudioRendererEventListener.EventDispatcher(handler, audioRendererEventListener);
        this.audioSink = audioSink;
        audioSink.i(new AudioSinkListener());
        this.flagsOnlyBuffer = DecoderInputBuffer.r();
        this.decoderReinitializationState = 0;
        this.audioTrackNeedsConfigure = true;
        S(-9223372036854775807L);
        this.pendingOutputStreamOffsetsUs = new long[10];
    }
}
