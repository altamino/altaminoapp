package com.google.android.exoplayer2.analytics;

import android.util.Base64;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.z3;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;

/* JADX INFO: loaded from: classes9.dex */
public final class q1 implements s1 {
    public static final com.google.common.base.u<String> DEFAULT_SESSION_ID_GENERATOR = new com.google.common.base.u() { // from class: com.google.android.exoplayer2.analytics.p1
        @Override // com.google.common.base.u
        public final Object get() {
            return q1.k();
        }
    };
    private static final Random RANDOM = new Random();
    private static final int SESSION_ID_LENGTH = 12;

    @Nullable
    private String currentSessionId;
    private z3 currentTimeline;
    private s1.a listener;
    private final z3.b period;
    private final com.google.common.base.u<String> sessionIdGenerator;
    private final HashMap<String, a> sessions;
    private final z3.d window;

    private final class a {
        private com.google.android.exoplayer2.source.b0.b adMediaPeriodId;
        private boolean isActive;
        private boolean isCreated;
        private final String sessionId;
        private int windowIndex;
        private long windowSequenceNumber;

        public boolean i(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar) {
            if (bVar == null) {
                return i10 == this.windowIndex;
            }
            com.google.android.exoplayer2.source.b0.b bVar2 = this.adMediaPeriodId;
            if (bVar2 == null) {
                return !bVar.b() && bVar.windowSequenceNumber == this.windowSequenceNumber;
            }
            return bVar.windowSequenceNumber == bVar2.windowSequenceNumber && bVar.adGroupIndex == bVar2.adGroupIndex && bVar.adIndexInAdGroup == bVar2.adIndexInAdGroup;
        }

        public a(String str, @Nullable int i10, com.google.android.exoplayer2.source.b0.b bVar) {
            this.sessionId = str;
            this.windowIndex = i10;
            this.windowSequenceNumber = bVar == null ? -1L : bVar.windowSequenceNumber;
            if (bVar == null || !bVar.b()) {
                return;
            }
            this.adMediaPeriodId = bVar;
        }

        public boolean j(c.a aVar) {
            com.google.android.exoplayer2.source.b0.b bVar = aVar.mediaPeriodId;
            if (bVar == null) {
                return this.windowIndex != aVar.windowIndex;
            }
            long j6 = this.windowSequenceNumber;
            if (j6 == -1) {
                return false;
            }
            if (bVar.windowSequenceNumber > j6) {
                return true;
            }
            if (this.adMediaPeriodId == null) {
                return false;
            }
            int iF = aVar.timeline.f(bVar.periodUid);
            int iF2 = aVar.timeline.f(this.adMediaPeriodId.periodUid);
            com.google.android.exoplayer2.source.b0.b bVar2 = aVar.mediaPeriodId;
            if (bVar2.windowSequenceNumber < this.adMediaPeriodId.windowSequenceNumber || iF < iF2) {
                return false;
            }
            if (iF > iF2) {
                return true;
            }
            if (!bVar2.b()) {
                int i10 = aVar.mediaPeriodId.nextAdGroupIndex;
                return i10 == -1 || i10 > this.adMediaPeriodId.adGroupIndex;
            }
            com.google.android.exoplayer2.source.b0.b bVar3 = aVar.mediaPeriodId;
            int i11 = bVar3.adGroupIndex;
            int i12 = bVar3.adIndexInAdGroup;
            com.google.android.exoplayer2.source.b0.b bVar4 = this.adMediaPeriodId;
            int i13 = bVar4.adGroupIndex;
            if (i11 <= i13) {
                return i11 == i13 && i12 > bVar4.adIndexInAdGroup;
            }
            return true;
        }

        public void k(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar) {
            if (this.windowSequenceNumber == -1 && i10 == this.windowIndex && bVar != null) {
                this.windowSequenceNumber = bVar.windowSequenceNumber;
            }
        }

        public boolean m(z3 z3Var, z3 z3Var2) {
            int iL = l(z3Var, z3Var2, this.windowIndex);
            this.windowIndex = iL;
            if (iL == -1) {
                return false;
            }
            com.google.android.exoplayer2.source.b0.b bVar = this.adMediaPeriodId;
            return bVar == null || z3Var2.f(bVar.periodUid) != -1;
        }

