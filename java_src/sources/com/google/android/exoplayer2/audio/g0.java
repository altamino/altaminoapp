package com.google.android.exoplayer2.audio;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.m3;
import com.google.android.exoplayer2.n3;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class g0 extends com.google.android.exoplayer2.mediacodec.o implements com.google.android.exoplayer2.util.v {
    private static final String TAG = "MediaCodecAudioRenderer";
    private static final String VIVO_BITS_PER_SAMPLE_KEY = "v-bits-per-sample";
    private boolean allowFirstBufferPositionDiscontinuity;
    private boolean allowPositionDiscontinuity;
    private final v audioSink;
    private boolean audioSinkNeedsReset;
    private int codecMaxInputSize;
    private boolean codecNeedsDiscardChannelsWorkaround;
    private final Context context;
    private long currentPositionUs;

    @Nullable
    private a2 decryptOnlyCodecFormat;
    private final t.a eventDispatcher;
    private boolean experimentalKeepAudioTrackOnSeek;

    @Nullable
    private m3.a wakeupListener;

    @RequiresApi
    private static final class b {
        @DoNotInline
        public static void a(v vVar, @Nullable Object obj) {
            vVar.setPreferredDevice((AudioDeviceInfo) obj);
        }
    }

    private final class c implements v.c {
        private c() {
        }

        @Override // com.google.android.exoplayer2.audio.v.c
        public void a(Exception exc) {
            com.google.android.exoplayer2.util.t.d(g0.TAG, "Audio sink error", exc);
            g0.this.eventDispatcher.l(exc);
        }

        @Override // com.google.android.exoplayer2.audio.v.c
        public void b(long j6) {
            g0.this.eventDispatcher.B(j6);
        }

        @Override // com.google.android.exoplayer2.audio.v.c
        public void c() {
            if (g0.this.wakeupListener != null) {
                g0.this.wakeupListener.a();
            }
        }

        @Override // com.google.android.exoplayer2.audio.v.c
        public void d() {
            if (g0.this.wakeupListener != null) {
                g0.this.wakeupListener.b();
            }
        }

        @Override // com.google.android.exoplayer2.audio.v.c
        public void onPositionDiscontinuity() {
            g0.this.h1();
        }

        @Override // com.google.android.exoplayer2.audio.v.c
        public void onSkipSilenceEnabledChanged(boolean z6) {
            g0.this.eventDispatcher.C(z6);
        }

        @Override // com.google.android.exoplayer2.audio.v.c
        public void onUnderrun(int i10, long j6, long j10) {
            g0.this.eventDispatcher.D(i10, j6, j10);
        }
    }

    public g0(Context context, com.google.android.exoplayer2.mediacodec.q qVar) {
        this(context, qVar, null, null);
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected float a0(float f, a2 a2Var, a2[] a2VarArr) {
        int iMax = -1;
        for (a2 a2Var2 : a2VarArr) {
            int i10 = a2Var2.sampleRate;
            if (i10 != -1) {
                iMax = Math.max(iMax, i10);
            }
        }
        if (iMax == -1) {
            return -1.0f;
        }
        return f * iMax;
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.m3
    @Nullable
    public com.google.android.exoplayer2.util.v getMediaClock() {
        return this;
    }

    @Override // com.google.android.exoplayer2.m3, com.google.android.exoplayer2.o3
    public String getName() {
        return TAG;
    }

    @CallSuper
    protected void h1() {
        this.allowPositionDiscontinuity = true;
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.h3.b
    public void handleMessage(int i10, @Nullable Object obj) throws com.google.android.exoplayer2.q {
        if (i10 == 2) {
            this.audioSink.setVolume(((Float) obj).floatValue());
        }
        if (i10 == 3) {
            this.audioSink.h((e) obj);
            return;
        }
        if (i10 == 6) {
            this.audioSink.l((y) obj);
            return;
        }
        switch (i10) {
            case 9:
                this.audioSink.g(((Boolean) obj).booleanValue());
                break;
            case 10:
                this.audioSink.setAudioSessionId(((Integer) obj).intValue());
                break;
            case 11:
                this.wakeupListener = (m3.a) obj;
                break;
            case 12:
                if (com.google.android.exoplayer2.util.o0.SDK_INT >= 23) {
                    b.a(this.audioSink, obj);
                }
                break;
            default:
                super.handleMessage(i10, obj);
                break;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.o, com.google.android.exoplayer2.f
    protected void p() {
        this.audioSinkNeedsReset = true;
        try {
            this.audioSink.flush();
            try {
                super.p();
            } finally {
                this.eventDispatcher.o(this.decoderCounters);
            }
        } catch (Throwable th) {
            try {
                super.p();
                throw th;
            } finally {
                this.eventDispatcher.o(this.decoderCounters);
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.o, com.google.android.exoplayer2.f
    protected void s() {
        try {
            super.s();
        } finally {
            if (this.audioSinkNeedsReset) {
                this.audioSinkNeedsReset = false;
                this.audioSink.reset();
            }
        }
    }

    public g0(Context context, com.google.android.exoplayer2.mediacodec.q qVar, @Nullable Handler handler, @Nullable t tVar) {
        this(context, qVar, handler, tVar, f.DEFAULT_AUDIO_CAPABILITIES, new g[0]);
    }

    private static boolean b1(String str) {
        if (com.google.android.exoplayer2.util.o0.SDK_INT < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(com.google.android.exoplayer2.util.o0.MANUFACTURER)) {
            String str2 = com.google.android.exoplayer2.util.o0.DEVICE;
            if (str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte")) {
                return true;
            }
        }
        return false;
    }

    private static boolean c1() {
        if (com.google.android.exoplayer2.util.o0.SDK_INT == 23) {
            String str = com.google.android.exoplayer2.util.o0.MODEL;
            if ("ZTE B2017G".equals(str) || "AXON 7 mini".equals(str)) {
                return true;
            }
        }
        return false;
    }

    private int d1(com.google.android.exoplayer2.mediacodec.n nVar, a2 a2Var) {
        int i10;
        if (!"OMX.google.raw.decoder".equals(nVar.name) || (i10 = com.google.android.exoplayer2.util.o0.SDK_INT) >= 24 || (i10 == 23 && com.google.android.exoplayer2.util.o0.r0(this.context))) {
            return a2Var.maxInputSize;
        }
        return -1;
    }

    private static List<com.google.android.exoplayer2.mediacodec.n> f1(com.google.android.exoplayer2.mediacodec.q qVar, a2 a2Var, boolean z6, v vVar) throws com.google.android.exoplayer2.mediacodec.v.c {
        com.google.android.exoplayer2.mediacodec.n nVarV;
        String str = a2Var.sampleMimeType;
        if (str == null) {
            return com.google.common.collect.a0.x();
        }
        if (vVar.a(a2Var) && (nVarV = com.google.android.exoplayer2.mediacodec.v.v()) != null) {
            return com.google.common.collect.a0.y(nVarV);
        }
        List<com.google.android.exoplayer2.mediacodec.n> listA = qVar.a(str, z6, false);
        String strM = com.google.android.exoplayer2.mediacodec.v.m(a2Var);
        return strM == null ? com.google.common.collect.a0.t(listA) : com.google.common.collect.a0.r().j(listA).j(qVar.a(strM, z6, false)).k();
    }

    private void i1() {
        long currentPositionUs = this.audioSink.getCurrentPositionUs(isEnded());
        if (currentPositionUs != Long.MIN_VALUE) {
            if (!this.allowPositionDiscontinuity) {
                currentPositionUs = Math.max(this.currentPositionUs, currentPositionUs);
            }
            this.currentPositionUs = currentPositionUs;
            this.allowPositionDiscontinuity = false;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected void G0() throws com.google.android.exoplayer2.q {
        try {
            this.audioSink.playToEndOfStream();
        } catch (v.e e) {
            throw i(e, e.format, e.isRecoverable, 5002);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected boolean T0(a2 a2Var) {
        return this.audioSink.a(a2Var);
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected int U0(com.google.android.exoplayer2.mediacodec.q qVar, a2 a2Var) throws com.google.android.exoplayer2.mediacodec.v.c {
        boolean z6;
        if (!com.google.android.exoplayer2.util.x.l(a2Var.sampleMimeType)) {
            return n3.a(0);
        }
        int i10 = com.google.android.exoplayer2.util.o0.SDK_INT >= 21 ? 32 : 0;
        boolean z10 = true;
        boolean z11 = a2Var.cryptoType != 0;
        boolean zV0 = com.google.android.exoplayer2.mediacodec.o.V0(a2Var);
        int i11 = 8;
        if (zV0 && this.audioSink.a(a2Var) && (!z11 || com.google.android.exoplayer2.mediacodec.v.v() != null)) {
            return n3.b(4, 8, i10);
        }
        if ("audio/raw".equals(a2Var.sampleMimeType) && !this.audioSink.a(a2Var)) {
            return n3.a(1);
        }
        if (!this.audioSink.a(com.google.android.exoplayer2.util.o0.X(2, a2Var.channelCount, a2Var.sampleRate))) {
            return n3.a(1);
        }
        List<com.google.android.exoplayer2.mediacodec.n> listF1 = f1(qVar, a2Var, false, this.audioSink);
        if (listF1.isEmpty()) {
            return n3.a(1);
        }
        if (!zV0) {
            return n3.a(2);
        }
        com.google.android.exoplayer2.mediacodec.n nVar = listF1.get(0);
        boolean zM = nVar.m(a2Var);
        if (!zM) {
            int i12 = 1;
            while (true) {
                if (i12 >= listF1.size()) {
                    z6 = true;
                    z10 = zM;
                    break;
                }
                com.google.android.exoplayer2.mediacodec.n nVar2 = listF1.get(i12);
                if (nVar2.m(a2Var)) {
                    z6 = false;
                    nVar = nVar2;
                    break;
                }
                i12++;
            }
        } else {
            z6 = true;
            z10 = zM;
            break;
        }
        int i13 = z10 ? 4 : 3;
        if (z10 && nVar.p(a2Var)) {
            i11 = 16;
        }
        return n3.c(i13, i11, i10, nVar.hardwareAccelerated ? 64 : 0, z6 ? 128 : 0);
    }

    @Override // com.google.android.exoplayer2.util.v
    public void b(c3 c3Var) {
        this.audioSink.b(c3Var);
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected List<com.google.android.exoplayer2.mediacodec.n> c0(com.google.android.exoplayer2.mediacodec.q qVar, a2 a2Var, boolean z6) throws com.google.android.exoplayer2.mediacodec.v.c {
        return com.google.android.exoplayer2.mediacodec.v.u(f1(qVar, a2Var, z6, this.audioSink), a2Var);
    }

    @SuppressLint({"InlinedApi"})
    protected MediaFormat g1(a2 a2Var, String str, int i10, float f) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", a2Var.channelCount);
        mediaFormat.setInteger("sample-rate", a2Var.sampleRate);
        com.google.android.exoplayer2.util.w.e(mediaFormat, a2Var.initializationData);
        com.google.android.exoplayer2.util.w.d(mediaFormat, "max-input-size", i10);
        int i11 = com.google.android.exoplayer2.util.o0.SDK_INT;
        if (i11 >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f && !c1()) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (i11 <= 28 && "audio/ac4".equals(a2Var.sampleMimeType)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (i11 >= 24 && this.audioSink.k(com.google.android.exoplayer2.util.o0.X(4, a2Var.channelCount, a2Var.sampleRate)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        if (i11 >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        return mediaFormat;
    }

    @Override // com.google.android.exoplayer2.util.v
    public c3 getPlaybackParameters() {
        return this.audioSink.getPlaybackParameters();
    }

    @Override // com.google.android.exoplayer2.mediacodec.o, com.google.android.exoplayer2.m3
    public boolean isReady() {
        return this.audioSink.hasPendingData() || super.isReady();
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected void r0(Exception exc) {
        com.google.android.exoplayer2.util.t.d(TAG, "Audio codec error", exc);
        this.eventDispatcher.k(exc);
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected void s0(String str, com.google.android.exoplayer2.mediacodec.l.a aVar, long j6, long j10) {
        this.eventDispatcher.m(str, j6, j10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected void t0(String str) {
        this.eventDispatcher.n(str);
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected void v0(a2 a2Var, @Nullable MediaFormat mediaFormat) throws com.google.android.exoplayer2.q {
        int iW;
        int i10;
        a2 a2Var2 = this.decryptOnlyCodecFormat;
        int[] iArr = null;
        if (a2Var2 != null) {
            a2Var = a2Var2;
        } else if (X() != null) {
            if ("audio/raw".equals(a2Var.sampleMimeType)) {
                iW = a2Var.pcmEncoding;
            } else if (com.google.android.exoplayer2.util.o0.SDK_INT < 24 || !mediaFormat.containsKey("pcm-encoding")) {
                iW = mediaFormat.containsKey(VIVO_BITS_PER_SAMPLE_KEY) ? com.google.android.exoplayer2.util.o0.W(mediaFormat.getInteger(VIVO_BITS_PER_SAMPLE_KEY)) : 2;
            } else {
                iW = mediaFormat.getInteger("pcm-encoding");
            }
            a2 a2VarE = new a2.b().e0("audio/raw").Y(iW).N(a2Var.encoderDelay).O(a2Var.encoderPadding).H(mediaFormat.getInteger("channel-count")).f0(mediaFormat.getInteger("sample-rate")).E();
            if (this.codecNeedsDiscardChannelsWorkaround && a2VarE.channelCount == 6 && (i10 = a2Var.channelCount) < 6) {
                iArr = new int[i10];
                for (int i11 = 0; i11 < a2Var.channelCount; i11++) {
                    iArr[i11] = i11;
                }
            }
            a2Var = a2VarE;
        }
        try {
            this.audioSink.m(a2Var, 0, iArr);
        } catch (v.a e) {
            throw f(e, e.format, 5001);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected void w0(long j6) {
        this.audioSink.f(j6);
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected void z0(com.google.android.exoplayer2.decoder.g gVar) {
        if (!this.allowFirstBufferPositionDiscontinuity || gVar.f()) {
            return;
        }
        if (Math.abs(gVar.timeUs - this.currentPositionUs) > 500000) {
            this.currentPositionUs = gVar.timeUs;
        }
        this.allowFirstBufferPositionDiscontinuity = false;
    }

    public g0(Context context, com.google.android.exoplayer2.mediacodec.q qVar, @Nullable Handler handler, @Nullable t tVar, f fVar, g... gVarArr) {
        this(context, qVar, handler, tVar, new c0.g().g((f) com.google.common.base.i.a(fVar, f.DEFAULT_AUDIO_CAPABILITIES)).i(gVarArr).f());
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected com.google.android.exoplayer2.decoder.i B(com.google.android.exoplayer2.mediacodec.n nVar, a2 a2Var, a2 a2Var2) {
        int i10;
        com.google.android.exoplayer2.decoder.i iVarE = nVar.e(a2Var, a2Var2);
        int i11 = iVarE.discardReasons;
        if (d1(nVar, a2Var2) > this.codecMaxInputSize) {
            i11 |= 64;
        }
        int i12 = i11;
        String str = nVar.name;
        if (i12 != 0) {
            i10 = 0;
        } else {
            i10 = iVarE.result;
        }
        return new com.google.android.exoplayer2.decoder.i(str, a2Var, a2Var2, i10, i12);
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected boolean B0(long j6, long j10, @Nullable com.google.android.exoplayer2.mediacodec.l lVar, @Nullable ByteBuffer byteBuffer, int i10, int i11, int i12, long j11, boolean z6, boolean z10, a2 a2Var) throws com.google.android.exoplayer2.q {
        com.google.android.exoplayer2.util.a.e(byteBuffer);
        if (this.decryptOnlyCodecFormat != null && (i11 & 2) != 0) {
            ((com.google.android.exoplayer2.mediacodec.l) com.google.android.exoplayer2.util.a.e(lVar)).e(i10, false);
            return true;
        }
        if (z6) {
            if (lVar != null) {
                lVar.e(i10, false);
            }
            this.decoderCounters.skippedOutputBufferCount += i12;
            this.audioSink.handleDiscontinuity();
            return true;
        }
        try {
            if (!this.audioSink.e(byteBuffer, j11, i12)) {
                return false;
            }
            if (lVar != null) {
                lVar.e(i10, false);
            }
            this.decoderCounters.renderedOutputBufferCount += i12;
            return true;
        } catch (v.b e) {
            throw i(e, e.format, e.isRecoverable, 5001);
        } catch (v.e e2) {
            throw i(e2, a2Var, e2.isRecoverable, 5002);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected com.google.android.exoplayer2.mediacodec.l.a e0(com.google.android.exoplayer2.mediacodec.n nVar, a2 a2Var, @Nullable MediaCrypto mediaCrypto, float f) {
        a2 a2Var2;
        this.codecMaxInputSize = e1(nVar, a2Var, n());
        this.codecNeedsDiscardChannelsWorkaround = b1(nVar.name);
        MediaFormat mediaFormatG1 = g1(a2Var, nVar.codecMimeType, this.codecMaxInputSize, f);
        if ("audio/raw".equals(nVar.mimeType) && !"audio/raw".equals(a2Var.sampleMimeType)) {
            a2Var2 = a2Var;
        } else {
            a2Var2 = null;
        }
        this.decryptOnlyCodecFormat = a2Var2;
        return com.google.android.exoplayer2.mediacodec.l.a.a(nVar, mediaFormatG1, a2Var, mediaCrypto);
    }

    protected int e1(com.google.android.exoplayer2.mediacodec.n nVar, a2 a2Var, a2[] a2VarArr) {
        int iD1 = d1(nVar, a2Var);
        if (a2VarArr.length == 1) {
            return iD1;
        }
        for (a2 a2Var2 : a2VarArr) {
            if (nVar.e(a2Var, a2Var2).result != 0) {
                iD1 = Math.max(iD1, d1(nVar, a2Var2));
            }
        }
        return iD1;
    }

    @Override // com.google.android.exoplayer2.util.v
    public long getPositionUs() {
        if (getState() == 2) {
            i1();
        }
        return this.currentPositionUs;
    }

    @Override // com.google.android.exoplayer2.mediacodec.o, com.google.android.exoplayer2.m3
    public boolean isEnded() {
        if (super.isEnded() && this.audioSink.isEnded()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.o, com.google.android.exoplayer2.f
    protected void q(boolean z6, boolean z10) throws com.google.android.exoplayer2.q {
        super.q(z6, z10);
        this.eventDispatcher.p(this.decoderCounters);
        if (j().tunneling) {
            this.audioSink.d();
        } else {
            this.audioSink.disableTunneling();
        }
        this.audioSink.i(m());
    }

    @Override // com.google.android.exoplayer2.mediacodec.o, com.google.android.exoplayer2.f
    protected void r(long j6, boolean z6) throws com.google.android.exoplayer2.q {
        super.r(j6, z6);
        if (this.experimentalKeepAudioTrackOnSeek) {
            this.audioSink.c();
        } else {
            this.audioSink.flush();
        }
        this.currentPositionUs = j6;
        this.allowFirstBufferPositionDiscontinuity = true;
        this.allowPositionDiscontinuity = true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.o, com.google.android.exoplayer2.f
    protected void t() {
        super.t();
        this.audioSink.play();
    }

    @Override // com.google.android.exoplayer2.mediacodec.o, com.google.android.exoplayer2.f
    protected void u() {
        i1();
        this.audioSink.pause();
        super.u();
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    @Nullable
    protected com.google.android.exoplayer2.decoder.i u0(b2 b2Var) throws com.google.android.exoplayer2.q {
        com.google.android.exoplayer2.decoder.i iVarU0 = super.u0(b2Var);
        this.eventDispatcher.q(b2Var.format, iVarU0);
        return iVarU0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.o
    protected void y0() {
        super.y0();
        this.audioSink.handleDiscontinuity();
    }

    public g0(Context context, com.google.android.exoplayer2.mediacodec.q qVar, @Nullable Handler handler, @Nullable t tVar, v vVar) {
        this(context, com.google.android.exoplayer2.mediacodec.l.b.DEFAULT, qVar, false, handler, tVar, vVar);
    }

    public g0(Context context, com.google.android.exoplayer2.mediacodec.q qVar, boolean z6, @Nullable Handler handler, @Nullable t tVar, v vVar) {
        this(context, com.google.android.exoplayer2.mediacodec.l.b.DEFAULT, qVar, z6, handler, tVar, vVar);
    }

    public g0(Context context, com.google.android.exoplayer2.mediacodec.l.b bVar, com.google.android.exoplayer2.mediacodec.q qVar, boolean z6, @Nullable Handler handler, @Nullable t tVar, v vVar) {
        super(1, bVar, qVar, z6, 44100.0f);
        this.context = context.getApplicationContext();
        this.audioSink = vVar;
        this.eventDispatcher = new t.a(handler, tVar);
        vVar.j(new c());
    }
}
