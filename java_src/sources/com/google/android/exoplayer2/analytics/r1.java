package com.google.android.exoplayer2.analytics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.exoplayer.analytics.d2;
import androidx.media3.exoplayer.analytics.k3;
import androidx.media3.exoplayer.analytics.o2;
import androidx.media3.exoplayer.analytics.o3;
import androidx.media3.exoplayer.analytics.p2;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.e4;
import com.google.android.exoplayer2.i2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.v2;
import com.google.android.exoplayer2.x1;
import com.google.android.exoplayer2.z2;
import com.google.android.exoplayer2.z3;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
public final class r1 implements c, s1.a {

    @Nullable
    private String activeSessionId;
    private int audioUnderruns;
    private final Context context;

    @Nullable
    private a2 currentAudioFormat;

    @Nullable
    private a2 currentTextFormat;

    @Nullable
    private a2 currentVideoFormat;
    private int discontinuityReason;
    private int droppedFrames;
    private boolean hasFatalError;
    private int ioErrorType;
    private boolean isSeeking;

    @Nullable
    private PlaybackMetrics.Builder metricsBuilder;

    @Nullable
    private b pendingAudioFormat;

    @Nullable
    private z2 pendingPlayerError;

    @Nullable
    private b pendingTextFormat;

    @Nullable
    private b pendingVideoFormat;
    private final PlaybackSession playbackSession;
    private int playedFrames;
    private boolean reportedEventsForCurrentSession;
    private final s1 sessionManager;
    private final z3.d window = new z3.d();
    private final z3.b period = new z3.b();
    private final HashMap<String, Long> bandwidthBytes = new HashMap<>();
    private final HashMap<String, Long> bandwidthTimeMs = new HashMap<>();
    private final long startTimeMs = SystemClock.elapsedRealtime();
    private int currentPlaybackState = 0;
    private int currentNetworkType = 0;

    private static int E0(DrmInitData drmInitData) {
        for (int i10 = 0; i10 < drmInitData.schemeDataCount; i10++) {
            UUID uuid = drmInitData.e(i10).uuid;
            if (uuid.equals(com.google.android.exoplayer2.i.WIDEVINE_UUID)) {
                return 3;
            }
            if (uuid.equals(com.google.android.exoplayer2.i.PLAYREADY_UUID)) {
                return 2;
            }
            if (uuid.equals(com.google.android.exoplayer2.i.CLEARKEY_UUID)) {
                return 6;
            }
        }
        return 1;
    }

    private static int K0(int i10) {
        if (i10 == 1) {
            return 2;
        }
        if (i10 != 2) {
            return i10 != 3 ? 1 : 4;
        }
        return 3;
    }

    private void L0(c.b bVar) {
        for (int i10 = 0; i10 < bVar.d(); i10++) {
            int iB = bVar.b(i10);
            c.a aVarC = bVar.c(iB);
            if (iB == 0) {
                this.sessionManager.d(aVarC);
            } else if (iB == 11) {
                this.sessionManager.c(aVarC, this.discontinuityReason);
            } else {
                this.sessionManager.f(aVarC);
            }
        }
    }

    private void P0(d3 d3Var, c.b bVar, long j6) {
        if (bVar.a(2)) {
            e4 e4VarE = d3Var.e();
            boolean zD = e4VarE.d(2);
            boolean zD2 = e4VarE.d(1);
            boolean zD3 = e4VarE.d(3);
            if (zD || zD2 || zD3) {
                if (!zD) {
                    U0(j6, null, 0);
                }
                if (!zD2) {
                    Q0(j6, null, 0);
                }
                if (!zD3) {
                    S0(j6, null, 0);
                }
            }
        }
        if (z0(this.pendingVideoFormat)) {
            b bVar2 = this.pendingVideoFormat;
            a2 a2Var = bVar2.format;
            if (a2Var.height != -1) {
                U0(j6, a2Var, bVar2.selectionReason);
                this.pendingVideoFormat = null;
            }
        }
        if (z0(this.pendingAudioFormat)) {
            b bVar3 = this.pendingAudioFormat;
            Q0(j6, bVar3.format, bVar3.selectionReason);
            this.pendingAudioFormat = null;
        }
        if (z0(this.pendingTextFormat)) {
            b bVar4 = this.pendingTextFormat;
            S0(j6, bVar4.format, bVar4.selectionReason);
            this.pendingTextFormat = null;
        }
    }

