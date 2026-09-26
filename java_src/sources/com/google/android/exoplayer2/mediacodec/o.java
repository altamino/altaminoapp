package com.google.android.exoplayer2.mediacodec;

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
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.analytics.t1;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.drm.g0;
import com.google.android.exoplayer2.util.k0;
import com.google.android.exoplayer2.util.m0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.y;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes9.dex */
public abstract class o extends com.google.android.exoplayer2.f {
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
    private static final int MAX_PENDING_OUTPUT_STREAM_OFFSET_COUNT = 10;
    private static final int RECONFIGURATION_STATE_NONE = 0;
    private static final int RECONFIGURATION_STATE_QUEUE_PENDING = 2;
    private static final int RECONFIGURATION_STATE_WRITE_PENDING = 1;
    private static final String TAG = "MediaCodecRenderer";
    private final float assumedMinimumCodecOperatingRate;

    @Nullable
    private ArrayDeque<n> availableCodecInfos;
    private final com.google.android.exoplayer2.decoder.g buffer;
    private final h bypassBatchBuffer;
    private boolean bypassDrainAndReinitialize;
    private boolean bypassEnabled;
    private final com.google.android.exoplayer2.decoder.g bypassSampleBuffer;
    private boolean bypassSampleBufferPending;

    @Nullable
    private i c2Mp3TimestampTracker;

    @Nullable
    private l codec;
    private int codecAdaptationWorkaroundMode;
    private final l.b codecAdapterFactory;
    private int codecDrainAction;
    private int codecDrainState;

    @Nullable
    private com.google.android.exoplayer2.drm.n codecDrmSession;
    private boolean codecHasOutputMediaFormat;
    private long codecHotswapDeadlineMs;

    @Nullable
    private n codecInfo;

    @Nullable
    private a2 codecInputFormat;
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
    protected com.google.android.exoplayer2.decoder.e decoderCounters;
    private final boolean enableDecoderFallback;
    private final k0<a2> formatQueue;

    @Nullable
    private a2 inputFormat;
    private int inputIndex;
    private boolean inputStreamEnded;
    private boolean isDecodeOnlyOutputBuffer;
    private boolean isLastOutputBuffer;
    private long largestQueuedPresentationTimeUs;
    private long lastBufferInStreamPresentationTimeUs;
    private final q mediaCodecSelector;

    @Nullable
    private MediaCrypto mediaCrypto;
    private boolean mediaCryptoRequiresSecureDecoder;
    private final com.google.android.exoplayer2.decoder.g noDataBuffer;

    @Nullable
    private ByteBuffer outputBuffer;
    private final MediaCodec.BufferInfo outputBufferInfo;

    @Nullable
    private a2 outputFormat;
    private int outputIndex;
    private boolean outputStreamEnded;
    private long outputStreamOffsetUs;
    private long outputStreamStartPositionUs;
    private boolean pendingOutputEndOfStream;
    private int pendingOutputStreamOffsetCount;
    private final long[] pendingOutputStreamOffsetsUs;
    private final long[] pendingOutputStreamStartPositionsUs;
    private final long[] pendingOutputStreamSwitchTimesUs;

    @Nullable
    private com.google.android.exoplayer2.q pendingPlaybackException;

    @Nullable
    private b preferredDecoderInitializationException;
    private long renderTimeLimitMs;
    private boolean shouldSkipAdaptationWorkaroundOutputBuffer;

    @Nullable
    private com.google.android.exoplayer2.drm.n sourceDrmSession;
    private float targetPlaybackSpeed;
    private boolean waitingForFirstSampleInFormat;

    public static class b extends Exception {
        private static final int CUSTOM_ERROR_CODE_BASE = -50000;
        private static final int DECODER_QUERY_ERROR = -49998;
        private static final int NO_SUITABLE_DECODER_ERROR = -49999;

        @Nullable
        public final n codecInfo;

        @Nullable
        public final String diagnosticInfo;

        @Nullable
        public final b fallbackDecoderInitializationException;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        public b(a2 a2Var, @Nullable Throwable th, boolean z6, int i10) {
            this("Decoder init failed: [" + i10 + "], " + a2Var, th, a2Var.sampleMimeType, z6, null, b(i10), null);
        }

