package com.google.android.exoplayer2;

import android.os.Handler;
import android.util.Pair;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
final class r2 {
    public static final long INITIAL_RENDERER_POSITION_OFFSET_US = 1000000000000L;
    private static final int MAXIMUM_BUFFER_AHEAD_PERIODS = 100;
    private final com.google.android.exoplayer2.analytics.a analyticsCollector;
    private final Handler analyticsCollectorHandler;
    private int length;

    @Nullable
    private o2 loading;
    private long nextWindowSequenceNumber;

    @Nullable
    private Object oldFrontPeriodUid;
    private long oldFrontPeriodWindowSequenceNumber;

    @Nullable
    private o2 playing;

    @Nullable
    private o2 reading;
    private int repeatMode;
    private boolean shuffleModeEnabled;
    private final z3.b period = new z3.b();
    private final z3.d window = new z3.d();

    private boolean d(long j6, long j10) {
        return j6 == -9223372036854775807L || j6 == j10;
    }

    @Nullable
    private p2 k(z3 z3Var, com.google.android.exoplayer2.source.b0.b bVar, long j6, long j10) {
        z3Var.l(bVar.periodUid, this.period);
        return bVar.b() ? l(z3Var, bVar.periodUid, bVar.adGroupIndex, bVar.adIndexInAdGroup, j6, bVar.windowSequenceNumber) : m(z3Var, bVar.periodUid, j10, j6, bVar.windowSequenceNumber);
    }

    public o2 g(o3[] o3VarArr, com.google.android.exoplayer2.trackselection.b0 b0Var, com.google.android.exoplayer2.upstream.b bVar, u2 u2Var, p2 p2Var, com.google.android.exoplayer2.trackselection.c0 c0Var) {
        o2 o2Var = this.loading;
        o2 o2Var2 = new o2(o3VarArr, o2Var == null ? 1000000000000L : (o2Var.l() + this.loading.info.durationUs) - p2Var.startPositionUs, b0Var, bVar, u2Var, p2Var, c0Var);
        o2 o2Var3 = this.loading;
        if (o2Var3 != null) {
            o2Var3.w(o2Var2);
        } else {
            this.playing = o2Var2;
            this.reading = o2Var2;
        }
        this.oldFrontPeriodUid = null;
        this.loading = o2Var2;
        this.length++;
        x();
        return o2Var2;
    }

    @Nullable
    public o2 j() {
        return this.loading;
    }

    @Nullable
    public o2 p() {
        return this.playing;
    }

    @Nullable
    public o2 q() {
        return this.reading;
    }

    public boolean z(o2 o2Var) {
        boolean z6 = false;
        com.google.android.exoplayer2.util.a.g(o2Var != null);
        if (o2Var.equals(this.loading)) {
            return false;
        }
        this.loading = o2Var;
        while (o2Var.j() != null) {
            o2Var = o2Var.j();
            if (o2Var == this.reading) {
                this.reading = this.playing;
                z6 = true;
            }
            o2Var.t();
            this.length--;
        }
        this.loading.w(null);
        x();
        return z6;
    }

    private long C(z3 z3Var, Object obj) {
        int iF;
        int i10 = z3Var.l(obj, this.period).windowIndex;
        Object obj2 = this.oldFrontPeriodUid;
        if (obj2 != null && (iF = z3Var.f(obj2)) != -1 && z3Var.j(iF, this.period).windowIndex == i10) {
            return this.oldFrontPeriodWindowSequenceNumber;
        }
        for (o2 o2VarJ = this.playing; o2VarJ != null; o2VarJ = o2VarJ.j()) {
            if (o2VarJ.uid.equals(obj)) {
                return o2VarJ.info.id.windowSequenceNumber;
            }
        }
        for (o2 o2VarJ2 = this.playing; o2VarJ2 != null; o2VarJ2 = o2VarJ2.j()) {
            int iF2 = z3Var.f(o2VarJ2.uid);
            if (iF2 != -1 && z3Var.j(iF2, this.period).windowIndex == i10) {
                return o2VarJ2.info.id.windowSequenceNumber;
            }
        }
        long j6 = this.nextWindowSequenceNumber;
        this.nextWindowSequenceNumber = 1 + j6;
        if (this.playing == null) {
            this.oldFrontPeriodUid = obj;
            this.oldFrontPeriodWindowSequenceNumber = j6;
        }
        return j6;
    }