    private void R0(d3 d3Var, c.b bVar) {
        DrmInitData drmInitDataD0;
        if (bVar.a(0)) {
            c.a aVarC = bVar.c(0);
            if (this.metricsBuilder != null) {
                T0(aVarC.timeline, aVarC.mediaPeriodId);
            }
        }
        if (bVar.a(2) && this.metricsBuilder != null && (drmInitDataD0 = D0(d3Var.e().b())) != null) {
            p2.a(com.google.android.exoplayer2.util.o0.j(this.metricsBuilder)).setDrmType(E0(drmInitDataD0));
        }
        if (bVar.a(1011)) {
            this.audioUnderruns++;
        }
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void A(c.a aVar, int i10, long j6, long j10) {
        com.google.android.exoplayer2.analytics.b.k(this, aVar, i10, j6, j10);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void B(c.a aVar, String str, long j6, long j10) {
        com.google.android.exoplayer2.analytics.b.c(this, aVar, str, j6, j10);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void C(c.a aVar, com.google.android.exoplayer2.source.u uVar, com.google.android.exoplayer2.source.x xVar) {
        com.google.android.exoplayer2.analytics.b.E(this, aVar, uVar, xVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void D(c.a aVar, boolean z6) {
        com.google.android.exoplayer2.analytics.b.D(this, aVar, z6);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void E(c.a aVar, Exception exc) {
        com.google.android.exoplayer2.analytics.b.a(this, aVar, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public void G(c.a aVar, d3.e eVar, d3.e eVar2, int i10) {
        if (i10 == 1) {
            this.isSeeking = true;
        }
        this.discontinuityReason = i10;
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void H(c.a aVar, d3.b bVar) {
        com.google.android.exoplayer2.analytics.b.l(this, aVar, bVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void I(c.a aVar, Object obj, long j6) {
        com.google.android.exoplayer2.analytics.b.T(this, aVar, obj, j6);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void J(c.a aVar, int i10, com.google.android.exoplayer2.decoder.e eVar) {
        com.google.android.exoplayer2.analytics.b.o(this, aVar, i10, eVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void K(c.a aVar, com.google.android.exoplayer2.o oVar) {
        com.google.android.exoplayer2.analytics.b.s(this, aVar, oVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void L(c.a aVar, String str) {
        com.google.android.exoplayer2.analytics.b.g0(this, aVar, str);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void M(c.a aVar, int i10) {
        com.google.android.exoplayer2.analytics.b.y(this, aVar, i10);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void N(c.a aVar, Exception exc) {
        com.google.android.exoplayer2.analytics.b.z(this, aVar, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void O(c.a aVar, boolean z6) {
        com.google.android.exoplayer2.analytics.b.H(this, aVar, z6);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void P(c.a aVar, n2 n2Var) {
        com.google.android.exoplayer2.analytics.b.J(this, aVar, n2Var);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void Q(c.a aVar, z2 z2Var) {
        com.google.android.exoplayer2.analytics.b.P(this, aVar, z2Var);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void R(c.a aVar, String str, long j6) {
        com.google.android.exoplayer2.analytics.b.b(this, aVar, str, j6);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void T(c.a aVar, int i10, int i11) {
        com.google.android.exoplayer2.analytics.b.Z(this, aVar, i10, i11);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void U(c.a aVar, boolean z6, int i10) {
        com.google.android.exoplayer2.analytics.b.L(this, aVar, z6, i10);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void V(c.a aVar, a2 a2Var, com.google.android.exoplayer2.decoder.i iVar) {
        com.google.android.exoplayer2.analytics.b.k0(this, aVar, a2Var, iVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void W(c.a aVar, int i10) {
        com.google.android.exoplayer2.analytics.b.a0(this, aVar, i10);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void X(c.a aVar) {
        com.google.android.exoplayer2.analytics.b.W(this, aVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void Y(c.a aVar, e4 e4Var) {
        com.google.android.exoplayer2.analytics.b.c0(this, aVar, e4Var);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void Z(c.a aVar) {
        com.google.android.exoplayer2.analytics.b.x(this, aVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void a(c.a aVar, long j6, int i10) {
        com.google.android.exoplayer2.analytics.b.i0(this, aVar, j6, i10);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void a0(c.a aVar) {
        com.google.android.exoplayer2.analytics.b.v(this, aVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void b(c.a aVar) {
        com.google.android.exoplayer2.analytics.b.w(this, aVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void c(c.a aVar, int i10) {
        com.google.android.exoplayer2.analytics.b.O(this, aVar, i10);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void c0(c.a aVar, int i10, boolean z6) {
        com.google.android.exoplayer2.analytics.b.t(this, aVar, i10, z6);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void d(c.a aVar, com.google.android.exoplayer2.decoder.e eVar) {
        com.google.android.exoplayer2.analytics.b.f(this, aVar, eVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void d0(c.a aVar, int i10, int i11, int i12, float f) {
        com.google.android.exoplayer2.analytics.b.l0(this, aVar, i10, i11, i12, f);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void e0(c.a aVar, int i10, String str, long j6) {
        com.google.android.exoplayer2.analytics.b.q(this, aVar, i10, str, j6);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void f(c.a aVar, int i10, com.google.android.exoplayer2.decoder.e eVar) {
        com.google.android.exoplayer2.analytics.b.p(this, aVar, i10, eVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void f0(c.a aVar, int i10) {
        com.google.android.exoplayer2.analytics.b.S(this, aVar, i10);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void g(c.a aVar, Metadata metadata) {
        com.google.android.exoplayer2.analytics.b.K(this, aVar, metadata);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void g0(c.a aVar, com.google.android.exoplayer2.text.f fVar) {
        com.google.android.exoplayer2.analytics.b.m(this, aVar, fVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void h(c.a aVar, boolean z6, int i10) {
        com.google.android.exoplayer2.analytics.b.R(this, aVar, z6, i10);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void h0(c.a aVar, c3 c3Var) {
        com.google.android.exoplayer2.analytics.b.M(this, aVar, c3Var);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void i(c.a aVar, int i10) {
        com.google.android.exoplayer2.analytics.b.N(this, aVar, i10);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void i0(c.a aVar, com.google.android.exoplayer2.decoder.e eVar) {
        com.google.android.exoplayer2.analytics.b.e(this, aVar, eVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void j(c.a aVar, a2 a2Var) {
        com.google.android.exoplayer2.analytics.b.j0(this, aVar, a2Var);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void j0(c.a aVar, com.google.android.exoplayer2.decoder.e eVar) {
        com.google.android.exoplayer2.analytics.b.h0(this, aVar, eVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void k(c.a aVar, long j6) {
        com.google.android.exoplayer2.analytics.b.i(this, aVar, j6);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void k0(c.a aVar, int i10) {
        com.google.android.exoplayer2.analytics.b.U(this, aVar, i10);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void l(c.a aVar, boolean z6) {
        com.google.android.exoplayer2.analytics.b.X(this, aVar, z6);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void l0(c.a aVar) {
        com.google.android.exoplayer2.analytics.b.Q(this, aVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void m(c.a aVar, int i10, long j6) {
        com.google.android.exoplayer2.analytics.b.B(this, aVar, i10, j6);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void n(c.a aVar, Exception exc) {
        com.google.android.exoplayer2.analytics.b.j(this, aVar, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void o(c.a aVar, boolean z6) {
        com.google.android.exoplayer2.analytics.b.Y(this, aVar, z6);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void p(c.a aVar, List list) {
        com.google.android.exoplayer2.analytics.b.n(this, aVar, list);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void p0(c.a aVar, a2 a2Var) {
        com.google.android.exoplayer2.analytics.b.g(this, aVar, a2Var);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void q(c.a aVar, String str, long j6, long j10) {
        com.google.android.exoplayer2.analytics.b.f0(this, aVar, str, j6, j10);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void q0(c.a aVar) {
        com.google.android.exoplayer2.analytics.b.u(this, aVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void r(c.a aVar, Exception exc) {
        com.google.android.exoplayer2.analytics.b.d0(this, aVar, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void r0(c.a aVar, float f) {
        com.google.android.exoplayer2.analytics.b.m0(this, aVar, f);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void s(c.a aVar, i2 i2Var, int i10) {
        com.google.android.exoplayer2.analytics.b.I(this, aVar, i2Var, i10);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void s0(c.a aVar, com.google.android.exoplayer2.source.u uVar, com.google.android.exoplayer2.source.x xVar) {
        com.google.android.exoplayer2.analytics.b.F(this, aVar, uVar, xVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void t(c.a aVar, com.google.android.exoplayer2.trackselection.z zVar) {
        com.google.android.exoplayer2.analytics.b.b0(this, aVar, zVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void t0(c.a aVar, String str) {
        com.google.android.exoplayer2.analytics.b.d(this, aVar, str);
    }

    @Override // com.google.android.exoplayer2.analytics.s1.a
    public void u0(c.a aVar, String str) {
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void v(c.a aVar, int i10, a2 a2Var) {
        com.google.android.exoplayer2.analytics.b.r(this, aVar, i10, a2Var);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void v0(c.a aVar, String str, long j6) {
        com.google.android.exoplayer2.analytics.b.e0(this, aVar, str, j6);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void w(c.a aVar) {
        com.google.android.exoplayer2.analytics.b.V(this, aVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void w0(c.a aVar, a2 a2Var, com.google.android.exoplayer2.decoder.i iVar) {
        com.google.android.exoplayer2.analytics.b.h(this, aVar, a2Var, iVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void x(c.a aVar, com.google.android.exoplayer2.source.u uVar, com.google.android.exoplayer2.source.x xVar) {
        com.google.android.exoplayer2.analytics.b.G(this, aVar, uVar, xVar);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void x0(c.a aVar, boolean z6) {
        com.google.android.exoplayer2.analytics.b.C(this, aVar, z6);
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public void y(c.a aVar, z2 z2Var) {
        this.pendingPlayerError = z2Var;
    }

    @Override // com.google.android.exoplayer2.analytics.s1.a
    public void y0(c.a aVar, String str, String str2) {
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public /* synthetic */ void z(c.a aVar) {
        com.google.android.exoplayer2.analytics.b.A(this, aVar);
    }

    private static final class a {
        public final int errorCode;
        public final int subErrorCode;

        public a(int i10, int i11) {
            this.errorCode = i10;
            this.subErrorCode = i11;
        }
    }

    private static final class b {
        public final a2 format;
        public final int selectionReason;
        public final String sessionId;

        public b(a2 a2Var, int i10, String str) {
            this.format = a2Var;
            this.selectionReason = i10;
            this.sessionId = str;
        }
    }

    @Nullable
    public static r1 A0(Context context) {
        MediaMetricsManager mediaMetricsManagerA = o3.a(context.getSystemService("media_metrics"));
        if (mediaMetricsManagerA == null) {
            return null;
        }
        return new r1(context, mediaMetricsManagerA.createPlaybackSession());
    }

    private void B0() {
        PlaybackMetrics.Builder builder = this.metricsBuilder;
        if (builder != null && this.reportedEventsForCurrentSession) {
            builder.setAudioUnderrunCount(this.audioUnderruns);
            this.metricsBuilder.setVideoFramesDropped(this.droppedFrames);
            this.metricsBuilder.setVideoFramesPlayed(this.playedFrames);
            Long l = this.bandwidthTimeMs.get(this.activeSessionId);
            this.metricsBuilder.setNetworkTransferDurationMillis(l == null ? 0L : l.longValue());
            Long l6 = this.bandwidthBytes.get(this.activeSessionId);
            this.metricsBuilder.setNetworkBytesRead(l6 == null ? 0L : l6.longValue());
            this.metricsBuilder.setStreamSource((l6 == null || l6.longValue() <= 0) ? 0 : 1);
            this.playbackSession.reportPlaybackMetrics(this.metricsBuilder.build());
        }
        this.metricsBuilder = null;
        this.activeSessionId = null;
        this.audioUnderruns = 0;
        this.droppedFrames = 0;
        this.playedFrames = 0;
        this.currentVideoFormat = null;
        this.currentAudioFormat = null;
        this.currentTextFormat = null;
        this.reportedEventsForCurrentSession = false;
    }

    private static a F0(z2 z2Var, Context context, boolean z6) {
        int i10;
        boolean z10;
        if (z2Var.errorCode == 1001) {
            return new a(20, 0);
        }
        if (z2Var instanceof com.google.android.exoplayer2.q) {
            com.google.android.exoplayer2.q qVar = (com.google.android.exoplayer2.q) z2Var;
            z10 = qVar.type == 1;
            i10 = qVar.rendererFormatSupport;
        } else {
            i10 = 0;
            z10 = false;
        }
        Throwable th = (Throwable) com.google.android.exoplayer2.util.a.e(z2Var.getCause());
        if (!(th instanceof IOException)) {
            if (z10 && (i10 == 0 || i10 == 1)) {
                return new a(35, 0);
            }
            if (z10 && i10 == 3) {
                return new a(15, 0);
            }
            if (z10 && i10 == 2) {
                return new a(23, 0);
            }
            if (th instanceof com.google.android.exoplayer2.mediacodec.o.b) {
                return new a(13, com.google.android.exoplayer2.util.o0.Q(((com.google.android.exoplayer2.mediacodec.o.b) th).diagnosticInfo));
            }
            if (th instanceof com.google.android.exoplayer2.mediacodec.m) {
                return new a(14, com.google.android.exoplayer2.util.o0.Q(((com.google.android.exoplayer2.mediacodec.m) th).diagnosticInfo));
            }
            if (th instanceof OutOfMemoryError) {
                return new a(14, 0);
            }
            if (th instanceof com.google.android.exoplayer2.audio.v.b) {
                return new a(17, ((com.google.android.exoplayer2.audio.v.b) th).audioTrackState);
            }
            if (th instanceof com.google.android.exoplayer2.audio.v.e) {
                return new a(18, ((com.google.android.exoplayer2.audio.v.e) th).errorCode);
            }
            if (com.google.android.exoplayer2.util.o0.SDK_INT < 16 || !(th instanceof MediaCodec.CryptoException)) {
                return new a(22, 0);
            }
            int errorCode = ((MediaCodec.CryptoException) th).getErrorCode();
            return new a(C0(errorCode), errorCode);
        }
        if (th instanceof com.google.android.exoplayer2.upstream.b0) {
            return new a(5, ((com.google.android.exoplayer2.upstream.b0) th).responseCode);
        }
        if ((th instanceof com.google.android.exoplayer2.upstream.a0) || (th instanceof v2)) {
            return new a(z6 ? 10 : 11, 0);
        }
        if ((th instanceof com.google.android.exoplayer2.upstream.z) || (th instanceof com.google.android.exoplayer2.upstream.n0.a)) {
            if (com.google.android.exoplayer2.util.a0.d(context).f() == 1) {
                return new a(3, 0);
            }
            Throwable cause = th.getCause();
            if (cause instanceof UnknownHostException) {
                return new a(6, 0);
            }
            if (cause instanceof SocketTimeoutException) {
                return new a(7, 0);
            }
            return ((th instanceof com.google.android.exoplayer2.upstream.z) && ((com.google.android.exoplayer2.upstream.z) th).type == 1) ? new a(4, 0) : new a(8, 0);
        }
        if (z2Var.errorCode == 1002) {
            return new a(21, 0);
        }
        if (!(th instanceof com.google.android.exoplayer2.drm.n.a)) {
            if (!(th instanceof com.google.android.exoplayer2.upstream.x.b) || !(th.getCause() instanceof FileNotFoundException)) {
                return new a(9, 0);
            }
            Throwable cause2 = ((Throwable) com.google.android.exoplayer2.util.a.e(th.getCause())).getCause();
            return (com.google.android.exoplayer2.util.o0.SDK_INT >= 21 && (cause2 instanceof ErrnoException) && ((ErrnoException) cause2).errno == OsConstants.EACCES) ? new a(32, 0) : new a(31, 0);
        }
        Throwable th2 = (Throwable) com.google.android.exoplayer2.util.a.e(th.getCause());
        int i11 = com.google.android.exoplayer2.util.o0.SDK_INT;
        if (i11 >= 21 && (th2 instanceof MediaDrm.MediaDrmStateException)) {
            int iQ = com.google.android.exoplayer2.util.o0.Q(((MediaDrm.MediaDrmStateException) th2).getDiagnosticInfo());
            return new a(C0(iQ), iQ);
        }
        if (i11 >= 23 && (th2 instanceof MediaDrmResetException)) {
            return new a(27, 0);
        }
        if (i11 >= 18 && (th2 instanceof NotProvisionedException)) {
            return new a(24, 0);
        }
        if (i11 >= 18 && (th2 instanceof DeniedByServerException)) {
            return new a(29, 0);
        }
        if (th2 instanceof com.google.android.exoplayer2.drm.o0) {
            return new a(23, 0);
        }
        return th2 instanceof com.google.android.exoplayer2.drm.h.e ? new a(28, 0) : new a(30, 0);
    }

    private static Pair<String, String> G0(String str) {
        String[] strArrH0 = com.google.android.exoplayer2.util.o0.H0(str, "-");
        return Pair.create(strArrH0[0], strArrH0.length >= 2 ? strArrH0[1] : null);
    }

    private static int J0(i2 i2Var) {
        i2.h hVar = i2Var.localConfiguration;
        if (hVar == null) {
            return 0;
        }
        int iK0 = com.google.android.exoplayer2.util.o0.k0(hVar.uri, hVar.mimeType);
        if (iK0 == 0) {
            return 3;
        }
        if (iK0 != 1) {
            return iK0 != 2 ? 1 : 4;
        }
        return 5;
    }

    private void M0(long j6) {
        int iI0 = I0(this.context);
        if (iI0 != this.currentNetworkType) {
            this.currentNetworkType = iI0;
            this.playbackSession.reportNetworkEvent(k3.a().setNetworkType(iI0).setTimeSinceCreatedMillis(j6 - this.startTimeMs).build());
        }
    }

    private void N0(long j6) {
        z2 z2Var = this.pendingPlayerError;
        if (z2Var == null) {
            return;
        }
        a aVarF0 = F0(z2Var, this.context, this.ioErrorType == 4);
        this.playbackSession.reportPlaybackErrorEvent(androidx.media3.exoplayer.analytics.s1.a().setTimeSinceCreatedMillis(j6 - this.startTimeMs).setErrorCode(aVarF0.errorCode).setSubErrorCode(aVarF0.subErrorCode).setException(z2Var).build());
        this.reportedEventsForCurrentSession = true;
        this.pendingPlayerError = null;
    }

    private void Q0(long j6, @Nullable a2 a2Var, int i10) {
        if (com.google.android.exoplayer2.util.o0.c(this.currentAudioFormat, a2Var)) {
            return;
        }
        if (this.currentAudioFormat == null && i10 == 0) {
            i10 = 1;
        }
        this.currentAudioFormat = a2Var;
        V0(0, j6, a2Var, i10);
    }

    private void S0(long j6, @Nullable a2 a2Var, int i10) {
        if (com.google.android.exoplayer2.util.o0.c(this.currentTextFormat, a2Var)) {
            return;
        }
        if (this.currentTextFormat == null && i10 == 0) {
            i10 = 1;
        }
        this.currentTextFormat = a2Var;
        V0(2, j6, a2Var, i10);
    }

    private void T0(z3 z3Var, @Nullable com.google.android.exoplayer2.source.b0.b bVar) {
        int iF;
        PlaybackMetrics.Builder builder = this.metricsBuilder;
        if (bVar == null || (iF = z3Var.f(bVar.periodUid)) == -1) {
            return;
        }
        z3Var.j(iF, this.period);
        z3Var.r(this.period.windowIndex, this.window);
        builder.setStreamType(J0(this.window.mediaItem));
        z3.d dVar = this.window;
        if (dVar.durationUs != -9223372036854775807L && !dVar.isPlaceholder && !dVar.isDynamic && !dVar.i()) {
            builder.setMediaDurationMillis(this.window.g());
        }
        builder.setPlaybackType(this.window.i() ? 2 : 1);
        this.reportedEventsForCurrentSession = true;
    }

    private void U0(long j6, @Nullable a2 a2Var, int i10) {
        if (com.google.android.exoplayer2.util.o0.c(this.currentVideoFormat, a2Var)) {
            return;
        }
        if (this.currentVideoFormat == null && i10 == 0) {
            i10 = 1;
        }
        this.currentVideoFormat = a2Var;
        V0(1, j6, a2Var, i10);
    }

    private boolean z0(@Nullable b bVar) {
        return bVar != null && bVar.sessionId.equals(this.sessionManager.a());
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public void F(c.a aVar, com.google.android.exoplayer2.source.x xVar) {
        if (aVar.mediaPeriodId == null) {
            return;
        }
        b bVar = new b((a2) com.google.android.exoplayer2.util.a.e(xVar.trackFormat), xVar.trackSelectionReason, this.sessionManager.g(aVar.timeline, (com.google.android.exoplayer2.source.b0.b) com.google.android.exoplayer2.util.a.e(aVar.mediaPeriodId)));
        int i10 = xVar.trackType;
        if (i10 != 0) {
            if (i10 == 1) {
                this.pendingAudioFormat = bVar;
                return;
            } else if (i10 != 2) {
                if (i10 != 3) {
                    return;
                }
                this.pendingTextFormat = bVar;
                return;
            }
        }
        this.pendingVideoFormat = bVar;
    }

    public LogSessionId H0() {
        return this.playbackSession.getSessionId();
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public void b0(c.a aVar, int i10, long j6, long j10) {
        com.google.android.exoplayer2.source.b0.b bVar = aVar.mediaPeriodId;
        if (bVar != null) {
            String strG = this.sessionManager.g(aVar.timeline, (com.google.android.exoplayer2.source.b0.b) com.google.android.exoplayer2.util.a.e(bVar));
            Long l = this.bandwidthBytes.get(strG);
            Long l6 = this.bandwidthTimeMs.get(strG);
            this.bandwidthBytes.put(strG, Long.valueOf((l == null ? 0L : l.longValue()) + j6));
            this.bandwidthTimeMs.put(strG, Long.valueOf((l6 != null ? l6.longValue() : 0L) + ((long) i10)));
        }
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public void e(c.a aVar, com.google.android.exoplayer2.source.u uVar, com.google.android.exoplayer2.source.x xVar, IOException iOException, boolean z6) {
        this.ioErrorType = xVar.dataType;
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public void m0(c.a aVar, com.google.android.exoplayer2.video.a0 a0Var) {
        b bVar = this.pendingVideoFormat;
        if (bVar != null) {
            a2 a2Var = bVar.format;
            if (a2Var.height == -1) {
                this.pendingVideoFormat = new b(a2Var.b().j0(a0Var.width).Q(a0Var.height).E(), bVar.selectionReason, bVar.sessionId);
            }
        }
    }

    @Override // com.google.android.exoplayer2.analytics.s1.a
    public void n0(c.a aVar, String str, boolean z6) {
        com.google.android.exoplayer2.source.b0.b bVar = aVar.mediaPeriodId;
        if ((bVar == null || !bVar.b()) && str.equals(this.activeSessionId)) {
            B0();
        }
        this.bandwidthTimeMs.remove(str);
        this.bandwidthBytes.remove(str);
    }

    @Override // com.google.android.exoplayer2.analytics.s1.a
    public void o0(c.a aVar, String str) {
        com.google.android.exoplayer2.source.b0.b bVar = aVar.mediaPeriodId;
        if (bVar == null || !bVar.b()) {
            B0();
            this.activeSessionId = str;
            this.metricsBuilder = o2.a().setPlayerName(x1.TAG).setPlayerVersion(x1.VERSION);
            T0(aVar.timeline, aVar.mediaPeriodId);
        }
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public void u(c.a aVar, com.google.android.exoplayer2.decoder.e eVar) {
        this.droppedFrames += eVar.droppedBufferCount;
        this.playedFrames += eVar.renderedOutputBufferCount;
    }

    private r1(Context context, PlaybackSession playbackSession) {
        this.context = context.getApplicationContext();
        this.playbackSession = playbackSession;
        q1 q1Var = new q1();
        this.sessionManager = q1Var;
        q1Var.e(this);
    }

    @SuppressLint({"SwitchIntDef"})
    private static int C0(int i10) {
        switch (com.google.android.exoplayer2.util.o0.P(i10)) {
            case 6002:
                return 24;
            case 6003:
                return 28;
            case 6004:
                return 25;
            case 6005:
                return 26;
            default:
                return 27;
        }
    }

    @Nullable
    private static DrmInitData D0(com.google.common.collect.a0<e4.a> a0Var) {
        DrmInitData drmInitData;
        com.google.common.collect.l1<e4.a> it = a0Var.iterator();
        while (it.hasNext()) {
            e4.a next = it.next();
            for (int i10 = 0; i10 < next.length; i10++) {
                if (next.f(i10) && (drmInitData = next.c(i10).drmInitData) != null) {
                    return drmInitData;
                }
            }
        }
        return null;
    }

    private static int I0(Context context) {
        switch (com.google.android.exoplayer2.util.a0.d(context).f()) {
            case 0:
                return 0;
            case 1:
                return 9;
            case 2:
                return 2;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
            case 8:
            default:
                return 1;
            case 7:
                return 3;
            case 9:
                return 8;
            case 10:
                return 7;
        }
    }

    private void O0(d3 d3Var, c.b bVar, long j6) {
        if (d3Var.getPlaybackState() != 2) {
            this.isSeeking = false;
        }
        if (d3Var.d() == null) {
            this.hasFatalError = false;
        } else if (bVar.a(10)) {
            this.hasFatalError = true;
        }
        int iW0 = W0(d3Var);
        if (this.currentPlaybackState != iW0) {
            this.currentPlaybackState = iW0;
            this.reportedEventsForCurrentSession = true;
            this.playbackSession.reportPlaybackStateEvent(androidx.media3.exoplayer.analytics.z2.a().setState(this.currentPlaybackState).setTimeSinceCreatedMillis(j6 - this.startTimeMs).build());
        }
    }

    private void V0(int i10, long j6, @Nullable a2 a2Var, int i11) {
        TrackChangeEvent.Builder timeSinceCreatedMillis = d2.a(i10).setTimeSinceCreatedMillis(j6 - this.startTimeMs);
        if (a2Var != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(K0(i11));
            String str = a2Var.containerMimeType;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = a2Var.sampleMimeType;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = a2Var.codecs;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i12 = a2Var.bitrate;
            if (i12 != -1) {
                timeSinceCreatedMillis.setBitrate(i12);
            }
            int i13 = a2Var.width;
            if (i13 != -1) {
                timeSinceCreatedMillis.setWidth(i13);
            }
            int i14 = a2Var.height;
            if (i14 != -1) {
                timeSinceCreatedMillis.setHeight(i14);
            }
            int i15 = a2Var.channelCount;
            if (i15 != -1) {
                timeSinceCreatedMillis.setChannelCount(i15);
            }
            int i16 = a2Var.sampleRate;
            if (i16 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i16);
            }
            String str4 = a2Var.language;
            if (str4 != null) {
                Pair<String, String> pairG0 = G0(str4);
                timeSinceCreatedMillis.setLanguage((String) pairG0.first);
                Object obj = pairG0.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f = a2Var.frameRate;
            if (f != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.reportedEventsForCurrentSession = true;
        this.playbackSession.reportTrackChangeEvent(timeSinceCreatedMillis.build());
    }

    private int W0(d3 d3Var) {
        int playbackState = d3Var.getPlaybackState();
        if (this.isSeeking) {
            return 5;
        }
        if (this.hasFatalError) {
            return 13;
        }
        if (playbackState == 4) {
            return 11;
        }
        if (playbackState == 2) {
            int i10 = this.currentPlaybackState;
            if (i10 == 0 || i10 == 2) {
                return 2;
            }
            if (!d3Var.getPlayWhenReady()) {
                return 7;
            }
            if (d3Var.r() != 0) {
                return 10;
            }
            return 6;
        }
        if (playbackState == 3) {
            if (!d3Var.getPlayWhenReady()) {
                return 4;
            }
            if (d3Var.r() == 0) {
                return 3;
            }
            return 9;
        }
        if (playbackState == 1 && this.currentPlaybackState != 0) {
            return 12;
        }
        return this.currentPlaybackState;
    }

    @Override // com.google.android.exoplayer2.analytics.c
    public void S(d3 d3Var, c.b bVar) {
        if (bVar.d() == 0) {
            return;
        }
        L0(bVar);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        R0(d3Var, bVar);
        N0(jElapsedRealtime);
        P0(d3Var, bVar, jElapsedRealtime);
        M0(jElapsedRealtime);
        O0(d3Var, bVar, jElapsedRealtime);
        if (bVar.a(1028)) {
            this.sessionManager.b(bVar.c(1028));
        }
    }
}
