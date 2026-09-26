package com.google.android.exoplayer2.source;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.i2;
import com.google.android.exoplayer2.z3;

/* JADX INFO: loaded from: classes6.dex */
public final class w extends j1 {
    private boolean hasRealTimeline;
    private boolean hasStartedPreparing;
    private boolean isPrepared;
    private final z3.b period;
    private a timeline;

    @Nullable
    private v unpreparedMaskingMediaPeriod;
    private final boolean useLazyPreparation;
    private final z3.d window;

    private static final class a extends s {
        public static final Object MASKING_EXTERNAL_PERIOD_UID = new Object();

        @Nullable
        private final Object replacedInternalPeriodUid;

        @Nullable
        private final Object replacedInternalWindowUid;

        public static a A(i2 i2Var) {
            return new a(new b(i2Var), z3.d.SINGLE_WINDOW_UID, MASKING_EXTERNAL_PERIOD_UID);
        }

        public static a B(z3 z3Var, @Nullable Object obj, @Nullable Object obj2) {
            return new a(z3Var, obj, obj2);
        }

        @Override // com.google.android.exoplayer2.source.s, com.google.android.exoplayer2.z3
        public int f(Object obj) {
            Object obj2;
            z3 z3Var = this.timeline;
            if (MASKING_EXTERNAL_PERIOD_UID.equals(obj) && (obj2 = this.replacedInternalPeriodUid) != null) {
                obj = obj2;
            }
            return z3Var.f(obj);
        }

        @Override // com.google.android.exoplayer2.source.s, com.google.android.exoplayer2.z3
        public z3.b k(int i10, z3.b bVar, boolean z6) {
            this.timeline.k(i10, bVar, z6);
            if (com.google.android.exoplayer2.util.o0.c(bVar.uid, this.replacedInternalPeriodUid) && z6) {
                bVar.uid = MASKING_EXTERNAL_PERIOD_UID;
            }
            return bVar;
        }

        @Override // com.google.android.exoplayer2.source.s, com.google.android.exoplayer2.z3
        public Object q(int i10) {
            Object objQ = this.timeline.q(i10);
            return com.google.android.exoplayer2.util.o0.c(objQ, this.replacedInternalPeriodUid) ? MASKING_EXTERNAL_PERIOD_UID : objQ;
        }

        @Override // com.google.android.exoplayer2.source.s, com.google.android.exoplayer2.z3
        public z3.d s(int i10, z3.d dVar, long j6) {
            this.timeline.s(i10, dVar, j6);
            if (com.google.android.exoplayer2.util.o0.c(dVar.uid, this.replacedInternalWindowUid)) {
                dVar.uid = z3.d.SINGLE_WINDOW_UID;
            }
            return dVar;
        }

        public a z(z3 z3Var) {
            return new a(z3Var, this.replacedInternalWindowUid, this.replacedInternalPeriodUid);
        }

        private a(z3 z3Var, @Nullable Object obj, @Nullable Object obj2) {
            super(z3Var);
            this.replacedInternalWindowUid = obj;
            this.replacedInternalPeriodUid = obj2;
        }
    }

    @VisibleForTesting
    public static final class b extends z3 {
        private final i2 mediaItem;

        @Override // com.google.android.exoplayer2.z3
        public z3.b k(int i10, z3.b bVar, boolean z6) {
            bVar.w(z6 ? 0 : null, z6 ? a.MASKING_EXTERNAL_PERIOD_UID : null, 0, -9223372036854775807L, 0L, x2.c.NONE, true);
            return bVar;
        }

        @Override // com.google.android.exoplayer2.z3
        public int m() {
            return 1;
        }

        @Override // com.google.android.exoplayer2.z3
        public int t() {
            return 1;
        }

        @Override // com.google.android.exoplayer2.z3
        public int f(Object obj) {
            return obj == a.MASKING_EXTERNAL_PERIOD_UID ? 0 : -1;
        }

        @Override // com.google.android.exoplayer2.z3
        public Object q(int i10) {
            return a.MASKING_EXTERNAL_PERIOD_UID;
        }

        @Override // com.google.android.exoplayer2.z3
        public z3.d s(int i10, z3.d dVar, long j6) {
            dVar.k(z3.d.SINGLE_WINDOW_UID, this.mediaItem, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, false, true, null, 0L, -9223372036854775807L, 0, 0, 0L);
            dVar.isPlaceholder = true;
            return dVar;
        }

        public b(i2 i2Var) {
            this.mediaItem = i2Var;
        }
    }

    public z3 T() {
        return this.timeline;
    }

    @Override // com.google.android.exoplayer2.source.j1, com.google.android.exoplayer2.source.b0
    public void f(y yVar) {
        ((v) yVar).l();
        if (yVar == this.unpreparedMaskingMediaPeriod) {
            this.unpreparedMaskingMediaPeriod = null;
        }
    }