    private boolean E(z3 z3Var) {
        o2 o2VarJ = this.playing;
        if (o2VarJ == null) {
            return true;
        }
        int iF = z3Var.f(o2VarJ.uid);
        while (true) {
            iF = z3Var.h(iF, this.period, this.window, this.repeatMode, this.shuffleModeEnabled);
            while (o2VarJ.j() != null && !o2VarJ.info.isLastInTimelinePeriod) {
                o2VarJ = o2VarJ.j();
            }
            o2 o2VarJ2 = o2VarJ.j();
            if (iF == -1 || o2VarJ2 == null || z3Var.f(o2VarJ2.uid) != iF) {
                break;
            }
            o2VarJ = o2VarJ2;
        }
        boolean z6 = z(o2VarJ);
        o2VarJ.info = r(z3Var, o2VarJ.info);
        return !z6;
    }

    private boolean e(p2 p2Var, p2 p2Var2) {
        return p2Var.startPositionUs == p2Var2.startPositionUs && p2Var.id.equals(p2Var2.id);
    }

    @Nullable
    private p2 h(a3 a3Var) {
        return k(a3Var.timeline, a3Var.periodId, a3Var.requestedContentPositionUs, a3Var.positionUs);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:37:0x00e5  */
    @Nullable
    private p2 i(z3 z3Var, o2 o2Var, long j6) {
        long j10;
        long j11;
        long j12;
        long j13;
        boolean z6;
        long j14;
        p2 p2Var = o2Var.info;
        long jL = (o2Var.l() + p2Var.durationUs) - j6;
        if (!p2Var.isLastInTimelinePeriod) {
            com.google.android.exoplayer2.source.b0.b bVar = p2Var.id;
            z3Var.l(bVar.periodUid, this.period);
            if (!bVar.b()) {
                int iN = this.period.n(bVar.nextAdGroupIndex);
                boolean z10 = this.period.t(bVar.nextAdGroupIndex) && this.period.k(bVar.nextAdGroupIndex, iN) == 3;
                if (iN == this.period.d(bVar.nextAdGroupIndex) || z10) {
                    return m(z3Var, bVar.periodUid, n(z3Var, bVar.periodUid, bVar.nextAdGroupIndex), p2Var.durationUs, bVar.windowSequenceNumber);
                }
                return l(z3Var, bVar.periodUid, bVar.nextAdGroupIndex, iN, p2Var.durationUs, bVar.windowSequenceNumber);
            }
            int i10 = bVar.adGroupIndex;
            int iD = this.period.d(i10);
            if (iD == -1) {
                return null;
            }
            int iO = this.period.o(i10, bVar.adIndexInAdGroup);
            if (iO < iD) {
                return l(z3Var, bVar.periodUid, i10, iO, p2Var.requestedContentPositionUs, bVar.windowSequenceNumber);
            }
            long jLongValue = p2Var.requestedContentPositionUs;
            if (jLongValue == -9223372036854775807L) {
                z3.d dVar = this.window;
                z3.b bVar2 = this.period;
                Pair<Object, Long> pairO = z3Var.o(dVar, bVar2, bVar2.windowIndex, -9223372036854775807L, Math.max(0L, jL));
                if (pairO == null) {
                    return null;
                }
                jLongValue = ((Long) pairO.second).longValue();
            }
            return m(z3Var, bVar.periodUid, Math.max(n(z3Var, bVar.periodUid, bVar.adGroupIndex), jLongValue), p2Var.requestedContentPositionUs, bVar.windowSequenceNumber);
        }
        int iH = z3Var.h(z3Var.f(p2Var.id.periodUid), this.period, this.window, this.repeatMode, this.shuffleModeEnabled);
        if (iH == -1) {
            return null;
        }
        int i11 = z3Var.k(iH, this.period, true).windowIndex;
        Object objE = com.google.android.exoplayer2.util.a.e(this.period.uid);
        long j15 = p2Var.id.windowSequenceNumber;
        if (z3Var.r(i11, this.window).firstPeriodIndex == iH) {
            Pair<Object, Long> pairO2 = z3Var.o(this.window, this.period, i11, -9223372036854775807L, Math.max(0L, jL));
            if (pairO2 == null) {
                return null;
            }
            objE = pairO2.first;
            long jLongValue2 = ((Long) pairO2.second).longValue();
            o2 o2VarJ = o2Var.j();
            if (o2VarJ == null || !o2VarJ.uid.equals(objE)) {
                j14 = this.nextWindowSequenceNumber;
                this.nextWindowSequenceNumber = 1 + j14;
            } else {
                j14 = o2VarJ.info.id.windowSequenceNumber;
            }
            j10 = jLongValue2;
            j11 = -9223372036854775807L;
            j15 = j14;
        } else {
            j10 = 0;
            j11 = 0;
        }
        com.google.android.exoplayer2.source.b0.b bVarA = A(z3Var, objE, j10, j15, this.window, this.period);
        if (j11 == -9223372036854775807L || p2Var.requestedContentPositionUs == -9223372036854775807L) {
            j12 = j10;
            j13 = j11;
        } else {
            if (z3Var.l(p2Var.id.periodUid, this.period).f() > 0) {
                z3.b bVar3 = this.period;
                z6 = bVar3.t(bVar3.r());
            }
            if (bVarA.b() && z6) {
                j13 = p2Var.requestedContentPositionUs;
                j12 = j10;
            } else {
                if (z6) {
                    j12 = p2Var.requestedContentPositionUs;
                } else {
                    j12 = j10;
                }
                j13 = j11;
            }
        }
        return k(z3Var, bVarA, j13, j12);
    }

    private p2 l(z3 z3Var, Object obj, int i10, int i11, long j6, long j10) {
        com.google.android.exoplayer2.source.b0.b bVar = new com.google.android.exoplayer2.source.b0.b(obj, i10, i11, j10);
        long jE = z3Var.l(bVar.periodUid, this.period).e(bVar.adGroupIndex, bVar.adIndexInAdGroup);
        long j11 = i11 == this.period.n(i10) ? this.period.j() : 0L;
        return new p2(bVar, (jE == -9223372036854775807L || j11 < jE) ? j11 : Math.max(0L, jE - 1), j6, -9223372036854775807L, jE, this.period.t(bVar.adGroupIndex), false, false, false);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004d  */
    /* JADX WARN: Code duplicated, block: B:36:0x0097  */
    private p2 m(z3 z3Var, Object obj, long j6, long j10, long j11) {
        boolean z6;
        long j12;
        long jI;
        long j13;
        long jMax = j6;
        z3Var.l(obj, this.period);
        int iG = this.period.g(jMax);
        int i10 = 1;
        if (iG == -1) {
            if (this.period.f() > 0) {
                z3.b bVar = this.period;
                if (bVar.t(bVar.r())) {
                    z6 = true;
                } else {
                    z6 = false;
                }
            } else {
                z6 = false;
            }
        } else if (this.period.t(iG)) {
            long jI2 = this.period.i(iG);
            z3.b bVar2 = this.period;
            if (jI2 == bVar2.durationUs && bVar2.s(iG)) {
                z6 = true;
                iG = -1;
            } else {
                z6 = false;
            }
        } else {
            z6 = false;
        }
        com.google.android.exoplayer2.source.b0.b bVar3 = new com.google.android.exoplayer2.source.b0.b(obj, j11, iG);
        boolean zS = s(bVar3);
        boolean zU = u(z3Var, bVar3);
        boolean zT = t(z3Var, bVar3, zS);
        boolean z10 = iG != -1 && this.period.t(iG);
        if (iG == -1) {
            if (z6) {
                jI = this.period.durationUs;
            } else {
                j12 = -9223372036854775807L;
            }
            if (j12 != -9223372036854775807L || j12 == Long.MIN_VALUE) {
                j13 = this.period.durationUs;
            } else {
                j13 = j12;
            }
            if (j13 != -9223372036854775807L && jMax >= j13) {
                if (!zT && z6) {
                    i10 = 0;
                }
                jMax = Math.max(0L, j13 - ((long) i10));
            }
            return new p2(bVar3, jMax, j10, j12, j13, z10, zS, zU, zT);
        }
        jI = this.period.i(iG);
        j12 = jI;
        if (j12 != -9223372036854775807L) {
            j13 = this.period.durationUs;
        } else {
            j13 = this.period.durationUs;
        }
        if (j13 != -9223372036854775807L) {
            if (!zT) {
                i10 = 0;
            }
            jMax = Math.max(0L, j13 - ((long) i10));
        }
        return new p2(bVar3, jMax, j10, j12, j13, z10, zS, zU, zT);
    }

    private long n(z3 z3Var, Object obj, int i10) {
        z3Var.l(obj, this.period);
        long jI = this.period.i(i10);
        return jI == Long.MIN_VALUE ? this.period.durationUs : jI + this.period.l(i10);
    }

    private boolean t(z3 z3Var, com.google.android.exoplayer2.source.b0.b bVar, boolean z6) {
        int iF = z3Var.f(bVar.periodUid);
        return !z3Var.r(z3Var.j(iF, this.period).windowIndex, this.window).isDynamic && z3Var.v(iF, this.period, this.window, this.repeatMode, this.shuffleModeEnabled) && z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(com.google.common.collect.a0.a aVar, com.google.android.exoplayer2.source.b0.b bVar) {
        this.analyticsCollector.Q(aVar.k(), bVar);
    }

    public boolean D() {
        o2 o2Var = this.loading;
        return o2Var == null || (!o2Var.info.isFinal && o2Var.q() && this.loading.info.durationUs != -9223372036854775807L && this.length < 100);
    }

    public boolean F(z3 z3Var, long j6, long j10) {
        p2 p2VarR;
        o2 o2VarJ = this.playing;
        o2 o2Var = null;
        while (o2VarJ != null) {
            p2 p2Var = o2VarJ.info;
            if (o2Var == null) {
                p2VarR = r(z3Var, p2Var);
            } else {
                p2 p2VarI = i(z3Var, o2Var, j6);
                if (p2VarI == null) {
                    return !z(o2Var);
                }
                if (!e(p2Var, p2VarI)) {
                    return !z(o2Var);
                }
                p2VarR = p2VarI;
            }
            o2VarJ.info = p2VarR.a(p2Var.requestedContentPositionUs);
            if (!d(p2Var.durationUs, p2VarR.durationUs)) {
                o2VarJ.A();
                long j11 = p2VarR.durationUs;
                return (z(o2VarJ) || (o2VarJ == this.reading && !o2VarJ.info.isFollowedByTransitionToSameStream && ((j10 > Long.MIN_VALUE ? 1 : (j10 == Long.MIN_VALUE ? 0 : -1)) == 0 || (j10 > ((j11 > (-9223372036854775807L) ? 1 : (j11 == (-9223372036854775807L) ? 0 : -1)) == 0 ? Long.MAX_VALUE : o2VarJ.z(j11)) ? 1 : (j10 == ((j11 > (-9223372036854775807L) ? 1 : (j11 == (-9223372036854775807L) ? 0 : -1)) == 0 ? Long.MAX_VALUE : o2VarJ.z(j11)) ? 0 : -1)) >= 0))) ? false : true;
            }
            o2Var = o2VarJ;
            o2VarJ = o2VarJ.j();
        }
        return true;
    }

    public boolean G(z3 z3Var, int i10) {
        this.repeatMode = i10;
        return E(z3Var);
    }

    public boolean H(z3 z3Var, boolean z6) {
        this.shuffleModeEnabled = z6;
        return E(z3Var);
    }

    @Nullable
    public o2 b() {
        o2 o2Var = this.playing;
        if (o2Var == null) {
            return null;
        }
        if (o2Var == this.reading) {
            this.reading = o2Var.j();
        }
        this.playing.t();
        int i10 = this.length - 1;
        this.length = i10;
        if (i10 == 0) {
            this.loading = null;
            o2 o2Var2 = this.playing;
            this.oldFrontPeriodUid = o2Var2.uid;
            this.oldFrontPeriodWindowSequenceNumber = o2Var2.info.id.windowSequenceNumber;
        }
        this.playing = this.playing.j();
        x();
        return this.playing;
    }

    public o2 c() {
        o2 o2Var = this.reading;
        com.google.android.exoplayer2.util.a.g((o2Var == null || o2Var.j() == null) ? false : true);
        this.reading = this.reading.j();
        x();
        return this.reading;
    }

    public void f() {
        if (this.length == 0) {
            return;
        }
        o2 o2VarJ = (o2) com.google.android.exoplayer2.util.a.i(this.playing);
        this.oldFrontPeriodUid = o2VarJ.uid;
        this.oldFrontPeriodWindowSequenceNumber = o2VarJ.info.id.windowSequenceNumber;
        while (o2VarJ != null) {
            o2VarJ.t();
            o2VarJ = o2VarJ.j();
        }
        this.playing = null;
        this.loading = null;
        this.reading = null;
        this.length = 0;
        x();
    }

    @Nullable
    public p2 o(long j6, a3 a3Var) {
        o2 o2Var = this.loading;
        return o2Var == null ? h(a3Var) : i(a3Var.timeline, o2Var, j6);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0062  */
    /* JADX WARN: Code duplicated, block: B:24:0x006c  */
    /* JADX WARN: Code duplicated, block: B:29:0x007a  */
    public p2 r(z3 z3Var, p2 p2Var) {
        long jM;
        long j6;
        int i10;
        boolean zT;
        int i11;
        com.google.android.exoplayer2.source.b0.b bVar = p2Var.id;
        boolean zS = s(bVar);
        boolean zU = u(z3Var, bVar);
        boolean zT2 = t(z3Var, bVar, zS);
        z3Var.l(p2Var.id.periodUid, this.period);
        long jI = (bVar.b() || (i11 = bVar.nextAdGroupIndex) == -1) ? -9223372036854775807L : this.period.i(i11);
        if (!bVar.b()) {
            if (jI == -9223372036854775807L || jI == Long.MIN_VALUE) {
                jM = this.period.m();
            } else {
                j6 = jI;
            }
            if (bVar.b()) {
                zT = this.period.t(bVar.adGroupIndex);
            } else {
                i10 = bVar.nextAdGroupIndex;
                if (i10 == -1 && this.period.t(i10)) {
                    zT = true;
                } else {
                    zT = false;
                }
            }
            return new p2(bVar, p2Var.startPositionUs, p2Var.requestedContentPositionUs, jI, j6, zT, zS, zU, zT2);
        }
        jM = this.period.e(bVar.adGroupIndex, bVar.adIndexInAdGroup);
        j6 = jM;
        if (bVar.b()) {
            zT = this.period.t(bVar.adGroupIndex);
        } else {
            i10 = bVar.nextAdGroupIndex;
            if (i10 == -1) {
                zT = false;
            } else {
                zT = false;
            }
        }
        return new p2(bVar, p2Var.startPositionUs, p2Var.requestedContentPositionUs, jI, j6, zT, zS, zU, zT2);
    }

    public boolean v(com.google.android.exoplayer2.source.y yVar) {
        o2 o2Var = this.loading;
        return o2Var != null && o2Var.mediaPeriod == yVar;
    }

    public void y(long j6) {
        o2 o2Var = this.loading;
        if (o2Var != null) {
            o2Var.s(j6);
        }
    }

    public r2(com.google.android.exoplayer2.analytics.a aVar, Handler handler) {
        this.analyticsCollector = aVar;
        this.analyticsCollectorHandler = handler;
    }

    private static com.google.android.exoplayer2.source.b0.b A(z3 z3Var, Object obj, long j6, long j10, z3.d dVar, z3.b bVar) {
        z3Var.l(obj, bVar);
        z3Var.r(bVar.windowIndex, dVar);
        int iF = z3Var.f(obj);
        Object objE = obj;
        while (bVar.durationUs == 0 && bVar.f() > 0 && bVar.t(bVar.r()) && bVar.h(0L) == -1) {
            int i10 = iF + 1;
            if (iF >= dVar.lastPeriodIndex) {
                break;
            }
            z3Var.k(i10, bVar, true);
            objE = com.google.android.exoplayer2.util.a.e(bVar.uid);
            iF = i10;
        }
        z3Var.l(objE, bVar);
        int iH = bVar.h(j6);
        if (iH == -1) {
            return new com.google.android.exoplayer2.source.b0.b(objE, j10, bVar.g(j6));
        }
        return new com.google.android.exoplayer2.source.b0.b(objE, iH, bVar.n(iH), j10);
    }

    private boolean s(com.google.android.exoplayer2.source.b0.b bVar) {
        if (!bVar.b() && bVar.nextAdGroupIndex == -1) {
            return true;
        }
        return false;
    }

    private boolean u(z3 z3Var, com.google.android.exoplayer2.source.b0.b bVar) {
        if (!s(bVar)) {
            return false;
        }
        int i10 = z3Var.l(bVar.periodUid, this.period).windowIndex;
        if (z3Var.r(i10, this.window).lastPeriodIndex != z3Var.f(bVar.periodUid)) {
            return false;
        }
        return true;
    }

    private void x() {
        final com.google.android.exoplayer2.source.b0.b bVar;
        final com.google.common.collect.a0.a aVarR = com.google.common.collect.a0.r();
        for (o2 o2VarJ = this.playing; o2VarJ != null; o2VarJ = o2VarJ.j()) {
            aVarR.d(o2VarJ.info.id);
        }
        o2 o2Var = this.reading;
        if (o2Var == null) {
            bVar = null;
        } else {
            bVar = o2Var.info.id;
        }
        this.analyticsCollectorHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.q2
            @Override // java.lang.Runnable
            public final void run() {
                this.f1256a.w(aVarR, bVar);
            }
        });
    }

    public com.google.android.exoplayer2.source.b0.b B(z3 z3Var, Object obj, long j6) {
        long jC = C(z3Var, obj);
        z3Var.l(obj, this.period);
        z3Var.r(this.period.windowIndex, this.window);
        boolean z6 = false;
        for (int iF = z3Var.f(obj); iF >= this.window.firstPeriodIndex; iF--) {
            boolean z10 = true;
            z3Var.k(iF, this.period, true);
            if (this.period.f() <= 0) {
                z10 = false;
            }
            z6 |= z10;
            z3.b bVar = this.period;
            if (bVar.h(bVar.durationUs) != -1) {
                obj = com.google.android.exoplayer2.util.a.e(this.period.uid);
            }
            if (z6 && (!z10 || this.period.durationUs != 0)) {
                break;
            }
        }
        return A(z3Var, obj, j6, jC, this.window, this.period);
    }
}