        private int l(z3 z3Var, z3 z3Var2, int i10) {
            if (i10 >= z3Var.t()) {
                if (i10 >= z3Var2.t()) {
                    return -1;
                }
                return i10;
            }
            z3Var.r(i10, q1.this.window);
            for (int i11 = q1.this.window.firstPeriodIndex; i11 <= q1.this.window.lastPeriodIndex; i11++) {
                int iF = z3Var2.f(z3Var.q(i11));
                if (iF != -1) {
                    return z3Var2.j(iF, q1.this.period).windowIndex;
                }
            }
            return -1;
        }
    }

    public q1() {
        this(DEFAULT_SESSION_ID_GENERATOR);
    }

    @Override // com.google.android.exoplayer2.analytics.s1
    @Nullable
    public synchronized String a() {
        return this.currentSessionId;
    }

    @Override // com.google.android.exoplayer2.analytics.s1
    public synchronized void b(c.a aVar) {
        s1.a aVar2;
        this.currentSessionId = null;
        Iterator<a> it = this.sessions.values().iterator();
        while (it.hasNext()) {
            a next = it.next();
            it.remove();
            if (next.isCreated && (aVar2 = this.listener) != null) {
                aVar2.n0(aVar, next.sessionId, false);
            }
        }
    }

    @Override // com.google.android.exoplayer2.analytics.s1
    public synchronized void c(c.a aVar, int i10) {
        try {
            com.google.android.exoplayer2.util.a.e(this.listener);
            boolean z6 = i10 == 0;
            Iterator<a> it = this.sessions.values().iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next.j(aVar)) {
                    it.remove();
                    if (next.isCreated) {
                        boolean zEquals = next.sessionId.equals(this.currentSessionId);
                        boolean z10 = z6 && zEquals && next.isActive;
                        if (zEquals) {
                            this.currentSessionId = null;
                        }
                        this.listener.n0(aVar, next.sessionId, z10);
                    }
                }
            }
            m(aVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.analytics.s1
    public synchronized void d(c.a aVar) {
        try {
            com.google.android.exoplayer2.util.a.e(this.listener);
            z3 z3Var = this.currentTimeline;
            this.currentTimeline = aVar.timeline;
            Iterator<a> it = this.sessions.values().iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (!next.m(z3Var, this.currentTimeline) || next.j(aVar)) {
                    it.remove();
                    if (next.isCreated) {
                        if (next.sessionId.equals(this.currentSessionId)) {
                            this.currentSessionId = null;
                        }
                        this.listener.n0(aVar, next.sessionId, false);
                    }
                }
            }
            m(aVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.analytics.s1
    public void e(s1.a aVar) {
        this.listener = aVar;
    }

    @Override // com.google.android.exoplayer2.analytics.s1
    public synchronized String g(z3 z3Var, com.google.android.exoplayer2.source.b0.b bVar) {
        return l(z3Var.l(bVar.periodUid, this.period).windowIndex, bVar).sessionId;
    }

    public q1(com.google.common.base.u<String> uVar) {
        this.sessionIdGenerator = uVar;
        this.window = new z3.d();
        this.period = new z3.b();
        this.sessions = new HashMap<>();
        this.currentTimeline = z3.EMPTY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String k() {
        byte[] bArr = new byte[12];
        RANDOM.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    private a l(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar) {
        a aVar = null;
        long j6 = Long.MAX_VALUE;
        for (a aVar2 : this.sessions.values()) {
            aVar2.k(i10, bVar);
            if (aVar2.i(i10, bVar)) {
                long j10 = aVar2.windowSequenceNumber;
                if (j10 == -1 || j10 < j6) {
                    aVar = aVar2;
                    j6 = j10;
                } else if (j10 == j6 && ((a) com.google.android.exoplayer2.util.o0.j(aVar)).adMediaPeriodId != null && aVar2.adMediaPeriodId != null) {
                    aVar = aVar2;
                }
            }
        }
        if (aVar != null) {
            return aVar;
        }
        String str = this.sessionIdGenerator.get();
        a aVar3 = new a(str, i10, bVar);
        this.sessions.put(str, aVar3);
        return aVar3;
    }

    private void m(c.a aVar) {
        if (aVar.timeline.u()) {
            this.currentSessionId = null;
            return;
        }
        a aVar2 = this.sessions.get(this.currentSessionId);
        a aVarL = l(aVar.windowIndex, aVar.mediaPeriodId);
        this.currentSessionId = aVarL.sessionId;
        f(aVar);
        com.google.android.exoplayer2.source.b0.b bVar = aVar.mediaPeriodId;
        if (bVar == null || !bVar.b()) {
            return;
        }
        if (aVar2 != null && aVar2.windowSequenceNumber == aVar.mediaPeriodId.windowSequenceNumber && aVar2.adMediaPeriodId != null && aVar2.adMediaPeriodId.adGroupIndex == aVar.mediaPeriodId.adGroupIndex && aVar2.adMediaPeriodId.adIndexInAdGroup == aVar.mediaPeriodId.adIndexInAdGroup) {
            return;
        }
        com.google.android.exoplayer2.source.b0.b bVar2 = aVar.mediaPeriodId;
        this.listener.y0(aVar, l(aVar.windowIndex, new com.google.android.exoplayer2.source.b0.b(bVar2.periodUid, bVar2.windowSequenceNumber)).sessionId, aVarL.sessionId);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00d7  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
    
        if (r25.mediaPeriodId.windowSequenceNumber < r2.windowSequenceNumber) goto L21;
     */
    @Override // com.google.android.exoplayer2.analytics.s1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void f(c.a aVar) {
        c.a aVar2;
        a aVar3;
        try {
            com.google.android.exoplayer2.util.a.e(this.listener);
            if (aVar.timeline.u()) {
                return;
            }
            a aVar4 = this.sessions.get(this.currentSessionId);
            if (aVar.mediaPeriodId != null && aVar4 != null) {
                if (aVar4.windowSequenceNumber == -1) {
                    if (aVar4.windowIndex != aVar.windowIndex) {
                        return;
                    }
                }
            }
            a aVarL = l(aVar.windowIndex, aVar.mediaPeriodId);
            if (this.currentSessionId == null) {
                this.currentSessionId = aVarL.sessionId;
            }
            com.google.android.exoplayer2.source.b0.b bVar = aVar.mediaPeriodId;
            if (bVar != null && bVar.b()) {
                com.google.android.exoplayer2.source.b0.b bVar2 = aVar.mediaPeriodId;
                com.google.android.exoplayer2.source.b0.b bVar3 = new com.google.android.exoplayer2.source.b0.b(bVar2.periodUid, bVar2.windowSequenceNumber, bVar2.adGroupIndex);
                a aVarL2 = l(aVar.windowIndex, bVar3);
                if (!aVarL2.isCreated) {
                    aVarL2.isCreated = true;
                    aVar.timeline.l(aVar.mediaPeriodId.periodUid, this.period);
                    this.listener.u0(new c.a(aVar.realtimeMs, aVar.timeline, aVar.windowIndex, bVar3, Math.max(0L, com.google.android.exoplayer2.util.o0.P0(this.period.i(aVar.mediaPeriodId.adGroupIndex)) + this.period.p()), aVar.currentTimeline, aVar.currentWindowIndex, aVar.currentMediaPeriodId, aVar.currentPlaybackPositionMs, aVar.totalBufferedDurationMs), aVarL2.sessionId);
                }
            }
            if (aVarL.isCreated) {
                aVar2 = aVar;
                aVar3 = aVarL;
            } else {
                aVar3 = aVarL;
                aVar3.isCreated = true;
                aVar2 = aVar;
                this.listener.u0(aVar2, aVar3.sessionId);
            }
            if (aVar3.sessionId.equals(this.currentSessionId) && !aVar3.isActive) {
                aVar3.isActive = true;
                this.listener.o0(aVar2, aVar3.sessionId);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