        private static String b(int i10) {
            return "com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_" + (i10 < 0 ? "neg_" : "") + Math.abs(i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @CheckResult
        public b c(b bVar) {
            return new b(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.codecInfo, this.diagnosticInfo, bVar);
        }

        @Nullable
        @RequiresApi
        private static String d(@Nullable Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }

        public b(a2 a2Var, @Nullable Throwable th, boolean z6, n nVar) {
            this("Decoder init failed: " + nVar.name + ", " + a2Var, th, a2Var.sampleMimeType, z6, nVar, o0.SDK_INT >= 21 ? d(th) : null, null);
        }

        private b(String str, @Nullable Throwable th, String str2, boolean z6, @Nullable n nVar, @Nullable String str3, @Nullable b bVar) {
            super(str, th);
            this.mimeType = str2;
            this.secureDecoderRequired = z6;
            this.codecInfo = nVar;
            this.diagnosticInfo = str3;
            this.fallbackDecoderInitializationException = bVar;
        }
    }

    private void C0() {
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

    private void J0() {
        this.inputIndex = -1;
        this.buffer.data = null;
    }

    private void K0() {
        this.outputIndex = -1;
        this.outputBuffer = null;
    }

    private void M() {
        this.bypassDrainAndReinitialize = false;
        this.bypassBatchBuffer.b();
        this.bypassSampleBuffer.b();
        this.bypassSampleBufferPending = false;
        this.bypassEnabled = false;
    }

    private boolean N() {
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

    private boolean R(n nVar, a2 a2Var, @Nullable com.google.android.exoplayer2.drm.n nVar2, @Nullable com.google.android.exoplayer2.drm.n nVar3) throws com.google.android.exoplayer2.q {
        g0 g0VarD0;
        if (nVar2 == nVar3) {
            return false;
        }
        if (nVar3 == null || nVar2 == null || !nVar3.c().equals(nVar2.c()) || o0.SDK_INT < 23) {
            return true;
        }
        UUID uuid = com.google.android.exoplayer2.i.PLAYREADY_UUID;
        if (uuid.equals(nVar2.c()) || uuid.equals(nVar3.c()) || (g0VarD0 = d0(nVar3)) == null) {
            return true;
        }
        return !nVar.secure && (g0VarD0.forceAllowInsecureDecoderComponents ? false : nVar3.d(a2Var.sampleMimeType));
    }

    private boolean i0() {
        return this.outputIndex >= 0;
    }

    protected abstract boolean B0(long j6, long j10, @Nullable l lVar, @Nullable ByteBuffer byteBuffer, int i10, int i11, int i12, long j11, boolean z6, boolean z10, a2 a2Var) throws com.google.android.exoplayer2.q;

    /* JADX WARN: Multi-variable type inference failed */
    protected void F0() {
        try {
            l lVar = this.codec;
            if (lVar != null) {
                lVar.release();
                this.decoderCounters.decoderReleaseCount++;
                t0(this.codecInfo.name);
            }
            this.codec = null;
            try {
                MediaCrypto mediaCrypto = this.mediaCrypto;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
                this.mediaCrypto = null;
                L0(null);
                I0();
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
                L0(null);
                I0();
            }
        }
    }

    protected void G0() throws com.google.android.exoplayer2.q {
    }

    protected final void N0() {
        this.pendingOutputEndOfStream = true;
    }

    protected final void O0(com.google.android.exoplayer2.q qVar) {
        this.pendingPlaybackException = qVar;
    }

    protected boolean R0(n nVar) {
        return true;
    }

    protected boolean S0() {
        return false;
    }

    protected boolean T0(a2 a2Var) {
        return false;
    }

    protected abstract int U0(q qVar, a2 a2Var) throws v.c;

    @Nullable
    protected final l X() {
        return this.codec;
    }

    @Nullable
    protected final n Y() {
        return this.codecInfo;
    }

    protected boolean Z() {
        return false;
    }

    protected float a0(float f, a2 a2Var, a2[] a2VarArr) {
        return CODEC_OPERATING_RATE_UNSET;
    }

    @Nullable
    protected final MediaFormat b0() {
        return this.codecOutputMediaFormat;
    }

    protected abstract List<n> c0(q qVar, a2 a2Var, boolean z6) throws v.c;

    protected abstract l.a e0(n nVar, a2 a2Var, @Nullable MediaCrypto mediaCrypto, float f);

    protected final long f0() {
        return this.outputStreamOffsetUs;
    }

    protected float g0() {
        return this.currentPlaybackSpeed;
    }

    protected void h0(com.google.android.exoplayer2.decoder.g gVar) throws com.google.android.exoplayer2.q {
    }

    @Override // com.google.android.exoplayer2.m3
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // com.google.android.exoplayer2.f
    protected void p() {
        this.inputFormat = null;
        this.outputStreamStartPositionUs = -9223372036854775807L;
        M0(-9223372036854775807L);
        this.pendingOutputStreamOffsetCount = 0;
        V();
    }

    @Override // com.google.android.exoplayer2.f
    protected void r(long j6, boolean z6) throws com.google.android.exoplayer2.q {
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        this.pendingOutputEndOfStream = false;
        if (this.bypassEnabled) {
            this.bypassBatchBuffer.b();
            this.bypassSampleBuffer.b();
            this.bypassSampleBufferPending = false;
        } else {
            U();
        }
        if (this.formatQueue.l() > 0) {
            this.waitingForFirstSampleInFormat = true;
        }
        this.formatQueue.c();
        int i10 = this.pendingOutputStreamOffsetCount;
        if (i10 != 0) {
            M0(this.pendingOutputStreamOffsetsUs[i10 - 1]);
            this.outputStreamStartPositionUs = this.pendingOutputStreamStartPositionsUs[this.pendingOutputStreamOffsetCount - 1];
            this.pendingOutputStreamOffsetCount = 0;
        }
    }

    protected void r0(Exception exc) {
    }

    @Override // com.google.android.exoplayer2.f
    protected void s() {
        try {
            M();
            F0();
        } finally {
            P0(null);
        }
    }

    protected void s0(String str, l.a aVar, long j6, long j10) {
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.o3
    public final int supportsMixedMimeTypeAdaptation() {
        return 8;
    }

    @Override // com.google.android.exoplayer2.f
    protected void t() {
    }

    protected void t0(String str) {
    }

    @Override // com.google.android.exoplayer2.f
    protected void u() {
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0077  */
    /* JADX WARN: Code duplicated, block: B:39:0x0083  */
    @Nullable
    @CallSuper
    protected com.google.android.exoplayer2.decoder.i u0(b2 b2Var) throws com.google.android.exoplayer2.q {
        int i10;
        boolean z6 = true;
        this.waitingForFirstSampleInFormat = true;
        a2 a2Var = (a2) com.google.android.exoplayer2.util.a.e(b2Var.format);
        if (a2Var.sampleMimeType == null) {
            throw f(new IllegalArgumentException(), a2Var, 4005);
        }
        P0(b2Var.drmSession);
        this.inputFormat = a2Var;
        if (this.bypassEnabled) {
            this.bypassDrainAndReinitialize = true;
            return null;
        }
        l lVar = this.codec;
        if (lVar == null) {
            this.availableCodecInfos = null;
            p0();
            return null;
        }
        n nVar = this.codecInfo;
        a2 a2Var2 = this.codecInputFormat;
        if (R(nVar, a2Var, this.codecDrmSession, this.sourceDrmSession)) {
            O();
            return new com.google.android.exoplayer2.decoder.i(nVar.name, a2Var2, a2Var, 0, 128);
        }
        boolean z10 = this.sourceDrmSession != this.codecDrmSession;
        com.google.android.exoplayer2.util.a.g(!z10 || o0.SDK_INT >= 23);
        com.google.android.exoplayer2.decoder.i iVarB = B(nVar, a2Var2, a2Var);
        int i11 = iVarB.result;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        throw new IllegalStateException();
                    }
                    if (W0(a2Var)) {
                        this.codecInputFormat = a2Var;
                        if (z10 && !P()) {
                            i10 = 2;
                        }
                    } else {
                        i10 = 16;
                    }
                } else if (W0(a2Var)) {
                    this.codecReconfigured = true;
                    this.codecReconfigurationState = 1;
                    int i12 = this.codecAdaptationWorkaroundMode;
                    if (i12 != 2 && (i12 != 1 || a2Var.width != a2Var2.width || a2Var.height != a2Var2.height)) {
                        z6 = false;
                    }
                    this.codecNeedsAdaptationWorkaroundBuffer = z6;
                    this.codecInputFormat = a2Var;
                    if (z10 && !P()) {
                        i10 = 2;
                    }
                } else {
                    i10 = 16;
                }
            } else if (W0(a2Var)) {
                this.codecInputFormat = a2Var;
                if (!z10 ? !N() : !P()) {
                    i10 = 2;
                }
            } else {
                i10 = 16;
            }
            return (iVarB.result != 0 || (this.codec == lVar && this.codecDrainAction != 3)) ? iVarB : new com.google.android.exoplayer2.decoder.i(nVar.name, a2Var2, a2Var, 0, i10);
        }
        O();
        i10 = 0;
        if (iVarB.result != 0) {
        }
    }

    protected void v0(a2 a2Var, @Nullable MediaFormat mediaFormat) throws com.google.android.exoplayer2.q {
    }

    protected void w0(long j6) {
    }

    protected void y0() {
    }

    protected void z0(com.google.android.exoplayer2.decoder.g gVar) throws com.google.android.exoplayer2.q {
    }

    @RequiresApi
    private static final class a {
        @DoNotInline
        public static void a(l.a aVar, t1 t1Var) {
            LogSessionId logSessionIdA = t1Var.a();
            if (!logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                aVar.mediaFormat.setString("log-session-id", logSessionIdA.getStringId());
            }
        }
    }

    private boolean A(long j6, long j10) throws com.google.android.exoplayer2.q {
        boolean z6;
        com.google.android.exoplayer2.util.a.g(!this.outputStreamEnded);
        if (this.bypassBatchBuffer.x()) {
            h hVar = this.bypassBatchBuffer;
            if (!B0(j6, j10, null, hVar.data, this.outputIndex, 0, hVar.w(), this.bypassBatchBuffer.u(), this.bypassBatchBuffer.f(), this.bypassBatchBuffer.h(), this.outputFormat)) {
                return false;
            }
            x0(this.bypassBatchBuffer.v());
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
            com.google.android.exoplayer2.util.a.g(this.bypassBatchBuffer.s(this.bypassSampleBuffer));
            this.bypassSampleBufferPending = z6;
        }
        if (this.bypassDrainAndReinitialize) {
            if (this.bypassBatchBuffer.x()) {
                return true;
            }
            M();
            this.bypassDrainAndReinitialize = z6;
            p0();
            if (!this.bypassEnabled) {
                return z6;
            }
        }
        z();
        if (this.bypassBatchBuffer.x()) {
            this.bypassBatchBuffer.o();
        }
        if (this.bypassBatchBuffer.x() || this.inputStreamEnded || this.bypassDrainAndReinitialize) {
            return true;
        }
        return z6;
    }

    @TargetApi(23)
    private void A0() throws com.google.android.exoplayer2.q {
        int i10 = this.codecDrainAction;
        if (i10 == 1) {
            T();
            return;
        }
        if (i10 == 2) {
            T();
            X0();
        } else if (i10 == 3) {
            E0();
        } else {
            this.outputStreamEnded = true;
            G0();
        }
    }

    private int C(String str) {
        int i10 = o0.SDK_INT;
        if (i10 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
            String str2 = o0.MODEL;
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
        String str3 = o0.DEVICE;
        return ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) ? 1 : 0;
    }

    private static boolean D(String str, a2 a2Var) {
        return o0.SDK_INT < 21 && a2Var.initializationData.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    private static boolean E(String str) {
        if (o0.SDK_INT < 21 && "OMX.SEC.mp3.dec".equals(str) && "samsung".equals(o0.MANUFACTURER)) {
            String str2 = o0.DEVICE;
            if (str2.startsWith("baffin") || str2.startsWith("grand") || str2.startsWith("fortuna") || str2.startsWith("gprimelte") || str2.startsWith("j2y18lte") || str2.startsWith("ms01")) {
                return true;
            }
        }
        return false;
    }

    private static boolean F(String str) {
        int i10 = o0.SDK_INT;
        if (i10 > 23 || !"OMX.google.vorbis.decoder".equals(str)) {
            if (i10 <= 19) {
                String str2 = o0.DEVICE;
                if (("hb2000".equals(str2) || "stvm8".equals(str2)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))) {
                }
            }
            return false;
        }
        return true;
    }

    private static boolean G(String str) {
        return o0.SDK_INT == 21 && "OMX.google.aac.decoder".equals(str);
    }

    private static boolean H(n nVar) {
        String str = nVar.name;
        int i10 = o0.SDK_INT;
        return (i10 <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || (i10 <= 17 && "OMX.allwinner.video.decoder.avc".equals(str)) || ((i10 <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str))) || ("Amazon".equals(o0.MANUFACTURER) && "AFTS".equals(o0.MODEL) && nVar.secure));
    }

