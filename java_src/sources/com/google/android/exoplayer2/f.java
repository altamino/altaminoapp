package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public abstract class f implements m3, o3 {

    @Nullable
    private p3 configuration;
    private int index;
    private long lastResetPositionUs;
    private com.google.android.exoplayer2.analytics.t1 playerId;
    private int state;

    @Nullable
    private com.google.android.exoplayer2.source.w0 stream;

    @Nullable
    private a2[] streamFormats;
    private boolean streamIsFinal;
    private long streamOffsetUs;
    private boolean throwRendererExceptionIsExecuting;
    private final int trackType;
    private final b2 formatHolder = new b2();
    private long readingPositionUs = Long.MIN_VALUE;

    private void x(long j6, boolean z6) throws q {
        this.streamIsFinal = false;
        this.lastResetPositionUs = j6;
        this.readingPositionUs = j6;
        r(j6, z6);
    }

    @Override // com.google.android.exoplayer2.m3
    public final long c() {
        return this.readingPositionUs;
    }

    @Override // com.google.android.exoplayer2.m3
    public /* synthetic */ void d(float f, float f6) throws q {
        l3.a(this, f, f6);
    }

    @Override // com.google.android.exoplayer2.m3
    public final void e(int i10, com.google.android.exoplayer2.analytics.t1 t1Var) {
        this.index = i10;
        this.playerId = t1Var;
    }

    protected final q f(Throwable th, @Nullable a2 a2Var, int i10) {
        return i(th, a2Var, false, i10);
    }

    @Override // com.google.android.exoplayer2.m3
    public final o3 getCapabilities() {
        return this;
    }

    @Override // com.google.android.exoplayer2.m3
    @Nullable
    public com.google.android.exoplayer2.util.v getMediaClock() {
        return null;
    }

    @Override // com.google.android.exoplayer2.m3
    public final int getState() {
        return this.state;
    }

    @Override // com.google.android.exoplayer2.m3
    @Nullable
    public final com.google.android.exoplayer2.source.w0 getStream() {
        return this.stream;
    }

    @Override // com.google.android.exoplayer2.m3, com.google.android.exoplayer2.o3
    public final int getTrackType() {
        return this.trackType;
    }

    @Override // com.google.android.exoplayer2.m3
    public final void h(p3 p3Var, a2[] a2VarArr, com.google.android.exoplayer2.source.w0 w0Var, long j6, boolean z6, boolean z10, long j10, long j11) throws q {
        com.google.android.exoplayer2.util.a.g(this.state == 0);
        this.configuration = p3Var;
        this.state = 1;
        q(z6, z10);
        g(a2VarArr, w0Var, j10, j11);
        x(j6, z6);
    }

    @Override // com.google.android.exoplayer2.h3.b
    public void handleMessage(int i10, @Nullable Object obj) throws q {
    }

    @Override // com.google.android.exoplayer2.m3
    public final boolean hasReadStreamToEnd() {
        return this.readingPositionUs == Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.m3
    public final boolean isCurrentStreamFinal() {
        return this.streamIsFinal;
    }

    protected final int l() {
        return this.index;
    }

    protected void p() {
    }

    protected void q(boolean z6, boolean z10) throws q {
    }

    protected void r(long j6, boolean z6) throws q {
    }

    @Override // com.google.android.exoplayer2.m3
    public final void resetPosition(long j6) throws q {
        x(j6, false);
    }

    protected void s() {
    }

    @Override // com.google.android.exoplayer2.m3
    public final void setCurrentStreamFinal() {
        this.streamIsFinal = true;
    }

    @Override // com.google.android.exoplayer2.o3
    public int supportsMixedMimeTypeAdaptation() throws q {
        return 0;
    }

    protected void t() throws q {
    }

    protected void u() {
    }

    protected void v(a2[] a2VarArr, long j6, long j10) throws q {
    }

    @Override // com.google.android.exoplayer2.m3
    public final void disable() {
        com.google.android.exoplayer2.util.a.g(this.state == 1);
        this.formatHolder.a();
        this.state = 0;
        this.stream = null;
        this.streamFormats = null;
        this.streamIsFinal = false;
        p();
    }

    @Override // com.google.android.exoplayer2.m3
    public final void g(a2[] a2VarArr, com.google.android.exoplayer2.source.w0 w0Var, long j6, long j10) throws q {
        com.google.android.exoplayer2.util.a.g(!this.streamIsFinal);
        this.stream = w0Var;
        if (this.readingPositionUs == Long.MIN_VALUE) {
            this.readingPositionUs = j6;
        }
        this.streamFormats = a2VarArr;
        this.streamOffsetUs = j10;
        v(a2VarArr, j6, j10);
    }

    protected final q i(Throwable th, @Nullable a2 a2Var, boolean z6, int i10) {
        int iF;
        if (a2Var == null || this.throwRendererExceptionIsExecuting) {
            iF = 4;
        } else {
            this.throwRendererExceptionIsExecuting = true;
            try {
                iF = n3.f(a(a2Var));
                this.throwRendererExceptionIsExecuting = false;
            } catch (q unused) {
                this.throwRendererExceptionIsExecuting = false;
                iF = 4;
            } catch (Throwable th2) {
                this.throwRendererExceptionIsExecuting = false;
                throw th2;
            }
        }
        return q.g(th, getName(), l(), a2Var, iF, z6, i10);
    }

    protected final p3 j() {
        return (p3) com.google.android.exoplayer2.util.a.e(this.configuration);
    }

    protected final b2 k() {
        this.formatHolder.a();
        return this.formatHolder;
    }

    protected final com.google.android.exoplayer2.analytics.t1 m() {
        return (com.google.android.exoplayer2.analytics.t1) com.google.android.exoplayer2.util.a.e(this.playerId);
    }

    @Override // com.google.android.exoplayer2.m3
    public final void maybeThrowStreamError() throws IOException {
        ((com.google.android.exoplayer2.source.w0) com.google.android.exoplayer2.util.a.e(this.stream)).maybeThrowError();
    }

    protected final a2[] n() {
        return (a2[]) com.google.android.exoplayer2.util.a.e(this.streamFormats);
    }

    @Override // com.google.android.exoplayer2.m3
    public final void reset() {
        com.google.android.exoplayer2.util.a.g(this.state == 0);
        this.formatHolder.a();
        s();
    }

    @Override // com.google.android.exoplayer2.m3
    public final void start() throws q {
        com.google.android.exoplayer2.util.a.g(this.state == 1);
        this.state = 2;
        t();
    }

    @Override // com.google.android.exoplayer2.m3
    public final void stop() {
        com.google.android.exoplayer2.util.a.g(this.state == 2);
        this.state = 1;
        u();
    }

    protected final int w(b2 b2Var, com.google.android.exoplayer2.decoder.g gVar, int i10) {
        int iA = ((com.google.android.exoplayer2.source.w0) com.google.android.exoplayer2.util.a.e(this.stream)).a(b2Var, gVar, i10);
        if (iA == -4) {
            if (gVar.h()) {
                this.readingPositionUs = Long.MIN_VALUE;
                return this.streamIsFinal ? -4 : -3;
            }
            long j6 = gVar.timeUs + this.streamOffsetUs;
            gVar.timeUs = j6;
            this.readingPositionUs = Math.max(this.readingPositionUs, j6);
        } else if (iA == -5) {
            a2 a2Var = (a2) com.google.android.exoplayer2.util.a.e(b2Var.format);
            if (a2Var.subsampleOffsetUs != Long.MAX_VALUE) {
                b2Var.format = a2Var.b().i0(a2Var.subsampleOffsetUs + this.streamOffsetUs).E();
            }
        }
        return iA;
    }

    protected int y(long j6) {
        return ((com.google.android.exoplayer2.source.w0) com.google.android.exoplayer2.util.a.e(this.stream)).skipData(j6 - this.streamOffsetUs);
    }

    public f(int i10) {
        this.trackType = i10;
    }

    protected final boolean o() {
        if (hasReadStreamToEnd()) {
            return this.streamIsFinal;
        }
        return ((com.google.android.exoplayer2.source.w0) com.google.android.exoplayer2.util.a.e(this.stream)).isReady();
    }
}
