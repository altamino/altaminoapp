package androidx.media3.exoplayer.mediacodec;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.CallSuper;
import androidx.annotation.CheckResult;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.OggOpusAudioPacketizer;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.FrameworkCryptoConfig;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public abstract class MediaCodecRenderer extends BaseRenderer {
    private static final byte[] ADAPTATION_WORKAROUND_BUFFER = {0, 0, 1, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 66, -64, com.google.common.base.c.VT, -38, 37, -112, 0, 0, 1, 104, -50, com.google.common.base.c.SI, 19, 32, 0, 0, 1, 101, -120, -124, com.google.common.base.c.CR, -50, 113, com.google.common.base.c.CAN, -96, 0, 47, -65, com.google.common.base.c.FS, TarConstants.LF_LINK, -61, 39, 93, TarConstants.LF_PAX_EXTENDED_HEADER_LC};
    private static final int ADAPTATION_WORKAROUND_MODE_ALWAYS = 2;
    private static final int ADAPTATION_WORKAROUND_MODE_NEVER = 0;
    private static final int ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION = 1;
    private static final int ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT = 32;
    protected static final float CODEC_OPERATING_RATE_UNSET = -1.0f;
    private static final int DRAIN_ACTION_FLUSH = 1;
    private static final int DRAIN_ACTION_FLUSH_AND_UPDATE_DRM_SESSION = 2;
    private static final int DRAIN_ACTION_NONE = 0;
    private static final int DRAIN_ACTION_REINITIALIZE = 3;
    private static final int DRAIN_STATE_NONE = 0;
    private static final int DRAIN_STATE_SIGNAL_END_OF_STREAM = 1;
    private static final int DRAIN_STATE_WAIT_END_OF_STREAM = 2;
    private static final long MAX_CODEC_HOTSWAP_TIME_MS = 1000;
    private static final int RECONFIGURATION_STATE_NONE = 0;
    private static final int RECONFIGURATION_STATE_QUEUE_PENDING = 2;
    private static final int RECONFIGURATION_STATE_WRITE_PENDING = 1;
    private static final String TAG = "MediaCodecRenderer";
    private final float assumedMinimumCodecOperatingRate;

    @Nullable
    private ArrayDeque<MediaCodecInfo> availableCodecInfos;
    private final DecoderInputBuffer buffer;
    private final BatchBuffer bypassBatchBuffer;
    private boolean bypassDrainAndReinitialize;
    private boolean bypassEnabled;
    private final DecoderInputBuffer bypassSampleBuffer;
    private boolean bypassSampleBufferPending;

    @Nullable
    private C2Mp3TimestampTracker c2Mp3TimestampTracker;

    @Nullable
    private MediaCodecAdapter codec;
    private int codecAdaptationWorkaroundMode;
    private final MediaCodecAdapter.Factory codecAdapterFactory;
    private int codecDrainAction;
    private int codecDrainState;

    @Nullable
    private DrmSession codecDrmSession;
    private boolean codecHasOutputMediaFormat;
    private long codecHotswapDeadlineMs;

    @Nullable
    private MediaCodecInfo codecInfo;

    @Nullable
    private Format codecInputFormat;
    private boolean codecNeedsAdaptationWorkaroundBuffer;
    private boolean codecNeedsDiscardToSpsWorkaround;
    private boolean codecNeedsEosBufferTimestampWorkaround;
    private boolean codecNeedsEosFlushWorkaround;
    private boolean codecNeedsEosOutputExceptionWorkaround;
    private boolean codecNeedsEosPropagation;
    private boolean codecNeedsFlushWorkaround;
    private boolean codecNeedsMonoChannelCountWorkaround;
    private boolean codecNeedsSosFlushWorkaround;
    private float codecOperatingRate;

    @Nullable
    private MediaFormat codecOutputMediaFormat;
    private boolean codecOutputMediaFormatChanged;
    private boolean codecReceivedBuffers;
    private boolean codecReceivedEos;
    private int codecReconfigurationState;
    private boolean codecReconfigured;
    private float currentPlaybackSpeed;
    private final ArrayList<Long> decodeOnlyPresentationTimestamps;
    protected DecoderCounters decoderCounters;
    private final boolean enableDecoderFallback;

    @Nullable
    private Format inputFormat;
    private int inputIndex;
    private boolean inputStreamEnded;
    private boolean isDecodeOnlyOutputBuffer;
    private boolean isLastOutputBuffer;
    private long largestQueuedPresentationTimeUs;
    private long lastBufferInStreamPresentationTimeUs;
    private long lastProcessedOutputBufferTimeUs;
    private final MediaCodecSelector mediaCodecSelector;

    @Nullable
    private MediaCrypto mediaCrypto;
    private boolean mediaCryptoRequiresSecureDecoder;
    private boolean needToNotifyOutputFormatChangeAfterStreamChange;
    private final DecoderInputBuffer noDataBuffer;
    private final OggOpusAudioPacketizer oggOpusAudioPacketizer;

    @Nullable
    private ByteBuffer outputBuffer;
    private final MediaCodec.BufferInfo outputBufferInfo;

    @Nullable
    private Format outputFormat;
    private int outputIndex;
    private boolean outputStreamEnded;
    private OutputStreamInfo outputStreamInfo;
    private boolean pendingOutputEndOfStream;
    private final ArrayDeque<OutputStreamInfo> pendingOutputStreamChanges;

    @Nullable
    private ExoPlaybackException pendingPlaybackException;

    @Nullable
    private DecoderInitializationException preferredDecoderInitializationException;
    private long renderTimeLimitMs;
    private boolean shouldSkipAdaptationWorkaroundOutputBuffer;

    @Nullable
    private DrmSession sourceDrmSession;
    private float targetPlaybackSpeed;
    private boolean waitingForFirstSampleInFormat;

    public static class DecoderInitializationException extends Exception {
        private static final int CUSTOM_ERROR_CODE_BASE = -50000;
        private static final int DECODER_QUERY_ERROR = -49998;
        private static final int NO_SUITABLE_DECODER_ERROR = -49999;

        @Nullable
        public final MediaCodecInfo codecInfo;

        @Nullable
        public final String diagnosticInfo;

        @Nullable
        public final DecoderInitializationException fallbackDecoderInitializationException;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        public DecoderInitializationException(Format format, @Nullable Throwable th, boolean z6, int i10) {
            this("Decoder init failed: [" + i10 + "], " + format, th, format.sampleMimeType, z6, null, b(i10), null);
        }

        private static String b(int i10) {
            return "androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_" + (i10 < 0 ? "neg_" : "") + Math.abs(i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @CheckResult
        public DecoderInitializationException c(DecoderInitializationException decoderInitializationException) {
            return new DecoderInitializationException(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.codecInfo, this.diagnosticInfo, decoderInitializationException);
        }

        @Nullable
        @RequiresApi
        private static String d(@Nullable Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }

        public DecoderInitializationException(Format format, @Nullable Throwable th, boolean z6, MediaCodecInfo mediaCodecInfo) {
            this("Decoder init failed: " + mediaCodecInfo.name + ", " + format, th, format.sampleMimeType, z6, mediaCodecInfo, Util.SDK_INT >= 21 ? d(th) : null, null);
        }

        private DecoderInitializationException(String str, @Nullable Throwable th, String str2, boolean z6, @Nullable MediaCodecInfo mediaCodecInfo, @Nullable String str3, @Nullable DecoderInitializationException decoderInitializationException) {
            super(str, th);
            this.mimeType = str2;
            this.secureDecoderRequired = z6;
            this.codecInfo = mediaCodecInfo;
            this.diagnosticInfo = str3;
            this.fallbackDecoderInitializationException = decoderInitializationException;
        }
    }

    private void H0() {
        this.codecHasOutputMediaFormat = true;
        MediaFormat mediaFormatF = this.codec.f();
        if (this.codecAdaptationWorkaroundMode != 0 && mediaFormatF.getInteger("width") == 32 && mediaFormatF.getInteger("height") == 32) {
            this.shouldSkipAdaptationWorkaroundOutputBuffer = true;
            return;
        }
        if (this.codecNeedsMonoChannelCountWorkaround) {
            mediaFormatF.setInteger("channel-count", 1);
        }
        this.codecOutputMediaFormat = mediaFormatF;
        this.codecOutputMediaFormatChanged = true;
    }

    private void O0() {
        this.inputIndex = -1;
        this.buffer.data = null;
    }

    private void P0() {
        this.outputIndex = -1;
        this.outputBuffer = null;
    }

    private void Q() {
        this.bypassDrainAndReinitialize = false;
        this.bypassBatchBuffer.b();
        this.bypassSampleBuffer.b();
        this.bypassSampleBufferPending = false;
        this.bypassEnabled = false;
        this.oggOpusAudioPacketizer.d();
    }

    private boolean R() {
        if (this.codecReceivedBuffers) {
            this.codecDrainState = 1;
            if (this.codecNeedsFlushWorkaround || this.codecNeedsEosFlushWorkaround) {
                this.codecDrainAction = 3;
                return false;
            }
            this.codecDrainAction = 1;
        }
        return true;
    }

    private boolean V(MediaCodecInfo mediaCodecInfo, Format format, @Nullable DrmSession drmSession, @Nullable DrmSession drmSession2) throws ExoPlaybackException {
        CryptoConfig cryptoConfigB;
        CryptoConfig cryptoConfigB2;
        if (drmSession == drmSession2) {
            return false;
        }
        if (drmSession2 != null && drmSession != null && (cryptoConfigB = drmSession2.b()) != null && (cryptoConfigB2 = drmSession.b()) != null && cryptoConfigB.getClass().equals(cryptoConfigB2.getClass())) {
            if (!(cryptoConfigB instanceof FrameworkCryptoConfig)) {
                return false;
            }
            FrameworkCryptoConfig frameworkCryptoConfig = (FrameworkCryptoConfig) cryptoConfigB;
            if (!drmSession2.c().equals(drmSession.c()) || Util.SDK_INT < 23) {
                return true;
            }
            UUID uuid = C.PLAYREADY_UUID;
            if (!uuid.equals(drmSession.c()) && !uuid.equals(drmSession2.c())) {
                return !mediaCodecInfo.secure && (frameworkCryptoConfig.forceAllowInsecureDecoderComponents ? false : drmSession2.d(format.sampleMimeType));
            }
        }
        return true;
    }

    private boolean l0() {
        return this.outputIndex >= 0;
    }

    protected void A0(long j6) {
    }

    protected void C0() {
    }

    protected void D0(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
    }

    protected void E0(Format format) throws ExoPlaybackException {
    }

    protected abstract boolean G0(long j6, long j10, @Nullable MediaCodecAdapter mediaCodecAdapter, @Nullable ByteBuffer byteBuffer, int i10, int i11, int i12, long j11, boolean z6, boolean z10, Format format) throws ExoPlaybackException;

    /* JADX WARN: Multi-variable type inference failed */
    protected void K0() {
        try {
            MediaCodecAdapter mediaCodecAdapter = this.codec;
            if (mediaCodecAdapter != null) {
                mediaCodecAdapter.release();
                this.decoderCounters.decoderReleaseCount++;
                x0(this.codecInfo.name);
            }
            this.codec = null;
            try {
                MediaCrypto mediaCrypto = this.mediaCrypto;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
                this.mediaCrypto = null;
                Q0(null);
                N0();
            }
        } catch (Throwable th) {
            this.codec = null;
            try {
                MediaCrypto mediaCrypto2 = this.mediaCrypto;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
                this.mediaCrypto = null;
                Q0(null);
                N0();
            }
        }
    }

    protected void L0() throws ExoPlaybackException {
    }

    protected final void S0() {
        this.pendingOutputEndOfStream = true;
    }

    protected final void T0(ExoPlaybackException exoPlaybackException) {
        this.pendingPlaybackException = exoPlaybackException;
    }

    protected boolean W0(MediaCodecInfo mediaCodecInfo) {
        return true;
    }

    protected boolean X0() {
        return false;
    }

    protected boolean Y0(Format format) {
        return false;
    }

    protected abstract int Z0(MediaCodecSelector mediaCodecSelector, Format format) throws MediaCodecUtil.DecoderQueryException;

    @Nullable
    protected final MediaCodecAdapter b0() {
        return this.codec;
    }

    @Nullable
    protected final MediaCodecInfo c0() {
        return this.codecInfo;
    }

    protected boolean d0() {
        return false;
    }

    protected float e0(float f, Format format, Format[] formatArr) {
        return CODEC_OPERATING_RATE_UNSET;
    }

    @Nullable
    protected final MediaFormat f0() {
        return this.codecOutputMediaFormat;
    }

    protected abstract List<MediaCodecInfo> g0(MediaCodecSelector mediaCodecSelector, Format format, boolean z6) throws MediaCodecUtil.DecoderQueryException;

    protected abstract MediaCodecAdapter.Configuration h0(MediaCodecInfo mediaCodecInfo, Format format, @Nullable MediaCrypto mediaCrypto, float f);

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    protected float j0() {
        return this.currentPlaybackSpeed;
    }

    protected void k0(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void r() {
        this.inputFormat = null;
        R0(OutputStreamInfo.UNSET);
        this.pendingOutputStreamChanges.clear();
        Z();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.RendererCapabilities
    public final int supportsMixedMimeTypeAdaptation() {
        return 8;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void t(long j6, boolean z6) throws ExoPlaybackException {
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        this.pendingOutputEndOfStream = false;
        if (this.bypassEnabled) {
            this.bypassBatchBuffer.b();
            this.bypassSampleBuffer.b();
            this.bypassSampleBufferPending = false;
            this.oggOpusAudioPacketizer.d();
        } else {
            Y();
        }
        if (this.outputStreamInfo.formatQueue.l() > 0) {
            this.waitingForFirstSampleInFormat = true;
        }
        this.outputStreamInfo.formatQueue.c();
        this.pendingOutputStreamChanges.clear();
    }

    protected void v0(Exception exc) {
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void w() {
        try {
            Q();
            K0();
        } finally {
            U0(null);
        }
    }

    protected void w0(String str, MediaCodecAdapter.Configuration configuration, long j6, long j10) {
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void x() {
    }

    protected void x0(String str) {
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void y() {
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0077  */
    /* JADX WARN: Code duplicated, block: B:39:0x0083  */
    @Nullable
    @CallSuper
    protected DecoderReuseEvaluation y0(FormatHolder formatHolder) throws ExoPlaybackException {
        int i10;
        boolean z6 = true;
        this.waitingForFirstSampleInFormat = true;
        Format format = (Format) Assertions.e(formatHolder.format);
        if (format.sampleMimeType == null) {
            throw j(new IllegalArgumentException(), format, 4005);
        }
        U0(formatHolder.drmSession);
        this.inputFormat = format;
        if (this.bypassEnabled) {
            this.bypassDrainAndReinitialize = true;
            return null;
        }
        MediaCodecAdapter mediaCodecAdapter = this.codec;
        if (mediaCodecAdapter == null) {
            this.availableCodecInfos = null;
            t0();
            return null;
        }
        MediaCodecInfo mediaCodecInfo = this.codecInfo;
        Format format2 = this.codecInputFormat;
        if (V(mediaCodecInfo, format, this.codecDrmSession, this.sourceDrmSession)) {
            S();
            return new DecoderReuseEvaluation(mediaCodecInfo.name, format2, format, 0, 128);
        }
        boolean z10 = this.sourceDrmSession != this.codecDrmSession;
        Assertions.g(!z10 || Util.SDK_INT >= 23);
        DecoderReuseEvaluation decoderReuseEvaluationF = F(mediaCodecInfo, format2, format);
        int i11 = decoderReuseEvaluationF.result;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        throw new IllegalStateException();
                    }
                    if (b1(format)) {
                        this.codecInputFormat = format;
                        if (z10 && !T()) {
                            i10 = 2;
                        }
                    } else {
                        i10 = 16;
                    }
                } else if (b1(format)) {
                    this.codecReconfigured = true;
                    this.codecReconfigurationState = 1;
                    int i12 = this.codecAdaptationWorkaroundMode;
                    if (i12 != 2 && (i12 != 1 || format.width != format2.width || format.height != format2.height)) {
                        z6 = false;
                    }
                    this.codecNeedsAdaptationWorkaroundBuffer = z6;
                    this.codecInputFormat = format;
                    if (z10 && !T()) {
                        i10 = 2;
                    }
                } else {
                    i10 = 16;
                }
            } else if (b1(format)) {
                this.codecInputFormat = format;
                if (!z10 ? !R() : !T()) {
                    i10 = 2;
                }
            } else {
                i10 = 16;
            }
            return (decoderReuseEvaluationF.result != 0 || (this.codec == mediaCodecAdapter && this.codecDrainAction != 3)) ? decoderReuseEvaluationF : new DecoderReuseEvaluation(mediaCodecInfo.name, format2, format, 0, i10);
        }
        S();
        i10 = 0;
        if (decoderReuseEvaluationF.result != 0) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
    
        if (r5 >= r1) goto L13;
     */
    @Override // androidx.media3.exoplayer.BaseRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void z(Format[] formatArr, long j6, long j10) throws ExoPlaybackException {
        if (this.outputStreamInfo.streamOffsetUs == -9223372036854775807L) {
            R0(new OutputStreamInfo(-9223372036854775807L, j6, j10));
            return;
        }
        if (this.pendingOutputStreamChanges.isEmpty()) {
            long j11 = this.largestQueuedPresentationTimeUs;
            if (j11 != -9223372036854775807L) {
                long j12 = this.lastProcessedOutputBufferTimeUs;
                if (j12 != -9223372036854775807L) {
                }
            }
            R0(new OutputStreamInfo(-9223372036854775807L, j6, j10));
            if (this.outputStreamInfo.streamOffsetUs != -9223372036854775807L) {
                C0();
                return;
            }
            return;
        }
        this.pendingOutputStreamChanges.add(new OutputStreamInfo(this.largestQueuedPresentationTimeUs, j6, j10));
    }

    protected void z0(Format format, @Nullable MediaFormat mediaFormat) throws ExoPlaybackException {
    }

    @RequiresApi
    private static final class Api31 {
        private Api31() {
        }

        @DoNotInline
        public static void a(MediaCodecAdapter.Configuration configuration, PlayerId playerId) {
            LogSessionId logSessionIdA = playerId.a();
            if (!logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                configuration.mediaFormat.setString("log-session-id", logSessionIdA.getStringId());
            }
        }
    }

    private static final class OutputStreamInfo {
        public static final OutputStreamInfo UNSET = new OutputStreamInfo(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L);
        public final TimedValueQueue<Format> formatQueue = new TimedValueQueue<>();
        public final long previousStreamLastBufferTimeUs;
        public final long startPositionUs;
        public final long streamOffsetUs;

        public OutputStreamInfo(long j6, long j10, long j11) {
            this.previousStreamLastBufferTimeUs = j6;
            this.startPositionUs = j10;
            this.streamOffsetUs = j11;
        }
    }

    private void D() throws ExoPlaybackException {
        String str;
        Assertions.g(!this.inputStreamEnded);
        FormatHolder formatHolderM = m();
        this.bypassSampleBuffer.b();
        do {
            this.bypassSampleBuffer.b();
            int iA = A(formatHolderM, this.bypassSampleBuffer, 0);
            if (iA == -5) {
                y0(formatHolderM);
                return;
            }
            if (iA != -4) {
                if (iA != -3) {
                    throw new IllegalStateException();
                }
                return;
            }
            if (this.bypassSampleBuffer.h()) {
                this.inputStreamEnded = true;
                return;
            }
            if (this.waitingForFirstSampleInFormat) {
                Format format = (Format) Assertions.e(this.inputFormat);
                this.outputFormat = format;
                z0(format, null);
                this.waitingForFirstSampleInFormat = false;
            }
            this.bypassSampleBuffer.p();
            Format format2 = this.inputFormat;
            if (format2 != null && (str = format2.sampleMimeType) != null && str.equals("audio/opus")) {
                this.oggOpusAudioPacketizer.a(this.bypassSampleBuffer, this.inputFormat.initializationData);
            }
        } while (this.bypassBatchBuffer.t(this.bypassSampleBuffer));
        this.bypassSampleBufferPending = true;
    }

    private boolean E(long j6, long j10) throws ExoPlaybackException {
        boolean z6;
        Assertions.g(!this.outputStreamEnded);
        if (this.bypassBatchBuffer.y()) {
            BatchBuffer batchBuffer = this.bypassBatchBuffer;
            if (!G0(j6, j10, null, batchBuffer.data, this.outputIndex, 0, batchBuffer.x(), this.bypassBatchBuffer.v(), this.bypassBatchBuffer.f(), this.bypassBatchBuffer.h(), this.outputFormat)) {
                return false;
            }
            B0(this.bypassBatchBuffer.w());
            this.bypassBatchBuffer.b();
            z6 = false;
        } else {
            z6 = false;
        }
        if (this.inputStreamEnded) {
            this.outputStreamEnded = true;
            return z6;
        }
        if (this.bypassSampleBufferPending) {
            Assertions.g(this.bypassBatchBuffer.t(this.bypassSampleBuffer));
            this.bypassSampleBufferPending = z6;
        }
        if (this.bypassDrainAndReinitialize) {
            if (this.bypassBatchBuffer.y()) {
                return true;
            }
            Q();
            this.bypassDrainAndReinitialize = z6;
            t0();
            if (!this.bypassEnabled) {
                return z6;
            }
        }
        D();
        if (this.bypassBatchBuffer.y()) {
            this.bypassBatchBuffer.p();
        }
        if (this.bypassBatchBuffer.y() || this.inputStreamEnded || this.bypassDrainAndReinitialize) {
            return true;
        }
        return z6;
    }

    @TargetApi(23)
    private void F0() throws ExoPlaybackException {
        int i10 = this.codecDrainAction;
        if (i10 == 1) {
            X();
            return;
        }
        if (i10 == 2) {
            X();
            c1();
        } else if (i10 == 3) {
            J0();
        } else {
            this.outputStreamEnded = true;
            L0();
        }
    }

    private int G(String str) {
        int i10 = Util.SDK_INT;
        if (i10 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
            String str2 = Util.MODEL;
            if (str2.startsWith("SM-T585") || str2.startsWith("SM-A510") || str2.startsWith("SM-A520") || str2.startsWith("SM-J700")) {
                return 2;
            }
        }
        if (i10 >= 24) {
            return 0;
        }
        if (!"OMX.Nvidia.h264.decode".equals(str) && !"OMX.Nvidia.h264.decode.secure".equals(str)) {
            return 0;
        }
        String str3 = Util.DEVICE;
        return ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) ? 1 : 0;
    }

    private static boolean H(String str, Format format) {
        return Util.SDK_INT < 21 && format.initializationData.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    private static boolean I(String str) {
        if (Util.SDK_INT < 21 && "OMX.SEC.mp3.dec".equals(str) && "samsung".equals(Util.MANUFACTURER)) {
            String str2 = Util.DEVICE;
            if (str2.startsWith("baffin") || str2.startsWith("grand") || str2.startsWith("fortuna") || str2.startsWith("gprimelte") || str2.startsWith("j2y18lte") || str2.startsWith("ms01")) {
                return true;
            }
        }
        return false;
    }

    private static boolean J(String str) {
        int i10 = Util.SDK_INT;
        if (i10 > 23 || !"OMX.google.vorbis.decoder".equals(str)) {
            if (i10 <= 19) {
                String str2 = Util.DEVICE;
                if (("hb2000".equals(str2) || "stvm8".equals(str2)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))) {
                }
            }
            return false;
        }
        return true;
    }

    private static boolean K(String str) {
        return Util.SDK_INT == 21 && "OMX.google.aac.decoder".equals(str);
    }

    private static boolean L(MediaCodecInfo mediaCodecInfo) {
        String str = mediaCodecInfo.name;
        int i10 = Util.SDK_INT;
        return (i10 <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || (i10 <= 17 && "OMX.allwinner.video.decoder.avc".equals(str)) || ((i10 <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str) || "OMX.bcm.vdec.avc.tunnel".equals(str) || "OMX.bcm.vdec.avc.tunnel.secure".equals(str) || "OMX.bcm.vdec.hevc.tunnel".equals(str) || "OMX.bcm.vdec.hevc.tunnel.secure".equals(str))) || ("Amazon".equals(Util.MANUFACTURER) && "AFTS".equals(Util.MODEL) && mediaCodecInfo.secure));
    }

    private static boolean M(String str) {
        int i10 = Util.SDK_INT;
        return i10 < 18 || (i10 == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (i10 == 19 && Util.MODEL.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    private static boolean N(String str, Format format) {
        return Util.SDK_INT <= 18 && format.channelCount == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
    }

    private static boolean O(String str) {
        return Util.SDK_INT == 29 && "c2.android.aac.decoder".equals(str);
    }

    private void Q0(@Nullable DrmSession drmSession) {
        androidx.media3.exoplayer.drm.i.a(this.codecDrmSession, drmSession);
        this.codecDrmSession = drmSession;
    }

    private void R0(OutputStreamInfo outputStreamInfo) {
        this.outputStreamInfo = outputStreamInfo;
        long j6 = outputStreamInfo.streamOffsetUs;
        if (j6 != -9223372036854775807L) {
            this.needToNotifyOutputFormatChangeAfterStreamChange = true;
            A0(j6);
        }
    }

    private void S() throws ExoPlaybackException {
        if (!this.codecReceivedBuffers) {
            J0();
        } else {
            this.codecDrainState = 1;
            this.codecDrainAction = 3;
        }
    }

    @TargetApi(23)
    private boolean T() throws ExoPlaybackException {
        if (this.codecReceivedBuffers) {
            this.codecDrainState = 1;
            if (this.codecNeedsFlushWorkaround || this.codecNeedsEosFlushWorkaround) {
                this.codecDrainAction = 3;
                return false;
            }
            this.codecDrainAction = 2;
        } else {
            c1();
        }
        return true;
    }

    private boolean U(long j6, long j10) throws ExoPlaybackException {
        boolean z6;
        boolean zG0;
        int iD;
        if (!l0()) {
            if (this.codecNeedsEosOutputExceptionWorkaround && this.codecReceivedEos) {
                try {
                    iD = this.codec.d(this.outputBufferInfo);
                } catch (IllegalStateException unused) {
                    F0();
                    if (this.outputStreamEnded) {
                        K0();
                    }
                    return false;
                }
            } else {
                iD = this.codec.d(this.outputBufferInfo);
            }
            if (iD < 0) {
                if (iD == -2) {
                    H0();
                    return true;
                }
                if (this.codecNeedsEosPropagation && (this.inputStreamEnded || this.codecDrainState == 2)) {
                    F0();
                }
                return false;
            }
            if (this.shouldSkipAdaptationWorkaroundOutputBuffer) {
                this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
                this.codec.e(iD, false);
                return true;
            }
            MediaCodec.BufferInfo bufferInfo = this.outputBufferInfo;
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                F0();
                return false;
            }
            this.outputIndex = iD;
            ByteBuffer byteBufferK = this.codec.k(iD);
            this.outputBuffer = byteBufferK;
            if (byteBufferK != null) {
                byteBufferK.position(this.outputBufferInfo.offset);
                ByteBuffer byteBuffer = this.outputBuffer;
                MediaCodec.BufferInfo bufferInfo2 = this.outputBufferInfo;
                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            if (this.codecNeedsEosBufferTimestampWorkaround) {
                MediaCodec.BufferInfo bufferInfo3 = this.outputBufferInfo;
                if (bufferInfo3.presentationTimeUs == 0 && (bufferInfo3.flags & 4) != 0) {
                    long j11 = this.largestQueuedPresentationTimeUs;
                    if (j11 != -9223372036854775807L) {
                        bufferInfo3.presentationTimeUs = j11;
                    }
                }
            }
            this.isDecodeOnlyOutputBuffer = p0(this.outputBufferInfo.presentationTimeUs);
            long j12 = this.lastBufferInStreamPresentationTimeUs;
            long j13 = this.outputBufferInfo.presentationTimeUs;
            this.isLastOutputBuffer = j12 == j13;
            d1(j13);
        }
        if (this.codecNeedsEosOutputExceptionWorkaround && this.codecReceivedEos) {
            try {
                MediaCodecAdapter mediaCodecAdapter = this.codec;
                ByteBuffer byteBuffer2 = this.outputBuffer;
                int i10 = this.outputIndex;
                MediaCodec.BufferInfo bufferInfo4 = this.outputBufferInfo;
                z6 = false;
                try {
                    zG0 = G0(j6, j10, mediaCodecAdapter, byteBuffer2, i10, bufferInfo4.flags, 1, bufferInfo4.presentationTimeUs, this.isDecodeOnlyOutputBuffer, this.isLastOutputBuffer, this.outputFormat);
                } catch (IllegalStateException unused2) {
                    F0();
                    if (this.outputStreamEnded) {
                        K0();
                    }
                    return z6;
                }
            } catch (IllegalStateException unused3) {
                z6 = false;
            }
        } else {
            z6 = false;
            MediaCodecAdapter mediaCodecAdapter2 = this.codec;
            ByteBuffer byteBuffer3 = this.outputBuffer;
            int i11 = this.outputIndex;
            MediaCodec.BufferInfo bufferInfo5 = this.outputBufferInfo;
            zG0 = G0(j6, j10, mediaCodecAdapter2, byteBuffer3, i11, bufferInfo5.flags, 1, bufferInfo5.presentationTimeUs, this.isDecodeOnlyOutputBuffer, this.isLastOutputBuffer, this.outputFormat);
        }
        if (zG0) {
            B0(this.outputBufferInfo.presentationTimeUs);
            boolean z10 = (this.outputBufferInfo.flags & 4) != 0 ? true : z6;
            P0();
            if (!z10) {
                return true;
            }
            F0();
        }
        return z6;
    }

    private void U0(@Nullable DrmSession drmSession) {
        androidx.media3.exoplayer.drm.i.a(this.sourceDrmSession, drmSession);
        this.sourceDrmSession = drmSession;
    }

    private boolean V0(long j6) {
        return this.renderTimeLimitMs == -9223372036854775807L || SystemClock.elapsedRealtime() - j6 < this.renderTimeLimitMs;
    }

    private boolean W() throws ExoPlaybackException {
        int i10;
        if (this.codec == null || (i10 = this.codecDrainState) == 2 || this.inputStreamEnded) {
            return false;
        }
        if (i10 == 0 && X0()) {
            S();
        }
        if (this.inputIndex < 0) {
            int iJ = this.codec.j();
            this.inputIndex = iJ;
            if (iJ < 0) {
                return false;
            }
            this.buffer.data = this.codec.g(iJ);
            this.buffer.b();
        }
        if (this.codecDrainState == 1) {
            if (!this.codecNeedsEosPropagation) {
                this.codecReceivedEos = true;
                this.codec.i(this.inputIndex, 0, 0, 0L, 4);
                O0();
            }
            this.codecDrainState = 2;
            return false;
        }
        if (this.codecNeedsAdaptationWorkaroundBuffer) {
            this.codecNeedsAdaptationWorkaroundBuffer = false;
            ByteBuffer byteBuffer = this.buffer.data;
            byte[] bArr = ADAPTATION_WORKAROUND_BUFFER;
            byteBuffer.put(bArr);
            this.codec.i(this.inputIndex, 0, bArr.length, 0L, 0);
            O0();
            this.codecReceivedBuffers = true;
            return true;
        }
        if (this.codecReconfigurationState == 1) {
            for (int i11 = 0; i11 < this.codecInputFormat.initializationData.size(); i11++) {
                this.buffer.data.put(this.codecInputFormat.initializationData.get(i11));
            }
            this.codecReconfigurationState = 2;
        }
        int iPosition = this.buffer.data.position();
        FormatHolder formatHolderM = m();
        try {
            int iA = A(formatHolderM, this.buffer, 0);
            if (hasReadStreamToEnd() || this.buffer.k()) {
                this.lastBufferInStreamPresentationTimeUs = this.largestQueuedPresentationTimeUs;
            }
            if (iA == -3) {
                return false;
            }
            if (iA == -5) {
                if (this.codecReconfigurationState == 2) {
                    this.buffer.b();
                    this.codecReconfigurationState = 1;
                }
                y0(formatHolderM);
                return true;
            }
            if (this.buffer.h()) {
                if (this.codecReconfigurationState == 2) {
                    this.buffer.b();
                    this.codecReconfigurationState = 1;
                }
                this.inputStreamEnded = true;
                if (!this.codecReceivedBuffers) {
                    F0();
                    return false;
                }
                try {
                    if (!this.codecNeedsEosPropagation) {
                        this.codecReceivedEos = true;
                        this.codec.i(this.inputIndex, 0, 0, 0L, 4);
                        O0();
                    }
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    throw j(e, this.inputFormat, Util.X(e.getErrorCode()));
                }
            }
            if (!this.codecReceivedBuffers && !this.buffer.j()) {
                this.buffer.b();
                if (this.codecReconfigurationState == 2) {
                    this.codecReconfigurationState = 1;
                }
                return true;
            }
            boolean zQ = this.buffer.q();
            if (zQ) {
                this.buffer.cryptoInfo.b(iPosition);
            }
            if (this.codecNeedsDiscardToSpsWorkaround && !zQ) {
                NalUnitUtil.b(this.buffer.data);
                if (this.buffer.data.position() == 0) {
                    return true;
                }
                this.codecNeedsDiscardToSpsWorkaround = false;
            }
            DecoderInputBuffer decoderInputBuffer = this.buffer;
            long jD = decoderInputBuffer.timeUs;
            C2Mp3TimestampTracker c2Mp3TimestampTracker = this.c2Mp3TimestampTracker;
            if (c2Mp3TimestampTracker != null) {
                jD = c2Mp3TimestampTracker.d(this.inputFormat, decoderInputBuffer);
                this.largestQueuedPresentationTimeUs = Math.max(this.largestQueuedPresentationTimeUs, this.c2Mp3TimestampTracker.b(this.inputFormat));
            }
            long j6 = jD;
            if (this.buffer.f()) {
                this.decodeOnlyPresentationTimestamps.add(Long.valueOf(j6));
            }
            if (this.waitingForFirstSampleInFormat) {
                if (this.pendingOutputStreamChanges.isEmpty()) {
                    this.outputStreamInfo.formatQueue.a(j6, this.inputFormat);
                } else {
                    this.pendingOutputStreamChanges.peekLast().formatQueue.a(j6, this.inputFormat);
                }
                this.waitingForFirstSampleInFormat = false;
            }
            this.largestQueuedPresentationTimeUs = Math.max(this.largestQueuedPresentationTimeUs, j6);
            this.buffer.p();
            if (this.buffer.e()) {
                k0(this.buffer);
            }
            D0(this.buffer);
            try {
                if (zQ) {
                    this.codec.m(this.inputIndex, 0, this.buffer.cryptoInfo, j6, 0);
                } else {
                    this.codec.i(this.inputIndex, 0, this.buffer.data.limit(), j6, 0);
                }
                O0();
                this.codecReceivedBuffers = true;
                this.codecReconfigurationState = 0;
                this.decoderCounters.queuedInputBufferCount++;
                return true;
            } catch (MediaCodec.CryptoException e2) {
                throw j(e2, this.inputFormat, Util.X(e2.getErrorCode()));
            }
        } catch (DecoderInputBuffer.InsufficientCapacityException e6) {
            v0(e6);
            I0(0);
            X();
            return true;
        }
    }

    private void X() {
        try {
            this.codec.flush();
        } finally {
            M0();
        }
    }

    private List<MediaCodecInfo> a0(boolean z6) throws MediaCodecUtil.DecoderQueryException {
        List<MediaCodecInfo> listG0 = g0(this.mediaCodecSelector, this.inputFormat, z6);
        if (listG0.isEmpty() && z6) {
            listG0 = g0(this.mediaCodecSelector, this.inputFormat, false);
            if (!listG0.isEmpty()) {
                Log.i(TAG, "Drm session requires secure decoder for " + this.inputFormat.sampleMimeType + ", but no secure decoder available. Trying to proceed with " + listG0 + ".");
            }
        }
        return listG0;
    }

    protected static boolean a1(Format format) {
        int i10 = format.cryptoType;
        return i10 == 0 || i10 == 2;
    }

    private boolean b1(Format format) throws ExoPlaybackException {
        if (Util.SDK_INT >= 23 && this.codec != null && this.codecDrainAction != 3 && getState() != 0) {
            float fE0 = e0(this.targetPlaybackSpeed, format, p());
            float f = this.codecOperatingRate;
            if (f == fE0) {
                return true;
            }
            if (fE0 == CODEC_OPERATING_RATE_UNSET) {
                S();
                return false;
            }
            if (f == CODEC_OPERATING_RATE_UNSET && fE0 <= this.assumedMinimumCodecOperatingRate) {
                return true;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", fE0);
            this.codec.b(bundle);
            this.codecOperatingRate = fE0;
        }
        return true;
    }

    @RequiresApi
    private void c1() throws ExoPlaybackException {
        CryptoConfig cryptoConfigB = this.sourceDrmSession.b();
        if (cryptoConfigB instanceof FrameworkCryptoConfig) {
            try {
                this.mediaCrypto.setMediaDrmSession(((FrameworkCryptoConfig) cryptoConfigB).sessionId);
            } catch (MediaCryptoException e) {
                throw j(e, this.inputFormat, 6006);
            }
        }
        Q0(this.sourceDrmSession);
        this.codecDrainState = 0;
        this.codecDrainAction = 0;
    }

    private void n0(MediaCodecInfo mediaCodecInfo, @Nullable MediaCrypto mediaCrypto) throws Exception {
        String str = mediaCodecInfo.name;
        int i10 = Util.SDK_INT;
        float f = CODEC_OPERATING_RATE_UNSET;
        float fE0 = i10 < 23 ? -1.0f : e0(this.targetPlaybackSpeed, this.inputFormat, p());
        if (fE0 > this.assumedMinimumCodecOperatingRate) {
            f = fE0;
        }
        E0(this.inputFormat);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        MediaCodecAdapter.Configuration configurationH0 = h0(mediaCodecInfo, this.inputFormat, mediaCrypto, f);
        if (i10 >= 31) {
            Api31.a(configurationH0, o());
        }
        try {
            TraceUtil.a("createCodec:" + str);
            this.codec = this.codecAdapterFactory.a(configurationH0);
            TraceUtil.c();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            if (!mediaCodecInfo.o(this.inputFormat)) {
                Log.i(TAG, Util.D("Format exceeds selected codec's capabilities [%s, %s]", Format.j(this.inputFormat), str));
            }
            this.codecInfo = mediaCodecInfo;
            this.codecOperatingRate = f;
            this.codecInputFormat = this.inputFormat;
            this.codecAdaptationWorkaroundMode = G(str);
            this.codecNeedsDiscardToSpsWorkaround = H(str, this.codecInputFormat);
            this.codecNeedsFlushWorkaround = M(str);
            this.codecNeedsSosFlushWorkaround = O(str);
            this.codecNeedsEosFlushWorkaround = J(str);
            this.codecNeedsEosOutputExceptionWorkaround = K(str);
            this.codecNeedsEosBufferTimestampWorkaround = I(str);
            this.codecNeedsMonoChannelCountWorkaround = N(str, this.codecInputFormat);
            this.codecNeedsEosPropagation = L(mediaCodecInfo) || d0();
            if (this.codec.a()) {
                this.codecReconfigured = true;
                this.codecReconfigurationState = 1;
                this.codecNeedsAdaptationWorkaroundBuffer = this.codecAdaptationWorkaroundMode != 0;
            }
            if ("c2.android.mp3.decoder".equals(mediaCodecInfo.name)) {
                this.c2Mp3TimestampTracker = new C2Mp3TimestampTracker();
            }
            if (getState() == 2) {
                this.codecHotswapDeadlineMs = SystemClock.elapsedRealtime() + 1000;
            }
            this.decoderCounters.decoderInitCount++;
            w0(str, configurationH0, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
        } catch (Throwable th) {
            TraceUtil.c();
            throw th;
        }
    }

    private boolean p0(long j6) {
        int size = this.decodeOnlyPresentationTimestamps.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.decodeOnlyPresentationTimestamps.get(i10).longValue() == j6) {
                this.decodeOnlyPresentationTimestamps.remove(i10);
                return true;
            }
        }
        return false;
    }

    private static boolean q0(IllegalStateException illegalStateException) {
        if (Util.SDK_INT >= 21 && r0(illegalStateException)) {
            return true;
        }
        StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
        return stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
    }

    @RequiresApi
    private static boolean r0(IllegalStateException illegalStateException) {
        return illegalStateException instanceof MediaCodec.CodecException;
    }

    @RequiresApi
    private static boolean s0(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) illegalStateException).isRecoverable();
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x009e  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:55:0x00b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x004a A[SYNTHETIC] */
    private void u0(@Nullable MediaCrypto mediaCrypto, boolean z6) throws DecoderInitializationException {
        DecoderInitializationException decoderInitializationException;
        DecoderInitializationException decoderInitializationException2;
        if (this.availableCodecInfos == null) {
            try {
                List<MediaCodecInfo> listA0 = a0(z6);
                ArrayDeque<MediaCodecInfo> arrayDeque = new ArrayDeque<>();
                this.availableCodecInfos = arrayDeque;
                if (this.enableDecoderFallback) {
                    arrayDeque.addAll(listA0);
                } else if (!listA0.isEmpty()) {
                    this.availableCodecInfos.add(listA0.get(0));
                }
                this.preferredDecoderInitializationException = null;
            } catch (MediaCodecUtil.DecoderQueryException e) {
                throw new DecoderInitializationException(this.inputFormat, e, z6, -49998);
            }
        }
        if (this.availableCodecInfos.isEmpty()) {
            throw new DecoderInitializationException(this.inputFormat, (Throwable) null, z6, -49999);
        }
        MediaCodecInfo mediaCodecInfoPeekFirst = this.availableCodecInfos.peekFirst();
        while (this.codec == null) {
            MediaCodecInfo mediaCodecInfoPeekFirst2 = this.availableCodecInfos.peekFirst();
            if (!W0(mediaCodecInfoPeekFirst2)) {
                return;
            }
            try {
                n0(mediaCodecInfoPeekFirst2, mediaCrypto);
            } catch (Exception e2) {
                if (mediaCodecInfoPeekFirst2 != mediaCodecInfoPeekFirst) {
                    throw e2;
                }
                try {
                    Log.i(TAG, "Preferred decoder instantiation failed. Sleeping for 50ms then retrying.");
                    Thread.sleep(50L);
                    n0(mediaCodecInfoPeekFirst2, mediaCrypto);
                } catch (Exception e6) {
                    Log.j(TAG, "Failed to initialize decoder: " + mediaCodecInfoPeekFirst2, e6);
                    this.availableCodecInfos.removeFirst();
                    decoderInitializationException = new DecoderInitializationException(this.inputFormat, e6, z6, mediaCodecInfoPeekFirst2);
                    v0(decoderInitializationException);
                    decoderInitializationException2 = this.preferredDecoderInitializationException;
                    if (decoderInitializationException2 == null) {
                        this.preferredDecoderInitializationException = decoderInitializationException;
                    } else {
                        this.preferredDecoderInitializationException = decoderInitializationException2.c(decoderInitializationException);
                    }
                    if (!this.availableCodecInfos.isEmpty()) {
                        throw this.preferredDecoderInitializationException;
                    }
                }
                Log.j(TAG, "Failed to initialize decoder: " + mediaCodecInfoPeekFirst2, e6);
                this.availableCodecInfos.removeFirst();
                decoderInitializationException = new DecoderInitializationException(this.inputFormat, e6, z6, mediaCodecInfoPeekFirst2);
                v0(decoderInitializationException);
                decoderInitializationException2 = this.preferredDecoderInitializationException;
                if (decoderInitializationException2 == null) {
                    this.preferredDecoderInitializationException = decoderInitializationException;
                } else {
                    this.preferredDecoderInitializationException = decoderInitializationException2.c(decoderInitializationException);
                }
                if (!this.availableCodecInfos.isEmpty()) {
                    throw this.preferredDecoderInitializationException;
                }
            }
        }
        this.availableCodecInfos = null;
    }

    @CallSuper
    protected void B0(long j6) {
        this.lastProcessedOutputBufferTimeUs = j6;
        while (!this.pendingOutputStreamChanges.isEmpty() && j6 >= this.pendingOutputStreamChanges.peek().previousStreamLastBufferTimeUs) {
            R0(this.pendingOutputStreamChanges.poll());
            C0();
        }
    }

    protected DecoderReuseEvaluation F(MediaCodecInfo mediaCodecInfo, Format format, Format format2) {
        return new DecoderReuseEvaluation(mediaCodecInfo.name, format, format2, 0, 1);
    }

    protected MediaCodecDecoderException P(Throwable th, @Nullable MediaCodecInfo mediaCodecInfo) {
        return new MediaCodecDecoderException(th, mediaCodecInfo);
    }

    protected boolean Z() {
        if (this.codec == null) {
            return false;
        }
        int i10 = this.codecDrainAction;
        if (i10 == 3 || this.codecNeedsFlushWorkaround || ((this.codecNeedsSosFlushWorkaround && !this.codecHasOutputMediaFormat) || (this.codecNeedsEosFlushWorkaround && this.codecReceivedEos))) {
            K0();
            return true;
        }
        if (i10 == 2) {
            int i11 = Util.SDK_INT;
            Assertions.g(i11 >= 23);
            if (i11 >= 23) {
                try {
                    c1();
                } catch (ExoPlaybackException e) {
                    Log.j(TAG, "Failed to update the DRM session, releasing the codec instead.", e);
                    K0();
                    return true;
                }
            }
        }
        X();
        return false;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final int a(Format format) throws ExoPlaybackException {
        try {
            return Z0(this.mediaCodecSelector, format);
        } catch (MediaCodecUtil.DecoderQueryException e) {
            throw j(e, format, 4002);
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public void d(float f, float f6) throws ExoPlaybackException {
        this.currentPlaybackSpeed = f;
        this.targetPlaybackSpeed = f6;
        b1(this.codecInputFormat);
    }

    protected final void d1(long j6) throws ExoPlaybackException {
        Format formatJ = this.outputStreamInfo.formatQueue.j(j6);
        if (formatJ == null && this.needToNotifyOutputFormatChangeAfterStreamChange && this.codecOutputMediaFormat != null) {
            formatJ = this.outputStreamInfo.formatQueue.i();
        }
        if (formatJ != null) {
            this.outputFormat = formatJ;
        } else if (!this.codecOutputMediaFormatChanged || this.outputFormat == null) {
            return;
        }
        z0(this.outputFormat, this.codecOutputMediaFormat);
        this.codecOutputMediaFormatChanged = false;
        this.needToNotifyOutputFormatChangeAfterStreamChange = false;
    }

    protected final long i0() {
        return this.outputStreamInfo.streamOffsetUs;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        return this.inputFormat != null && (q() || l0() || (this.codecHotswapDeadlineMs != -9223372036854775807L && SystemClock.elapsedRealtime() < this.codecHotswapDeadlineMs));
    }

    protected final boolean o0(Format format) {
        return this.sourceDrmSession == null && Y0(format);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void render(long j6, long j10) throws ExoPlaybackException {
        boolean z6 = false;
        if (this.pendingOutputEndOfStream) {
            this.pendingOutputEndOfStream = false;
            F0();
        }
        ExoPlaybackException exoPlaybackException = this.pendingPlaybackException;
        if (exoPlaybackException != null) {
            this.pendingPlaybackException = null;
            throw exoPlaybackException;
        }
        try {
            if (this.outputStreamEnded) {
                L0();
                return;
            }
            if (this.inputFormat != null || I0(2)) {
                t0();
                if (this.bypassEnabled) {
                    TraceUtil.a("bypassRender");
                    while (E(j6, j10)) {
                    }
                    TraceUtil.c();
                } else if (this.codec != null) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    TraceUtil.a("drainAndFeed");
                    while (U(j6, j10) && V0(jElapsedRealtime)) {
                    }
                    while (W() && V0(jElapsedRealtime)) {
                    }
                    TraceUtil.c();
                } else {
                    this.decoderCounters.skippedInputBufferCount += C(j6);
                    I0(1);
                }
                this.decoderCounters.c();
            }
        } catch (IllegalStateException e) {
            if (!q0(e)) {
                throw e;
            }
            v0(e);
            if (Util.SDK_INT >= 21 && s0(e)) {
                z6 = true;
            }
            if (z6) {
                K0();
            }
            throw k(P(e, c0()), this.inputFormat, z6, 4003);
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void s(boolean z6, boolean z10) throws ExoPlaybackException {
        this.decoderCounters = new DecoderCounters();
    }

    protected final void t0() throws ExoPlaybackException {
        Format format;
        if (this.codec != null || this.bypassEnabled || (format = this.inputFormat) == null) {
            return;
        }
        if (o0(format)) {
            m0(this.inputFormat);
            return;
        }
        Q0(this.sourceDrmSession);
        String str = this.inputFormat.sampleMimeType;
        DrmSession drmSession = this.codecDrmSession;
        if (drmSession != null) {
            CryptoConfig cryptoConfigB = drmSession.b();
            if (this.mediaCrypto == null) {
                if (cryptoConfigB == null) {
                    if (this.codecDrmSession.getError() == null) {
                        return;
                    }
                } else if (cryptoConfigB instanceof FrameworkCryptoConfig) {
                    FrameworkCryptoConfig frameworkCryptoConfig = (FrameworkCryptoConfig) cryptoConfigB;
                    try {
                        MediaCrypto mediaCrypto = new MediaCrypto(frameworkCryptoConfig.uuid, frameworkCryptoConfig.sessionId);
                        this.mediaCrypto = mediaCrypto;
                        this.mediaCryptoRequiresSecureDecoder = !frameworkCryptoConfig.forceAllowInsecureDecoderComponents && mediaCrypto.requiresSecureDecoderComponent(str);
                    } catch (MediaCryptoException e) {
                        throw j(e, this.inputFormat, 6006);
                    }
                }
            }
            if (FrameworkCryptoConfig.WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC && (cryptoConfigB instanceof FrameworkCryptoConfig)) {
                int state = this.codecDrmSession.getState();
                if (state == 1) {
                    DrmSession.DrmSessionException drmSessionException = (DrmSession.DrmSessionException) Assertions.e(this.codecDrmSession.getError());
                    throw j(drmSessionException, this.inputFormat, drmSessionException.errorCode);
                }
                if (state != 4) {
                    return;
                }
            }
        }
        try {
            u0(this.mediaCrypto, this.mediaCryptoRequiresSecureDecoder);
        } catch (DecoderInitializationException e2) {
            throw j(e2, this.inputFormat, 4001);
        }
    }

    public MediaCodecRenderer(int i10, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, boolean z6, float f) {
        super(i10);
        this.codecAdapterFactory = factory;
        this.mediaCodecSelector = (MediaCodecSelector) Assertions.e(mediaCodecSelector);
        this.enableDecoderFallback = z6;
        this.assumedMinimumCodecOperatingRate = f;
        this.noDataBuffer = DecoderInputBuffer.r();
        this.buffer = new DecoderInputBuffer(0);
        this.bypassSampleBuffer = new DecoderInputBuffer(2);
        BatchBuffer batchBuffer = new BatchBuffer();
        this.bypassBatchBuffer = batchBuffer;
        this.decodeOnlyPresentationTimestamps = new ArrayList<>();
        this.outputBufferInfo = new MediaCodec.BufferInfo();
        this.currentPlaybackSpeed = 1.0f;
        this.targetPlaybackSpeed = 1.0f;
        this.renderTimeLimitMs = -9223372036854775807L;
        this.pendingOutputStreamChanges = new ArrayDeque<>();
        R0(OutputStreamInfo.UNSET);
        batchBuffer.o(0);
        batchBuffer.data.order(ByteOrder.nativeOrder());
        this.oggOpusAudioPacketizer = new OggOpusAudioPacketizer();
        this.codecOperatingRate = CODEC_OPERATING_RATE_UNSET;
        this.codecAdaptationWorkaroundMode = 0;
        this.codecReconfigurationState = 0;
        this.inputIndex = -1;
        this.outputIndex = -1;
        this.codecHotswapDeadlineMs = -9223372036854775807L;
        this.largestQueuedPresentationTimeUs = -9223372036854775807L;
        this.lastBufferInStreamPresentationTimeUs = -9223372036854775807L;
        this.lastProcessedOutputBufferTimeUs = -9223372036854775807L;
        this.codecDrainState = 0;
        this.codecDrainAction = 0;
    }

    private boolean I0(int i10) throws ExoPlaybackException {
        FormatHolder formatHolderM = m();
        this.noDataBuffer.b();
        int iA = A(formatHolderM, this.noDataBuffer, i10 | 4);
        if (iA == -5) {
            y0(formatHolderM);
            return true;
        }
        if (iA == -4 && this.noDataBuffer.h()) {
            this.inputStreamEnded = true;
            F0();
            return false;
        }
        return false;
    }

    private void J0() throws ExoPlaybackException {
        K0();
        t0();
    }

    private void m0(Format format) {
        Q();
        String str = format.sampleMimeType;
        if (!"audio/mp4a-latm".equals(str) && !"audio/mpeg".equals(str) && !"audio/opus".equals(str)) {
            this.bypassBatchBuffer.z(1);
        } else {
            this.bypassBatchBuffer.z(32);
        }
        this.bypassEnabled = true;
    }

    @CallSuper
    protected void M0() {
        O0();
        P0();
        this.codecHotswapDeadlineMs = -9223372036854775807L;
        this.codecReceivedEos = false;
        this.codecReceivedBuffers = false;
        this.codecNeedsAdaptationWorkaroundBuffer = false;
        this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
        this.isDecodeOnlyOutputBuffer = false;
        this.isLastOutputBuffer = false;
        this.decodeOnlyPresentationTimestamps.clear();
        this.largestQueuedPresentationTimeUs = -9223372036854775807L;
        this.lastBufferInStreamPresentationTimeUs = -9223372036854775807L;
        this.lastProcessedOutputBufferTimeUs = -9223372036854775807L;
        C2Mp3TimestampTracker c2Mp3TimestampTracker = this.c2Mp3TimestampTracker;
        if (c2Mp3TimestampTracker != null) {
            c2Mp3TimestampTracker.c();
        }
        this.codecDrainState = 0;
        this.codecDrainAction = 0;
        this.codecReconfigurationState = this.codecReconfigured ? 1 : 0;
    }

    @CallSuper
    protected void N0() {
        M0();
        this.pendingPlaybackException = null;
        this.c2Mp3TimestampTracker = null;
        this.availableCodecInfos = null;
        this.codecInfo = null;
        this.codecInputFormat = null;
        this.codecOutputMediaFormat = null;
        this.codecOutputMediaFormatChanged = false;
        this.codecHasOutputMediaFormat = false;
        this.codecOperatingRate = CODEC_OPERATING_RATE_UNSET;
        this.codecAdaptationWorkaroundMode = 0;
        this.codecNeedsDiscardToSpsWorkaround = false;
        this.codecNeedsFlushWorkaround = false;
        this.codecNeedsSosFlushWorkaround = false;
        this.codecNeedsEosFlushWorkaround = false;
        this.codecNeedsEosOutputExceptionWorkaround = false;
        this.codecNeedsEosBufferTimestampWorkaround = false;
        this.codecNeedsMonoChannelCountWorkaround = false;
        this.codecNeedsEosPropagation = false;
        this.codecReconfigured = false;
        this.codecReconfigurationState = 0;
        this.mediaCryptoRequiresSecureDecoder = false;
    }

    protected final boolean Y() throws ExoPlaybackException {
        boolean Z = Z();
        if (Z) {
            t0();
        }
        return Z;
    }
}