    private static boolean I(String str) {
        int i10 = o0.SDK_INT;
        return i10 < 18 || (i10 == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (i10 == 19 && o0.MODEL.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    private static boolean J(String str, a2 a2Var) {
        return o0.SDK_INT <= 18 && a2Var.channelCount == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
    }

    private static boolean K(String str) {
        return o0.SDK_INT == 29 && "c2.android.aac.decoder".equals(str);
    }

    private void L0(@Nullable com.google.android.exoplayer2.drm.n nVar) {
        com.google.android.exoplayer2.drm.m.a(this.codecDrmSession, nVar);
        this.codecDrmSession = nVar;
    }

    private void M0(long j6) {
        this.outputStreamOffsetUs = j6;
        if (j6 != -9223372036854775807L) {
            w0(j6);
        }
    }

    private void O() throws com.google.android.exoplayer2.q {
        if (!this.codecReceivedBuffers) {
            E0();
        } else {
            this.codecDrainState = 1;
            this.codecDrainAction = 3;
        }
    }

    @TargetApi(23)
    private boolean P() throws com.google.android.exoplayer2.q {
        if (this.codecReceivedBuffers) {
            this.codecDrainState = 1;
            if (this.codecNeedsFlushWorkaround || this.codecNeedsEosFlushWorkaround) {
                this.codecDrainAction = 3;
                return false;
            }
            this.codecDrainAction = 2;
        } else {
            X0();
        }
        return true;
    }

    private void P0(@Nullable com.google.android.exoplayer2.drm.n nVar) {
        com.google.android.exoplayer2.drm.m.a(this.sourceDrmSession, nVar);
        this.sourceDrmSession = nVar;
    }

    private boolean Q(long j6, long j10) throws com.google.android.exoplayer2.q {
        boolean z6;
        boolean zB0;
        int iD;
        if (!i0()) {
            if (this.codecNeedsEosOutputExceptionWorkaround && this.codecReceivedEos) {
                try {
                    iD = this.codec.d(this.outputBufferInfo);
                } catch (IllegalStateException unused) {
                    A0();
                    if (this.outputStreamEnded) {
                        F0();
                    }
                    return false;
                }
            } else {
                iD = this.codec.d(this.outputBufferInfo);
            }
            if (iD < 0) {
                if (iD == -2) {
                    C0();
                    return true;
                }
                if (this.codecNeedsEosPropagation && (this.inputStreamEnded || this.codecDrainState == 2)) {
                    A0();
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
                A0();
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
            this.isDecodeOnlyOutputBuffer = l0(this.outputBufferInfo.presentationTimeUs);
            long j12 = this.lastBufferInStreamPresentationTimeUs;
            long j13 = this.outputBufferInfo.presentationTimeUs;
            this.isLastOutputBuffer = j12 == j13;
            Y0(j13);
        }
        if (this.codecNeedsEosOutputExceptionWorkaround && this.codecReceivedEos) {
            try {
                l lVar = this.codec;
                ByteBuffer byteBuffer2 = this.outputBuffer;
                int i10 = this.outputIndex;
                MediaCodec.BufferInfo bufferInfo4 = this.outputBufferInfo;
                z6 = false;
                try {
                    zB0 = B0(j6, j10, lVar, byteBuffer2, i10, bufferInfo4.flags, 1, bufferInfo4.presentationTimeUs, this.isDecodeOnlyOutputBuffer, this.isLastOutputBuffer, this.outputFormat);
                } catch (IllegalStateException unused2) {
                    A0();
                    if (this.outputStreamEnded) {
                        F0();
                    }
                    return z6;
                }
            } catch (IllegalStateException unused3) {
                z6 = false;
            }
        } else {
            z6 = false;
            l lVar2 = this.codec;
            ByteBuffer byteBuffer3 = this.outputBuffer;
            int i11 = this.outputIndex;
            MediaCodec.BufferInfo bufferInfo5 = this.outputBufferInfo;
            zB0 = B0(j6, j10, lVar2, byteBuffer3, i11, bufferInfo5.flags, 1, bufferInfo5.presentationTimeUs, this.isDecodeOnlyOutputBuffer, this.isLastOutputBuffer, this.outputFormat);
        }
        if (zB0) {
            x0(this.outputBufferInfo.presentationTimeUs);
            boolean z10 = (this.outputBufferInfo.flags & 4) != 0 ? true : z6;
            K0();
            if (!z10) {
                return true;
            }
            A0();
        }
        return z6;
    }

    private boolean Q0(long j6) {
        return this.renderTimeLimitMs == -9223372036854775807L || SystemClock.elapsedRealtime() - j6 < this.renderTimeLimitMs;
    }

    private boolean S() throws com.google.android.exoplayer2.q {
        int i10;
        if (this.codec == null || (i10 = this.codecDrainState) == 2 || this.inputStreamEnded) {
            return false;
        }
        if (i10 == 0 && S0()) {
            O();
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
                J0();
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
            J0();
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
        b2 b2VarK = k();
        try {
            int iW = w(b2VarK, this.buffer, 0);
            if (hasReadStreamToEnd()) {
                this.lastBufferInStreamPresentationTimeUs = this.largestQueuedPresentationTimeUs;
            }
            if (iW == -3) {
                return false;
            }
            if (iW == -5) {
                if (this.codecReconfigurationState == 2) {
                    this.buffer.b();
                    this.codecReconfigurationState = 1;
                }
                u0(b2VarK);
                return true;
            }
            if (this.buffer.h()) {
                if (this.codecReconfigurationState == 2) {
                    this.buffer.b();
                    this.codecReconfigurationState = 1;
                }
                this.inputStreamEnded = true;
                if (!this.codecReceivedBuffers) {
                    A0();
                    return false;
                }
                try {
                    if (!this.codecNeedsEosPropagation) {
                        this.codecReceivedEos = true;
                        this.codec.i(this.inputIndex, 0, 0, 0L, 4);
                        J0();
                    }
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    throw f(e, this.inputFormat, o0.P(e.getErrorCode()));
                }
            }
            if (!this.codecReceivedBuffers && !this.buffer.j()) {
                this.buffer.b();
                if (this.codecReconfigurationState == 2) {
                    this.codecReconfigurationState = 1;
                }
                return true;
            }
            boolean zP = this.buffer.p();
            if (zP) {
                this.buffer.cryptoInfo.b(iPosition);
            }
            if (this.codecNeedsDiscardToSpsWorkaround && !zP) {
                y.b(this.buffer.data);
                if (this.buffer.data.position() == 0) {
                    return true;
                }
                this.codecNeedsDiscardToSpsWorkaround = false;
            }
            com.google.android.exoplayer2.decoder.g gVar = this.buffer;
            long jD = gVar.timeUs;
            i iVar = this.c2Mp3TimestampTracker;
            if (iVar != null) {
                jD = iVar.d(this.inputFormat, gVar);
                this.largestQueuedPresentationTimeUs = Math.max(this.largestQueuedPresentationTimeUs, this.c2Mp3TimestampTracker.b(this.inputFormat));
            }
            long j6 = jD;
            if (this.buffer.f()) {
                this.decodeOnlyPresentationTimestamps.add(Long.valueOf(j6));
            }
            if (this.waitingForFirstSampleInFormat) {
                this.formatQueue.a(j6, this.inputFormat);
                this.waitingForFirstSampleInFormat = false;
            }
            this.largestQueuedPresentationTimeUs = Math.max(this.largestQueuedPresentationTimeUs, j6);
            this.buffer.o();
            if (this.buffer.e()) {
                h0(this.buffer);
            }
            z0(this.buffer);
            try {
                if (zP) {
                    this.codec.l(this.inputIndex, 0, this.buffer.cryptoInfo, j6, 0);
                } else {
                    this.codec.i(this.inputIndex, 0, this.buffer.data.limit(), j6, 0);
                }
                J0();
                this.codecReceivedBuffers = true;
                this.codecReconfigurationState = 0;
                this.decoderCounters.queuedInputBufferCount++;
                return true;
            } catch (MediaCodec.CryptoException e2) {
                throw f(e2, this.inputFormat, o0.P(e2.getErrorCode()));
            }
        } catch (com.google.android.exoplayer2.decoder.g.a e6) {
            r0(e6);
            D0(0);
            T();
            return true;
        }
    }

    private void T() {
        try {
            this.codec.flush();
        } finally {
            H0();
        }
    }

    protected static boolean V0(a2 a2Var) {
        int i10 = a2Var.cryptoType;
        return i10 == 0 || i10 == 2;
    }

    private List<n> W(boolean z6) throws v.c {
        List<n> listC0 = c0(this.mediaCodecSelector, this.inputFormat, z6);
        if (listC0.isEmpty() && z6) {
            listC0 = c0(this.mediaCodecSelector, this.inputFormat, false);
            if (!listC0.isEmpty()) {
                com.google.android.exoplayer2.util.t.i(TAG, "Drm session requires secure decoder for " + this.inputFormat.sampleMimeType + ", but no secure decoder available. Trying to proceed with " + listC0 + ".");
            }
        }
        return listC0;
    }

    private boolean W0(a2 a2Var) throws com.google.android.exoplayer2.q {
        if (o0.SDK_INT >= 23 && this.codec != null && this.codecDrainAction != 3 && getState() != 0) {
            float fA0 = a0(this.targetPlaybackSpeed, a2Var, n());
            float f = this.codecOperatingRate;
            if (f == fA0) {
                return true;
            }
            if (fA0 == CODEC_OPERATING_RATE_UNSET) {
                O();
                return false;
            }
            if (f == CODEC_OPERATING_RATE_UNSET && fA0 <= this.assumedMinimumCodecOperatingRate) {
                return true;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", fA0);
            this.codec.b(bundle);
            this.codecOperatingRate = fA0;
        }
        return true;
    }

    @RequiresApi
    private void X0() throws com.google.android.exoplayer2.q {
        try {
            this.mediaCrypto.setMediaDrmSession(d0(this.sourceDrmSession).sessionId);
            L0(this.sourceDrmSession);
            this.codecDrainState = 0;
            this.codecDrainAction = 0;
        } catch (MediaCryptoException e) {
            throw f(e, this.inputFormat, 6006);
        }
    }

    private void k0(n nVar, MediaCrypto mediaCrypto) throws Exception {
        String str = nVar.name;
        int i10 = o0.SDK_INT;
        float f = CODEC_OPERATING_RATE_UNSET;
        float fA0 = i10 < 23 ? -1.0f : a0(this.targetPlaybackSpeed, this.inputFormat, n());
        if (fA0 > this.assumedMinimumCodecOperatingRate) {
            f = fA0;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        l.a aVarE0 = e0(nVar, this.inputFormat, mediaCrypto, f);
        if (i10 >= 31) {
            a.a(aVarE0, m());
        }
        try {
            m0.a("createCodec:" + str);
            this.codec = this.codecAdapterFactory.a(aVarE0);
            m0.c();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            this.codecInfo = nVar;
            this.codecOperatingRate = f;
            this.codecInputFormat = this.inputFormat;
            this.codecAdaptationWorkaroundMode = C(str);
            this.codecNeedsDiscardToSpsWorkaround = D(str, this.codecInputFormat);
            this.codecNeedsFlushWorkaround = I(str);
            this.codecNeedsSosFlushWorkaround = K(str);
            this.codecNeedsEosFlushWorkaround = F(str);
            this.codecNeedsEosOutputExceptionWorkaround = G(str);
            this.codecNeedsEosBufferTimestampWorkaround = E(str);
            this.codecNeedsMonoChannelCountWorkaround = J(str, this.codecInputFormat);
            this.codecNeedsEosPropagation = H(nVar) || Z();
            if (this.codec.a()) {
                this.codecReconfigured = true;
                this.codecReconfigurationState = 1;
                this.codecNeedsAdaptationWorkaroundBuffer = this.codecAdaptationWorkaroundMode != 0;
            }
            if ("c2.android.mp3.decoder".equals(nVar.name)) {
                this.c2Mp3TimestampTracker = new i();
            }
            if (getState() == 2) {
                this.codecHotswapDeadlineMs = SystemClock.elapsedRealtime() + 1000;
            }
            this.decoderCounters.decoderInitCount++;
            s0(str, aVarE0, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
        } catch (Throwable th) {
            m0.c();
            throw th;
        }
    }

    private boolean l0(long j6) {
        int size = this.decodeOnlyPresentationTimestamps.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.decodeOnlyPresentationTimestamps.get(i10).longValue() == j6) {
                this.decodeOnlyPresentationTimestamps.remove(i10);
                return true;
            }
        }
        return false;
    }

    private static boolean m0(IllegalStateException illegalStateException) {
        if (o0.SDK_INT >= 21 && n0(illegalStateException)) {
            return true;
        }
        StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
        return stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
    }

    @RequiresApi
    private static boolean n0(IllegalStateException illegalStateException) {
        return illegalStateException instanceof MediaCodec.CodecException;
    }

    @RequiresApi
    private static boolean o0(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) illegalStateException).isRecoverable();
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x009e  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:55:0x00b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x004a A[SYNTHETIC] */
    private void q0(MediaCrypto mediaCrypto, boolean z6) throws b {
        b bVar;
        b bVar2;
        if (this.availableCodecInfos == null) {
            try {
                List<n> listW = W(z6);
                ArrayDeque<n> arrayDeque = new ArrayDeque<>();
                this.availableCodecInfos = arrayDeque;
                if (this.enableDecoderFallback) {
                    arrayDeque.addAll(listW);
                } else if (!listW.isEmpty()) {
                    this.availableCodecInfos.add(listW.get(0));
                }
                this.preferredDecoderInitializationException = null;
            } catch (v.c e) {
                throw new b(this.inputFormat, e, z6, -49998);
            }
        }
        if (this.availableCodecInfos.isEmpty()) {
            throw new b(this.inputFormat, (Throwable) null, z6, -49999);
        }
        n nVarPeekFirst = this.availableCodecInfos.peekFirst();
        while (this.codec == null) {
            n nVarPeekFirst2 = this.availableCodecInfos.peekFirst();
            if (!R0(nVarPeekFirst2)) {
                return;
            }
            try {
                k0(nVarPeekFirst2, mediaCrypto);
            } catch (Exception e2) {
                if (nVarPeekFirst2 != nVarPeekFirst) {
                    throw e2;
                }
                try {
                    com.google.android.exoplayer2.util.t.i(TAG, "Preferred decoder instantiation failed. Sleeping for 50ms then retrying.");
                    Thread.sleep(50L);
                    k0(nVarPeekFirst2, mediaCrypto);
                } catch (Exception e6) {
                    com.google.android.exoplayer2.util.t.j(TAG, "Failed to initialize decoder: " + nVarPeekFirst2, e6);
                    this.availableCodecInfos.removeFirst();
                    bVar = new b(this.inputFormat, e6, z6, nVarPeekFirst2);
                    r0(bVar);
                    bVar2 = this.preferredDecoderInitializationException;
                    if (bVar2 == null) {
                        this.preferredDecoderInitializationException = bVar;
                    } else {
                        this.preferredDecoderInitializationException = bVar2.c(bVar);
                    }
                    if (!this.availableCodecInfos.isEmpty()) {
                        throw this.preferredDecoderInitializationException;
                    }
                }
                com.google.android.exoplayer2.util.t.j(TAG, "Failed to initialize decoder: " + nVarPeekFirst2, e6);
                this.availableCodecInfos.removeFirst();
                bVar = new b(this.inputFormat, e6, z6, nVarPeekFirst2);
                r0(bVar);
                bVar2 = this.preferredDecoderInitializationException;
                if (bVar2 == null) {
                    this.preferredDecoderInitializationException = bVar;
                } else {
                    this.preferredDecoderInitializationException = bVar2.c(bVar);
                }
                if (!this.availableCodecInfos.isEmpty()) {
                    throw this.preferredDecoderInitializationException;
                }
            }
        }
        this.availableCodecInfos = null;
    }

    private void z() throws com.google.android.exoplayer2.q {
        com.google.android.exoplayer2.util.a.g(!this.inputStreamEnded);
        b2 b2VarK = k();
        this.bypassSampleBuffer.b();
        do {
            this.bypassSampleBuffer.b();
            int iW = w(b2VarK, this.bypassSampleBuffer, 0);
            if (iW == -5) {
                u0(b2VarK);
                return;
            }
            if (iW != -4) {
                if (iW != -3) {
                    throw new IllegalStateException();
                }
                return;
            } else {
                if (this.bypassSampleBuffer.h()) {
                    this.inputStreamEnded = true;
                    return;
                }
                if (this.waitingForFirstSampleInFormat) {
                    a2 a2Var = (a2) com.google.android.exoplayer2.util.a.e(this.inputFormat);
                    this.outputFormat = a2Var;
                    v0(a2Var, null);
                    this.waitingForFirstSampleInFormat = false;
                }
                this.bypassSampleBuffer.o();
            }
        } while (this.bypassBatchBuffer.s(this.bypassSampleBuffer));
        this.bypassSampleBufferPending = true;
    }

    protected com.google.android.exoplayer2.decoder.i B(n nVar, a2 a2Var, a2 a2Var2) {
        return new com.google.android.exoplayer2.decoder.i(nVar.name, a2Var, a2Var2, 0, 1);
    }

    protected m L(Throwable th, @Nullable n nVar) {
        return new m(th, nVar);
    }

    protected boolean V() {
        if (this.codec == null) {
            return false;
        }
        int i10 = this.codecDrainAction;
        if (i10 == 3 || this.codecNeedsFlushWorkaround || ((this.codecNeedsSosFlushWorkaround && !this.codecHasOutputMediaFormat) || (this.codecNeedsEosFlushWorkaround && this.codecReceivedEos))) {
            F0();
            return true;
        }
        if (i10 == 2) {
            int i11 = o0.SDK_INT;
            com.google.android.exoplayer2.util.a.g(i11 >= 23);
            if (i11 >= 23) {
                try {
                    X0();
                } catch (com.google.android.exoplayer2.q e) {
                    com.google.android.exoplayer2.util.t.j(TAG, "Failed to update the DRM session, releasing the codec instead.", e);
                    F0();
                    return true;
                }
            }
        }
        T();
        return false;
    }

    protected final void Y0(long j6) throws com.google.android.exoplayer2.q {
        a2 a2VarJ = this.formatQueue.j(j6);
        if (a2VarJ == null && this.codecOutputMediaFormatChanged) {
            a2VarJ = this.formatQueue.i();
        }
        if (a2VarJ != null) {
            this.outputFormat = a2VarJ;
        } else if (!this.codecOutputMediaFormatChanged || this.outputFormat == null) {
            return;
        }
        v0(this.outputFormat, this.codecOutputMediaFormat);
        this.codecOutputMediaFormatChanged = false;
    }

    @Override // com.google.android.exoplayer2.o3
    public final int a(a2 a2Var) throws com.google.android.exoplayer2.q {
        try {
            return U0(this.mediaCodecSelector, a2Var);
        } catch (v.c e) {
            throw f(e, a2Var, 4002);
        }
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.m3
    public void d(float f, float f6) throws com.google.android.exoplayer2.q {
        this.currentPlaybackSpeed = f;
        this.targetPlaybackSpeed = f6;
        W0(this.codecInputFormat);
    }

    @Override // com.google.android.exoplayer2.m3
    public boolean isReady() {
        return this.inputFormat != null && (o() || i0() || (this.codecHotswapDeadlineMs != -9223372036854775807L && SystemClock.elapsedRealtime() < this.codecHotswapDeadlineMs));
    }

    protected final void p0() throws com.google.android.exoplayer2.q {
        a2 a2Var;
        if (this.codec != null || this.bypassEnabled || (a2Var = this.inputFormat) == null) {
            return;
        }
        if (this.sourceDrmSession == null && T0(a2Var)) {
            j0(this.inputFormat);
            return;
        }
        L0(this.sourceDrmSession);
        String str = this.inputFormat.sampleMimeType;
        com.google.android.exoplayer2.drm.n nVar = this.codecDrmSession;
        if (nVar != null) {
            if (this.mediaCrypto == null) {
                g0 g0VarD0 = d0(nVar);
                if (g0VarD0 != null) {
                    try {
                        MediaCrypto mediaCrypto = new MediaCrypto(g0VarD0.uuid, g0VarD0.sessionId);
                        this.mediaCrypto = mediaCrypto;
                        this.mediaCryptoRequiresSecureDecoder = !g0VarD0.forceAllowInsecureDecoderComponents && mediaCrypto.requiresSecureDecoderComponent(str);
                    } catch (MediaCryptoException e) {
                        throw f(e, this.inputFormat, 6006);
                    }
                } else if (this.codecDrmSession.getError() == null) {
                    return;
                }
            }
            if (g0.WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC) {
                int state = this.codecDrmSession.getState();
                if (state == 1) {
                    com.google.android.exoplayer2.drm.n.a aVar = (com.google.android.exoplayer2.drm.n.a) com.google.android.exoplayer2.util.a.e(this.codecDrmSession.getError());
                    throw f(aVar, this.inputFormat, aVar.errorCode);
                }
                if (state != 4) {
                    return;
                }
            }
        }
        try {
            q0(this.mediaCrypto, this.mediaCryptoRequiresSecureDecoder);
        } catch (b e2) {
            throw f(e2, this.inputFormat, 4001);
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void q(boolean z6, boolean z10) throws com.google.android.exoplayer2.q {
        this.decoderCounters = new com.google.android.exoplayer2.decoder.e();
    }

    @Override // com.google.android.exoplayer2.m3
    public void render(long j6, long j10) throws com.google.android.exoplayer2.q {
        boolean z6 = false;
        if (this.pendingOutputEndOfStream) {
            this.pendingOutputEndOfStream = false;
            A0();
        }
        com.google.android.exoplayer2.q qVar = this.pendingPlaybackException;
        if (qVar != null) {
            this.pendingPlaybackException = null;
            throw qVar;
        }
        try {
            if (this.outputStreamEnded) {
                G0();
                return;
            }
            if (this.inputFormat != null || D0(2)) {
                p0();
                if (this.bypassEnabled) {
                    m0.a("bypassRender");
                    while (A(j6, j10)) {
                    }
                    m0.c();
                } else if (this.codec != null) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    m0.a("drainAndFeed");
                    while (Q(j6, j10) && Q0(jElapsedRealtime)) {
                    }
                    while (S() && Q0(jElapsedRealtime)) {
                    }
                    m0.c();
                } else {
                    this.decoderCounters.skippedInputBufferCount += y(j6);
                    D0(1);
                }
                this.decoderCounters.c();
            }
        } catch (IllegalStateException e) {
            if (!m0(e)) {
                throw e;
            }
            r0(e);
            if (o0.SDK_INT >= 21 && o0(e)) {
                z6 = true;
            }
            if (z6) {
                F0();
            }
            throw i(L(e, Y()), this.inputFormat, z6, 4003);
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void v(a2[] a2VarArr, long j6, long j10) throws com.google.android.exoplayer2.q {
        if (this.outputStreamOffsetUs == -9223372036854775807L) {
            com.google.android.exoplayer2.util.a.g(this.outputStreamStartPositionUs == -9223372036854775807L);
            this.outputStreamStartPositionUs = j6;
            M0(j10);
            return;
        }
        int i10 = this.pendingOutputStreamOffsetCount;
        if (i10 == this.pendingOutputStreamOffsetsUs.length) {
            com.google.android.exoplayer2.util.t.i(TAG, "Too many stream changes, so dropping offset: " + this.pendingOutputStreamOffsetsUs[this.pendingOutputStreamOffsetCount - 1]);
        } else {
            this.pendingOutputStreamOffsetCount = i10 + 1;
        }
        long[] jArr = this.pendingOutputStreamStartPositionsUs;
        int i11 = this.pendingOutputStreamOffsetCount;
        jArr[i11 - 1] = j6;
        this.pendingOutputStreamOffsetsUs[i11 - 1] = j10;
        this.pendingOutputStreamSwitchTimesUs[i11 - 1] = this.largestQueuedPresentationTimeUs;
    }

    @CallSuper
    protected void x0(long j6) {
        while (this.pendingOutputStreamOffsetCount != 0 && j6 >= this.pendingOutputStreamSwitchTimesUs[0]) {
            this.outputStreamStartPositionUs = this.pendingOutputStreamStartPositionsUs[0];
            M0(this.pendingOutputStreamOffsetsUs[0]);
            int i10 = this.pendingOutputStreamOffsetCount - 1;
            this.pendingOutputStreamOffsetCount = i10;
            long[] jArr = this.pendingOutputStreamStartPositionsUs;
            System.arraycopy(jArr, 1, jArr, 0, i10);
            long[] jArr2 = this.pendingOutputStreamOffsetsUs;
            System.arraycopy(jArr2, 1, jArr2, 0, this.pendingOutputStreamOffsetCount);
            long[] jArr3 = this.pendingOutputStreamSwitchTimesUs;
            System.arraycopy(jArr3, 1, jArr3, 0, this.pendingOutputStreamOffsetCount);
            y0();
        }
    }

    public o(int i10, l.b bVar, q qVar, boolean z6, float f) {
        super(i10);
        this.codecAdapterFactory = bVar;
        this.mediaCodecSelector = (q) com.google.android.exoplayer2.util.a.e(qVar);
        this.enableDecoderFallback = z6;
        this.assumedMinimumCodecOperatingRate = f;
        this.noDataBuffer = com.google.android.exoplayer2.decoder.g.q();
        this.buffer = new com.google.android.exoplayer2.decoder.g(0);
        this.bypassSampleBuffer = new com.google.android.exoplayer2.decoder.g(2);
        h hVar = new h();
        this.bypassBatchBuffer = hVar;
        this.formatQueue = new k0<>();
        this.decodeOnlyPresentationTimestamps = new ArrayList<>();
        this.outputBufferInfo = new MediaCodec.BufferInfo();
        this.currentPlaybackSpeed = 1.0f;
        this.targetPlaybackSpeed = 1.0f;
        this.renderTimeLimitMs = -9223372036854775807L;
        this.pendingOutputStreamStartPositionsUs = new long[10];
        this.pendingOutputStreamOffsetsUs = new long[10];
        this.pendingOutputStreamSwitchTimesUs = new long[10];
        this.outputStreamStartPositionUs = -9223372036854775807L;
        M0(-9223372036854775807L);
        hVar.n(0);
        hVar.data.order(ByteOrder.nativeOrder());
        this.codecOperatingRate = CODEC_OPERATING_RATE_UNSET;
        this.codecAdaptationWorkaroundMode = 0;
        this.codecReconfigurationState = 0;
        this.inputIndex = -1;
        this.outputIndex = -1;
        this.codecHotswapDeadlineMs = -9223372036854775807L;
        this.largestQueuedPresentationTimeUs = -9223372036854775807L;
        this.lastBufferInStreamPresentationTimeUs = -9223372036854775807L;
        this.codecDrainState = 0;
        this.codecDrainAction = 0;
    }

    private boolean D0(int i10) throws com.google.android.exoplayer2.q {
        b2 b2VarK = k();
        this.noDataBuffer.b();
        int iW = w(b2VarK, this.noDataBuffer, i10 | 4);
        if (iW == -5) {
            u0(b2VarK);
            return true;
        }
        if (iW == -4 && this.noDataBuffer.h()) {
            this.inputStreamEnded = true;
            A0();
            return false;
        }
        return false;
    }

    private void E0() throws com.google.android.exoplayer2.q {
        F0();
        p0();
    }

    @Nullable
    private g0 d0(com.google.android.exoplayer2.drm.n nVar) throws com.google.android.exoplayer2.q {
        com.google.android.exoplayer2.decoder.b bVarB = nVar.b();
        if (bVarB != null && !(bVarB instanceof g0)) {
            throw f(new IllegalArgumentException("Expecting FrameworkCryptoConfig but found: " + bVarB), this.inputFormat, 6001);
        }
        return (g0) bVarB;
    }

    private void j0(a2 a2Var) {
        M();
        String str = a2Var.sampleMimeType;
        if (!"audio/mp4a-latm".equals(str) && !"audio/mpeg".equals(str) && !"audio/opus".equals(str)) {
            this.bypassBatchBuffer.y(1);
        } else {
            this.bypassBatchBuffer.y(32);
        }
        this.bypassEnabled = true;
    }

    @CallSuper
    protected void H0() {
        J0();
        K0();
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
        i iVar = this.c2Mp3TimestampTracker;
        if (iVar != null) {
            iVar.c();
        }
        this.codecDrainState = 0;
        this.codecDrainAction = 0;
        this.codecReconfigurationState = this.codecReconfigured ? 1 : 0;
    }

    @CallSuper
    protected void I0() {
        H0();
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

    protected final boolean U() throws com.google.android.exoplayer2.q {
        boolean zV = V();
        if (zV) {
            p0();
        }
        return zV;
    }
}
