package com.google.android.exoplayer2.analytics;

import android.os.Looper;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.e4;
import com.google.android.exoplayer2.i2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.z2;
import com.google.android.exoplayer2.z3;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class o1 implements com.google.android.exoplayer2.analytics.a {
    private final com.google.android.exoplayer2.util.d clock;
    private final SparseArray<c.a> eventTimes;
    private com.google.android.exoplayer2.util.p handler;
    private boolean isSeeking;
    private com.google.android.exoplayer2.util.s<c> listeners;
    private final a mediaPeriodQueueTracker;
    private final z3.b period;
    private d3 player;
    private final z3.d window;

    private static final class a {

        @Nullable
        private com.google.android.exoplayer2.source.b0.b currentPlayerMediaPeriod;
        private com.google.common.collect.a0<com.google.android.exoplayer2.source.b0.b> mediaPeriodQueue = com.google.common.collect.a0.x();
        private com.google.common.collect.b0<com.google.android.exoplayer2.source.b0.b, z3> mediaPeriodTimelines = com.google.common.collect.b0.m();
        private final z3.b period;
        private com.google.android.exoplayer2.source.b0.b playingMediaPeriod;
        private com.google.android.exoplayer2.source.b0.b readingMediaPeriod;

        @Nullable
        public com.google.android.exoplayer2.source.b0.b d() {
            return this.currentPlayerMediaPeriod;
        }

        @Nullable
        public com.google.android.exoplayer2.source.b0.b g() {
            return this.playingMediaPeriod;
        }

        @Nullable
        public com.google.android.exoplayer2.source.b0.b h() {
            return this.readingMediaPeriod;
        }

        private void b(com.google.common.collect.b0.a<com.google.android.exoplayer2.source.b0.b, z3> aVar, @Nullable com.google.android.exoplayer2.source.b0.b bVar, z3 z3Var) {
            if (bVar == null) {
                return;
            }
            if (z3Var.f(bVar.periodUid) != -1) {
                aVar.f(bVar, z3Var);
                return;
            }
            z3 z3Var2 = this.mediaPeriodTimelines.get(bVar);
            if (z3Var2 != null) {
                aVar.f(bVar, z3Var2);
            }
        }

        private static boolean i(com.google.android.exoplayer2.source.b0.b bVar, @Nullable Object obj, boolean z6, int i10, int i11, int i12) {
            if (bVar.periodUid.equals(obj)) {
                return (z6 && bVar.adGroupIndex == i10 && bVar.adIndexInAdGroup == i11) || (!z6 && bVar.adGroupIndex == -1 && bVar.nextAdGroupIndex == i12);
            }
            return false;
        }

        @Nullable
        public com.google.android.exoplayer2.source.b0.b e() {
            if (this.mediaPeriodQueue.isEmpty()) {
                return null;
            }
            return (com.google.android.exoplayer2.source.b0.b) com.google.common.collect.h0.e(this.mediaPeriodQueue);
        }

        @Nullable
        public z3 f(com.google.android.exoplayer2.source.b0.b bVar) {
            return this.mediaPeriodTimelines.get(bVar);
        }

        public void j(d3 d3Var) {
            this.currentPlayerMediaPeriod = c(d3Var, this.mediaPeriodQueue, this.playingMediaPeriod, this.period);
        }

        public void l(d3 d3Var) {
            this.currentPlayerMediaPeriod = c(d3Var, this.mediaPeriodQueue, this.playingMediaPeriod, this.period);
            m(d3Var.getCurrentTimeline());
        }

        public a(z3.b bVar) {
            this.period = bVar;
        }

        @Nullable
        private static com.google.android.exoplayer2.source.b0.b c(d3 d3Var, com.google.common.collect.a0<com.google.android.exoplayer2.source.b0.b> a0Var, @Nullable com.google.android.exoplayer2.source.b0.b bVar, z3.b bVar2) {
            Object objQ;
            int iG;
            z3 currentTimeline = d3Var.getCurrentTimeline();
            int currentPeriodIndex = d3Var.getCurrentPeriodIndex();
            if (currentTimeline.u()) {
                objQ = null;
            } else {
                objQ = currentTimeline.q(currentPeriodIndex);
            }
            if (!d3Var.isPlayingAd() && !currentTimeline.u()) {
                iG = currentTimeline.j(currentPeriodIndex, bVar2).g(com.google.android.exoplayer2.util.o0.w0(d3Var.getCurrentPosition()) - bVar2.q());
            } else {
                iG = -1;
            }
            for (int i10 = 0; i10 < a0Var.size(); i10++) {
                com.google.android.exoplayer2.source.b0.b bVar3 = a0Var.get(i10);
                if (i(bVar3, objQ, d3Var.isPlayingAd(), d3Var.getCurrentAdGroupIndex(), d3Var.getCurrentAdIndexInAdGroup(), iG)) {
                    return bVar3;
                }
            }
            if (a0Var.isEmpty() && bVar != null) {
                if (i(bVar, objQ, d3Var.isPlayingAd(), d3Var.getCurrentAdGroupIndex(), d3Var.getCurrentAdIndexInAdGroup(), iG)) {
                    return bVar;
                }
            }
            return null;
        }

        private void m(z3 z3Var) {
            com.google.common.collect.b0.a<com.google.android.exoplayer2.source.b0.b, z3> aVarA = com.google.common.collect.b0.a();
            if (this.mediaPeriodQueue.isEmpty()) {
                b(aVarA, this.playingMediaPeriod, z3Var);
                if (!com.google.common.base.k.a(this.readingMediaPeriod, this.playingMediaPeriod)) {
                    b(aVarA, this.readingMediaPeriod, z3Var);
                }
                if (!com.google.common.base.k.a(this.currentPlayerMediaPeriod, this.playingMediaPeriod) && !com.google.common.base.k.a(this.currentPlayerMediaPeriod, this.readingMediaPeriod)) {
                    b(aVarA, this.currentPlayerMediaPeriod, z3Var);
                }
            } else {
                for (int i10 = 0; i10 < this.mediaPeriodQueue.size(); i10++) {
                    b(aVarA, this.mediaPeriodQueue.get(i10), z3Var);
                }
                if (!this.mediaPeriodQueue.contains(this.currentPlayerMediaPeriod)) {
                    b(aVarA, this.currentPlayerMediaPeriod, z3Var);
                }
            }
            this.mediaPeriodTimelines = aVarA.c();
        }

        public void k(List<com.google.android.exoplayer2.source.b0.b> list, @Nullable com.google.android.exoplayer2.source.b0.b bVar, d3 d3Var) {
            this.mediaPeriodQueue = com.google.common.collect.a0.t(list);
            if (!list.isEmpty()) {
                this.playingMediaPeriod = list.get(0);
                this.readingMediaPeriod = (com.google.android.exoplayer2.source.b0.b) com.google.android.exoplayer2.util.a.e(bVar);
            }
            if (this.currentPlayerMediaPeriod == null) {
                this.currentPlayerMediaPeriod = c(d3Var, this.mediaPeriodQueue, this.playingMediaPeriod, this.period);
            }
            m(d3Var.getCurrentTimeline());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void n1(c cVar, com.google.android.exoplayer2.util.m mVar) {
    }

    @Override // com.google.android.exoplayer2.drm.v
    public /* synthetic */ void L(int i10, com.google.android.exoplayer2.source.b0.b bVar) {
        com.google.android.exoplayer2.drm.o.a(this, i10, bVar);
    }

    @Override // com.google.android.exoplayer2.d3.d
    public void P(d3 d3Var, d3.c cVar) {
    }

    @Override // com.google.android.exoplayer2.d3.d
    public void onLoadingChanged(boolean z6) {
    }

    @Override // com.google.android.exoplayer2.d3.d
    public void onPositionDiscontinuity(int i10) {
    }

    @Override // com.google.android.exoplayer2.d3.d
    public void onRenderedFirstFrame() {
    }

    @Override // com.google.android.exoplayer2.d3.d
    public final void y(final d3.e eVar, final d3.e eVar2, final int i10) {
        if (i10 == 1) {
            this.isSeeking = false;
        }
        this.mediaPeriodQueueTracker.j((d3) com.google.android.exoplayer2.util.a.e(this.player));
        final c.a aVarF1 = f1();
        y2(aVarF1, 11, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.q0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                o1.c2(aVarF1, i10, eVar, eVar2, (c) obj);
            }
        });
    }

    private c.a h1(@Nullable com.google.android.exoplayer2.source.b0.b bVar) {
        com.google.android.exoplayer2.util.a.e(this.player);
        z3 z3VarF = bVar == null ? null : this.mediaPeriodQueueTracker.f(bVar);
        if (bVar != null && z3VarF != null) {
            return g1(z3VarF, z3VarF.l(bVar.periodUid, this.period).windowIndex, bVar);
        }
        int iX = this.player.x();
        z3 currentTimeline = this.player.getCurrentTimeline();
        if (iX >= currentTimeline.t()) {
            currentTimeline = z3.EMPTY;
        }
        return g1(currentTimeline, iX, null);
    }

    private c.a i1() {
        return h1(this.mediaPeriodQueueTracker.e());
    }

    private c.a j1(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar) {
        com.google.android.exoplayer2.util.a.e(this.player);
        if (bVar != null) {
            return this.mediaPeriodQueueTracker.f(bVar) != null ? h1(bVar) : g1(z3.EMPTY, i10, bVar);
        }
        z3 currentTimeline = this.player.getCurrentTimeline();
        if (i10 >= currentTimeline.t()) {
            currentTimeline = z3.EMPTY;
        }
        return g1(currentTimeline, i10, null);
    }

    private c.a k1() {
        return h1(this.mediaPeriodQueueTracker.g());
    }

    private c.a l1() {
        return h1(this.mediaPeriodQueueTracker.h());
    }

    private c.a m1(@Nullable z2 z2Var) {
        com.google.android.exoplayer2.source.z zVar;
        return (!(z2Var instanceof com.google.android.exoplayer2.q) || (zVar = ((com.google.android.exoplayer2.q) z2Var).mediaPeriodId) == null) ? f1() : h1(new com.google.android.exoplayer2.source.b0.b(zVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w2(d3 d3Var, c cVar, com.google.android.exoplayer2.util.m mVar) {
        cVar.S(d3Var, new c.b(mVar, this.eventTimes));
    }

    @Override // com.google.android.exoplayer2.analytics.a
    @CallSuper
    public void C(final d3 d3Var, Looper looper) {
        com.google.android.exoplayer2.util.a.g(this.player == null || this.mediaPeriodQueueTracker.mediaPeriodQueue.isEmpty());
        this.player = (d3) com.google.android.exoplayer2.util.a.e(d3Var);
        this.handler = this.clock.createHandler(looper, null);
        this.listeners = this.listeners.e(looper, new com.google.android.exoplayer2.util.s.b() { // from class: com.google.android.exoplayer2.analytics.n
            @Override // com.google.android.exoplayer2.util.s.b
            public final void a(Object obj, com.google.android.exoplayer2.util.m mVar) {
                this.f1102a.w2(d3Var, (c) obj, mVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void Q(List<com.google.android.exoplayer2.source.b0.b> list, @Nullable com.google.android.exoplayer2.source.b0.b bVar) {
        this.mediaPeriodQueueTracker.k(list, bVar, (d3) com.google.android.exoplayer2.util.a.e(this.player));
    }

    protected final c.a f1() {
        return h1(this.mediaPeriodQueueTracker.d());
    }

    protected final c.a g1(z3 z3Var, int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar) {
        com.google.android.exoplayer2.source.b0.b bVar2 = z3Var.u() ? null : bVar;
        long jElapsedRealtime = this.clock.elapsedRealtime();
        boolean z6 = z3Var.equals(this.player.getCurrentTimeline()) && i10 == this.player.x();
        long jE = 0;
        if (bVar2 == null || !bVar2.b()) {
            if (z6) {
                jE = this.player.getContentPosition();
            } else if (!z3Var.u()) {
                jE = z3Var.r(i10, this.window).e();
            }
        } else if (z6 && this.player.getCurrentAdGroupIndex() == bVar2.adGroupIndex && this.player.getCurrentAdIndexInAdGroup() == bVar2.adIndexInAdGroup) {
            jE = this.player.getCurrentPosition();
        }
        return new c.a(jElapsedRealtime, z3Var, i10, bVar2, jE, this.player.getCurrentTimeline(), this.player.x(), this.mediaPeriodQueueTracker.d(), this.player.getCurrentPosition(), this.player.c());
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void p() {
        if (this.isSeeking) {
            return;
        }
        final c.a aVarF1 = f1();
        this.isSeeking = true;
        y2(aVarF1, -1, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.m1
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).X(aVarF1);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    @CallSuper
    public void release() {
        ((com.google.android.exoplayer2.util.p) com.google.android.exoplayer2.util.a.i(this.handler)).post(new Runnable() { // from class: com.google.android.exoplayer2.analytics.k
            @Override // java.lang.Runnable
            public final void run() {
                this.f1084a.x2();
            }
        });
    }

    protected final void y2(c.a aVar, int i10, com.google.android.exoplayer2.util.s.a<c> aVar2) {
        this.eventTimes.put(i10, aVar);
        this.listeners.l(i10, aVar2);
    }

    @Override // com.google.android.exoplayer2.d3.d
    public final void z(z3 z3Var, final int i10) {
        this.mediaPeriodQueueTracker.l((d3) com.google.android.exoplayer2.util.a.e(this.player));
        final c.a aVarF1 = f1();
        y2(aVarF1, 0, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.n0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).W(aVarF1, i10);
            }
        });
    }

    public o1(com.google.android.exoplayer2.util.d dVar) {
        this.clock = (com.google.android.exoplayer2.util.d) com.google.android.exoplayer2.util.a.e(dVar);
        this.listeners = new com.google.android.exoplayer2.util.s<>(com.google.android.exoplayer2.util.o0.K(), dVar, new com.google.android.exoplayer2.util.s.b() { // from class: com.google.android.exoplayer2.analytics.g0
            @Override // com.google.android.exoplayer2.util.s.b
            public final void a(Object obj, com.google.android.exoplayer2.util.m mVar) {
                o1.n1((c) obj, mVar);
            }
        });
        z3.b bVar = new z3.b();
        this.period = bVar;
        this.window = new z3.d();
        this.mediaPeriodQueueTracker = new a(bVar);
        this.eventTimes = new SparseArray<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void I1(c.a aVar, int i10, c cVar) {
        cVar.Z(aVar);
        cVar.M(aVar, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void M1(c.a aVar, boolean z6, c cVar) {
        cVar.O(aVar, z6);
        cVar.x0(aVar, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c2(c.a aVar, int i10, d3.e eVar, d3.e eVar2, c cVar) {
        cVar.f0(aVar, i10);
        cVar.G(aVar, eVar, eVar2, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void n2(c.a aVar, String str, long j6, long j10, c cVar) {
        cVar.v0(aVar, str, j6);
        cVar.q(aVar, str, j10, j6);
        cVar.e0(aVar, 2, str, j6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void p2(c.a aVar, com.google.android.exoplayer2.decoder.e eVar, c cVar) {
        cVar.u(aVar, eVar);
        cVar.J(aVar, 2, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void q1(c.a aVar, String str, long j6, long j10, c cVar) {
        cVar.R(aVar, str, j6);
        cVar.B(aVar, str, j10, j6);
        cVar.e0(aVar, 1, str, j6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void q2(c.a aVar, com.google.android.exoplayer2.decoder.e eVar, c cVar) {
        cVar.j0(aVar, eVar);
        cVar.f(aVar, 2, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void s1(c.a aVar, com.google.android.exoplayer2.decoder.e eVar, c cVar) {
        cVar.i0(aVar, eVar);
        cVar.J(aVar, 1, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void s2(c.a aVar, a2 a2Var, com.google.android.exoplayer2.decoder.i iVar, c cVar) {
        cVar.j(aVar, a2Var);
        cVar.V(aVar, a2Var, iVar);
        cVar.v(aVar, 2, a2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void t1(c.a aVar, com.google.android.exoplayer2.decoder.e eVar, c cVar) {
        cVar.d(aVar, eVar);
        cVar.f(aVar, 1, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void t2(c.a aVar, com.google.android.exoplayer2.video.a0 a0Var, c cVar) {
        cVar.m0(aVar, a0Var);
        cVar.d0(aVar, a0Var.width, a0Var.height, a0Var.unappliedRotationDegrees, a0Var.pixelWidthHeightRatio);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void u1(c.a aVar, a2 a2Var, com.google.android.exoplayer2.decoder.i iVar, c cVar) {
        cVar.p0(aVar, a2Var);
        cVar.w0(aVar, a2Var, iVar);
        cVar.v(aVar, 1, a2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x2() {
        final c.a aVarF1 = f1();
        y2(aVarF1, 1028, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.x0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).l0(aVarF1);
            }
        });
        this.listeners.j();
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void A(final com.google.android.exoplayer2.decoder.e eVar) {
        final c.a aVarL1 = l1();
        y2(aVarL1, 1015, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.j
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                o1.q2(aVarL1, eVar, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public void B(final n2 n2Var) {
        final c.a aVarF1 = f1();
        y2(aVarF1, 14, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.g1
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).P(aVarF1, n2Var);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    @CallSuper
    public void D(c cVar) {
        com.google.android.exoplayer2.util.a.e(cVar);
        this.listeners.c(cVar);
    }

    @Override // com.google.android.exoplayer2.d3.d
    public void E(@Nullable final z2 z2Var) {
        final c.a aVarM1 = m1(z2Var);
        y2(aVarM1, 10, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.f
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).Q(aVarM1, z2Var);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public final void F(final z2 z2Var) {
        final c.a aVarM1 = m1(z2Var);
        y2(aVarM1, 10, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.l
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).y(aVarM1, z2Var);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.h0
    public final void G(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar, final com.google.android.exoplayer2.source.x xVar) {
        final c.a aVarJ1 = j1(i10, bVar);
        y2(aVarJ1, 1004, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.y0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).F(aVarJ1, xVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public void H(final d3.b bVar) {
        final c.a aVarF1 = f1();
        y2(aVarF1, 13, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.c0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).H(aVarF1, bVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.h0
    public final void I(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar, final com.google.android.exoplayer2.source.u uVar, final com.google.android.exoplayer2.source.x xVar) {
        final c.a aVarJ1 = j1(i10, bVar);
        y2(aVarJ1, 1000, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.c1
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).x(aVarJ1, uVar, xVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public void J(final com.google.android.exoplayer2.o oVar) {
        final c.a aVarF1 = f1();
        y2(aVarF1, 29, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.o
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).K(aVarF1, oVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.v
    public final void K(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar) {
        final c.a aVarJ1 = j1(i10, bVar);
        y2(aVarJ1, 1026, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.i1
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).a0(aVarJ1);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public void M(final com.google.android.exoplayer2.trackselection.z zVar) {
        final c.a aVarF1 = f1();
        y2(aVarF1, 19, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.n1
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).t(aVarF1, zVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public void N(final e4 e4Var) {
        final c.a aVarF1 = f1();
        y2(aVarF1, 2, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.r
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).Y(aVarF1, e4Var);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.v
    public final void O(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar, final Exception exc) {
        final c.a aVarJ1 = j1(i10, bVar);
        y2(aVarJ1, 1024, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.d1
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).N(aVarJ1, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public final void R(@Nullable final i2 i2Var, final int i10) {
        final c.a aVarF1 = f1();
        y2(aVarF1, 1, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.z
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).s(aVarF1, i2Var, i10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.h0
    public final void S(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar, final com.google.android.exoplayer2.source.u uVar, final com.google.android.exoplayer2.source.x xVar) {
        final c.a aVarJ1 = j1(i10, bVar);
        y2(aVarJ1, 1001, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.e1
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).s0(aVarJ1, uVar, xVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.v
    public final void T(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar) {
        final c.a aVarJ1 = j1(i10, bVar);
        y2(aVarJ1, 1027, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.u0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).z(aVarJ1);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void a(final Exception exc) {
        final c.a aVarL1 = l1();
        y2(aVarL1, 1014, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.t
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).n(aVarL1, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void b(final String str) {
        final c.a aVarL1 = l1();
        y2(aVarL1, 1019, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.g
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).L(aVarL1, str);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void c(final String str) {
        final c.a aVarL1 = l1();
        y2(aVarL1, 1012, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.p
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).t0(aVarL1, str);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void d(final Exception exc) {
        final c.a aVarL1 = l1();
        y2(aVarL1, 1029, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.h0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).E(aVarL1, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void e(final long j6, final int i10) {
        final c.a aVarK1 = k1();
        y2(aVarK1, 1021, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.l1
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).a(aVarK1, j6, i10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void f(final long j6) {
        final c.a aVarL1 = l1();
        y2(aVarL1, 1010, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.q
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).k(aVarL1, j6);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void g(final Exception exc) {
        final c.a aVarL1 = l1();
        y2(aVarL1, 1030, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.k1
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).r(aVarL1, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void h(final Object obj, final long j6) {
        final c.a aVarL1 = l1();
        y2(aVarL1, 26, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.s0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj2) {
                ((c) obj2).I(aVarL1, obj, j6);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void i(final int i10, final long j6, final long j10) {
        final c.a aVarL1 = l1();
        y2(aVarL1, 1011, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.r0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).A(aVarL1, i10, j6, j10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.h0
    public final void j(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar, final com.google.android.exoplayer2.source.u uVar, final com.google.android.exoplayer2.source.x xVar) {
        final c.a aVarJ1 = j1(i10, bVar);
        y2(aVarJ1, 1002, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.t0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).C(aVarJ1, uVar, xVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public final void k(final com.google.android.exoplayer2.video.a0 a0Var) {
        final c.a aVarL1 = l1();
        y2(aVarL1, 25, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.w0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                o1.t2(aVarL1, a0Var, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void l(final a2 a2Var, @Nullable final com.google.android.exoplayer2.decoder.i iVar) {
        final c.a aVarL1 = l1();
        y2(aVarL1, 1009, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.y
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                o1.u1(aVarL1, a2Var, iVar, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void m(final com.google.android.exoplayer2.decoder.e eVar) {
        final c.a aVarL1 = l1();
        y2(aVarL1, 1007, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.a0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                o1.t1(aVarL1, eVar, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public final void n(final Metadata metadata) {
        final c.a aVarF1 = f1();
        y2(aVarF1, 28, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.d
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).g(aVarF1, metadata);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public final void o(final c3 c3Var) {
        final c.a aVarF1 = f1();
        y2(aVarF1, 12, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.m0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).h0(aVarF1, c3Var);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void onAudioDecoderInitialized(final String str, final long j6, final long j10) {
        final c.a aVarL1 = l1();
        y2(aVarL1, 1008, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.m
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                o1.q1(aVarL1, str, j10, j6, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.upstream.e.a
    public final void onBandwidthSample(final int i10, final long j6, final long j10) {
        final c.a aVarI1 = i1();
        y2(aVarI1, 1006, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.a1
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).b0(aVarI1, i10, j6, j10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public void onCues(final List<com.google.android.exoplayer2.text.b> list) {
        final c.a aVarF1 = f1();
        y2(aVarF1, 27, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.p0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).p(aVarF1, list);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public void onDeviceVolumeChanged(final int i10, final boolean z6) {
        final c.a aVarF1 = f1();
        y2(aVarF1, 30, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.i
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).c0(aVarF1, i10, z6);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void onDroppedFrames(final int i10, final long j6) {
        final c.a aVarK1 = k1();
        y2(aVarK1, 1018, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.w
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).m(aVarK1, i10, j6);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public final void onIsLoadingChanged(final boolean z6) {
        final c.a aVarF1 = f1();
        y2(aVarF1, 3, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.l0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                o1.M1(aVarF1, z6, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public void onIsPlayingChanged(final boolean z6) {
        final c.a aVarF1 = f1();
        y2(aVarF1, 7, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.s
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).D(aVarF1, z6);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public final void onPlayWhenReadyChanged(final boolean z6, final int i10) {
        final c.a aVarF1 = f1();
        y2(aVarF1, 5, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.e0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).U(aVarF1, z6, i10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public final void onPlaybackStateChanged(final int i10) {
        final c.a aVarF1 = f1();
        y2(aVarF1, 4, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.v0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).i(aVarF1, i10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public final void onPlaybackSuppressionReasonChanged(final int i10) {
        final c.a aVarF1 = f1();
        y2(aVarF1, 6, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.u
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).c(aVarF1, i10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public final void onPlayerStateChanged(final boolean z6, final int i10) {
        final c.a aVarF1 = f1();
        y2(aVarF1, -1, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.v
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).h(aVarF1, z6, i10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public final void onRepeatModeChanged(final int i10) {
        final c.a aVarF1 = f1();
        y2(aVarF1, 8, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.b0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).k0(aVarF1, i10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public final void onSeekProcessed() {
        final c.a aVarF1 = f1();
        y2(aVarF1, -1, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.o0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).w(aVarF1);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public final void onShuffleModeEnabledChanged(final boolean z6) {
        final c.a aVarF1 = f1();
        y2(aVarF1, 9, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.h
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).l(aVarF1, z6);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public final void onSkipSilenceEnabledChanged(final boolean z6) {
        final c.a aVarL1 = l1();
        y2(aVarL1, 23, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.f1
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).o(aVarL1, z6);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public final void onSurfaceSizeChanged(final int i10, final int i11) {
        final c.a aVarL1 = l1();
        y2(aVarL1, 24, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.d0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).T(aVarL1, i10, i11);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void onVideoDecoderInitialized(final String str, final long j6, final long j10) {
        final c.a aVarL1 = l1();
        y2(aVarL1, 1016, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.e
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                o1.n2(aVarL1, str, j10, j6, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public final void onVolumeChanged(final float f) {
        final c.a aVarL1 = l1();
        y2(aVarL1, 22, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.k0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).r0(aVarL1, f);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.v
    public final void q(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar) {
        final c.a aVarJ1 = j1(i10, bVar);
        y2(aVarJ1, 1023, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.h1
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).q0(aVarJ1);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.v
    public final void r(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar, final int i11) {
        final c.a aVarJ1 = j1(i10, bVar);
        y2(aVarJ1, 1022, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.b1
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                o1.I1(aVarJ1, i11, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.h0
    public final void s(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar, final com.google.android.exoplayer2.source.u uVar, final com.google.android.exoplayer2.source.x xVar, final IOException iOException, final boolean z6) {
        final c.a aVarJ1 = j1(i10, bVar);
        y2(aVarJ1, 1003, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.z0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).e(aVarJ1, uVar, xVar, iOException, z6);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void t(final a2 a2Var, @Nullable final com.google.android.exoplayer2.decoder.i iVar) {
        final c.a aVarL1 = l1();
        y2(aVarL1, 1017, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.j0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                o1.s2(aVarL1, a2Var, iVar, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void u(final com.google.android.exoplayer2.decoder.e eVar) {
        final c.a aVarK1 = k1();
        y2(aVarK1, 1020, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.x
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                o1.p2(aVarK1, eVar, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.v
    public final void v(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar) {
        final c.a aVarJ1 = j1(i10, bVar);
        y2(aVarJ1, 1025, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.j1
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).b(aVarJ1);
            }
        });
    }

    @Override // com.google.android.exoplayer2.analytics.a
    public final void w(final com.google.android.exoplayer2.decoder.e eVar) {
        final c.a aVarK1 = k1();
        y2(aVarK1, 1013, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.i0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                o1.s1(aVarK1, eVar, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3.d
    public void x(final com.google.android.exoplayer2.text.f fVar) {
        final c.a aVarF1 = f1();
        y2(aVarF1, 27, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.analytics.f0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((c) obj).g0(aVarF1, fVar);
            }
        });
    }
}