    @Override // com.google.android.exoplayer2.source.g, com.google.android.exoplayer2.source.b0
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // com.google.android.exoplayer2.source.g, com.google.android.exoplayer2.source.a
    public void y() {
        this.isPrepared = false;
        this.hasStartedPreparing = false;
        super.y();
    }

    private Object R(Object obj) {
        return (this.timeline.replacedInternalPeriodUid == null || !this.timeline.replacedInternalPeriodUid.equals(obj)) ? obj : a.MASKING_EXTERNAL_PERIOD_UID;
    }

    private Object S(Object obj) {
        return (this.timeline.replacedInternalPeriodUid == null || !obj.equals(a.MASKING_EXTERNAL_PERIOD_UID)) ? obj : this.timeline.replacedInternalPeriodUid;
    }

    private void U(long j6) {
        v vVar = this.unpreparedMaskingMediaPeriod;
        int iF = this.timeline.f(vVar.id.periodUid);
        if (iF == -1) {
            return;
        }
        long j10 = this.timeline.j(iF, this.period).durationUs;
        if (j10 != -9223372036854775807L && j6 >= j10) {
            j6 = Math.max(0L, j10 - 1);
        }
        vVar.k(j6);
    }

    @Override // com.google.android.exoplayer2.source.j1
    @Nullable
    protected b0.b G(b0.b bVar) {
        return bVar.c(R(bVar.periodUid));
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0074  */
    /* JADX WARN: Code duplicated, block: B:30:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    @Override // com.google.android.exoplayer2.source.j1
    protected void M(z3 z3Var) {
        long j6;
        b0.b bVarC;
        if (this.isPrepared) {
            this.timeline = this.timeline.z(z3Var);
            v vVar = this.unpreparedMaskingMediaPeriod;
            if (vVar != null) {
                U(vVar.g());
            }
        } else {
            if (!z3Var.u()) {
                z3Var.r(0, this.window);
                long jF = this.window.f();
                Object obj = this.window.uid;
                v vVar2 = this.unpreparedMaskingMediaPeriod;
                if (vVar2 != null) {
                    long jH = vVar2.h();
                    this.timeline.l(this.unpreparedMaskingMediaPeriod.id.periodUid, this.period);
                    long jQ = this.period.q() + jH;
                    if (jQ != this.timeline.r(0, this.window).f()) {
                        j6 = jQ;
                    } else {
                        j6 = jF;
                    }
                } else {
                    j6 = jF;
                }
                Pair<Object, Long> pairN = z3Var.n(this.window, this.period, 0, j6);
                Object obj2 = pairN.first;
                long jLongValue = ((Long) pairN.second).longValue();
                this.timeline = this.hasRealTimeline ? this.timeline.z(z3Var) : a.B(z3Var, obj, obj2);
                v vVar3 = this.unpreparedMaskingMediaPeriod;
                if (vVar3 != null) {
                    U(jLongValue);
                    b0.b bVar = vVar3.id;
                    bVarC = bVar.c(S(bVar.periodUid));
                }
                this.hasRealTimeline = true;
                this.isPrepared = true;
                x(this.timeline);
                if (bVarC != null) {
                    ((v) com.google.android.exoplayer2.util.a.e(this.unpreparedMaskingMediaPeriod)).a(bVarC);
                }
            }
            this.timeline = this.hasRealTimeline ? this.timeline.z(z3Var) : a.B(z3Var, z3.d.SINGLE_WINDOW_UID, a.MASKING_EXTERNAL_PERIOD_UID);
        }
        bVarC = null;
        this.hasRealTimeline = true;
        this.isPrepared = true;
        x(this.timeline);
        if (bVarC != null) {
            ((v) com.google.android.exoplayer2.util.a.e(this.unpreparedMaskingMediaPeriod)).a(bVarC);
        }
    }

    @Override // com.google.android.exoplayer2.source.j1
    public void P() {
        if (this.useLazyPreparation) {
            return;
        }
        this.hasStartedPreparing = true;
        O();
    }

    @Override // com.google.android.exoplayer2.source.j1, com.google.android.exoplayer2.source.b0
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public v c(b0.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j6) {
        v vVar = new v(bVar, bVar2, j6);
        vVar.m(this.mediaSource);
        if (this.isPrepared) {
            vVar.a(bVar.c(S(bVar.periodUid)));
        } else {
            this.unpreparedMaskingMediaPeriod = vVar;
            if (!this.hasStartedPreparing) {
                this.hasStartedPreparing = true;
                O();
            }
        }
        return vVar;
    }

    public w(b0 b0Var, boolean z6) {
        boolean z10;
        super(b0Var);
        if (z6 && b0Var.r()) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.useLazyPreparation = z10;
        this.window = new z3.d();
        this.period = new z3.b();
        z3 z3VarO = b0Var.o();
        if (z3VarO != null) {
            this.timeline = a.B(z3VarO, null, null);
            this.hasRealTimeline = true;
        } else {
            this.timeline = a.A(b0Var.j());
        }
    }
}
