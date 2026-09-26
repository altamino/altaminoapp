package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import androidx.core.os.EnvironmentCompat;
import com.google.android.exoplayer2.z3;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class e extends j1 {
    private final boolean allowDynamicClippingUpdates;

    @Nullable
    private b clippingError;

    @Nullable
    private a clippingTimeline;
    private final boolean enableInitialDiscontinuity;
    private final long endUs;
    private final ArrayList<d> mediaPeriods;
    private long periodEndUs;
    private long periodStartUs;
    private final boolean relativeToDefaultPosition;
    private final long startUs;
    private final z3.d window;

    private static final class a extends s {
        private final long durationUs;
        private final long endUs;
        private final boolean isDynamic;
        private final long startUs;

        @Override // com.google.android.exoplayer2.source.s, com.google.android.exoplayer2.z3
        public z3.b k(int i10, z3.b bVar, boolean z6) {
            this.timeline.k(0, bVar, z6);
            long jQ = bVar.q() - this.startUs;
            long j6 = this.durationUs;
            return bVar.v(bVar.id, bVar.uid, 0, j6 == -9223372036854775807L ? -9223372036854775807L : j6 - jQ, jQ);
        }

        @Override // com.google.android.exoplayer2.source.s, com.google.android.exoplayer2.z3
        public z3.d s(int i10, z3.d dVar, long j6) {
            this.timeline.s(0, dVar, 0L);
            long j10 = dVar.positionInFirstPeriodUs;
            long j11 = this.startUs;
            dVar.positionInFirstPeriodUs = j10 + j11;
            dVar.durationUs = this.durationUs;
            dVar.isDynamic = this.isDynamic;
            long j12 = dVar.defaultPositionUs;
            if (j12 != -9223372036854775807L) {
                long jMax = Math.max(j12, j11);
                dVar.defaultPositionUs = jMax;
                long j13 = this.endUs;
                if (j13 != -9223372036854775807L) {
                    jMax = Math.min(jMax, j13);
                }
                dVar.defaultPositionUs = jMax - this.startUs;
            }
            long jP0 = com.google.android.exoplayer2.util.o0.P0(this.startUs);
            long j14 = dVar.presentationStartTimeMs;
            if (j14 != -9223372036854775807L) {
                dVar.presentationStartTimeMs = j14 + jP0;
            }
            long j15 = dVar.windowStartTimeMs;
            if (j15 != -9223372036854775807L) {
                dVar.windowStartTimeMs = j15 + jP0;
            }
            return dVar;
        }

        public a(z3 z3Var, long j6, long j10) throws b {
            long jMax;
            long j11;
            super(z3Var);
            boolean z6 = false;
            if (z3Var.m() == 1) {
                z3.d dVarR = z3Var.r(0, new z3.d());
                long jMax2 = Math.max(0L, j6);
                if (!dVarR.isPlaceholder && jMax2 != 0 && !dVarR.isSeekable) {
                    throw new b(1);
                }
                if (j10 == Long.MIN_VALUE) {
                    jMax = dVarR.durationUs;
                } else {
                    jMax = Math.max(0L, j10);
                }
                long j12 = dVarR.durationUs;
                if (j12 != -9223372036854775807L) {
                    jMax = jMax > j12 ? j12 : jMax;
                    if (jMax2 > jMax) {
                        throw new b(2);
                    }
                }
                this.startUs = jMax2;
                this.endUs = jMax;
                if (jMax == -9223372036854775807L) {
                    j11 = -9223372036854775807L;
                } else {
                    j11 = jMax - jMax2;
                }
                this.durationUs = j11;
                if (dVarR.isDynamic && (jMax == -9223372036854775807L || (j12 != -9223372036854775807L && jMax == j12))) {
                    z6 = true;
                }
                this.isDynamic = z6;
                return;
            }
            throw new b(0);
        }
    }

    public static final class b extends IOException {
        public static final int REASON_INVALID_PERIOD_COUNT = 0;
        public static final int REASON_NOT_SEEKABLE_TO_START = 1;
        public static final int REASON_START_EXCEEDS_END = 2;
        public final int reason;

        private static String a(int i10) {
            if (i10 == 0) {
                return "invalid period count";
            }
            if (i10 != 1) {
                return i10 != 2 ? EnvironmentCompat.MEDIA_UNKNOWN : "start exceeds end";
            }
            return "not seekable to start";
        }

        public b(int i10) {
            super("Illegal clipping: " + a(i10));
            this.reason = i10;
        }
    }

    public e(b0 b0Var, long j6, long j10) {
        this(b0Var, j6, j10, true, false, false);
    }

    private void Q(z3 z3Var) {
        long j6;
        long j10;
        z3Var.r(0, this.window);
        long jH = this.window.h();
        if (this.clippingTimeline == null || this.mediaPeriods.isEmpty() || this.allowDynamicClippingUpdates) {
            long j11 = this.startUs;
            long j12 = this.endUs;
            if (this.relativeToDefaultPosition) {
                long jF = this.window.f();
                j11 += jF;
                j12 += jF;
            }
            this.periodStartUs = jH + j11;
            this.periodEndUs = this.endUs != Long.MIN_VALUE ? jH + j12 : Long.MIN_VALUE;
            int size = this.mediaPeriods.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.mediaPeriods.get(i10).k(this.periodStartUs, this.periodEndUs);
            }
            j6 = j11;
            j10 = j12;
        } else {
            long j13 = this.periodStartUs - jH;
            j10 = this.endUs != Long.MIN_VALUE ? this.periodEndUs - jH : Long.MIN_VALUE;
            j6 = j13;
        }
        try {
            a aVar = new a(z3Var, j6, j10);
            this.clippingTimeline = aVar;
            x(aVar);
        } catch (b e) {
            this.clippingError = e;
            for (int i11 = 0; i11 < this.mediaPeriods.size(); i11++) {
                this.mediaPeriods.get(i11).i(this.clippingError);
            }
        }
    }

    public e(b0 b0Var, long j6) {
        this(b0Var, 0L, j6, true, false, true);
    }

    @Override // com.google.android.exoplayer2.source.j1
    protected void M(z3 z3Var) {
        if (this.clippingError != null) {
            return;
        }
        Q(z3Var);
    }

    @Override // com.google.android.exoplayer2.source.j1, com.google.android.exoplayer2.source.b0
    public y c(b0.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j6) {
        d dVar = new d(this.mediaSource.c(bVar, bVar2, j6), this.enableInitialDiscontinuity, this.periodStartUs, this.periodEndUs);
        this.mediaPeriods.add(dVar);
        return dVar;
    }

    @Override // com.google.android.exoplayer2.source.j1, com.google.android.exoplayer2.source.b0
    public void f(y yVar) {
        com.google.android.exoplayer2.util.a.g(this.mediaPeriods.remove(yVar));
        this.mediaSource.f(((d) yVar).mediaPeriod);
        if (!this.mediaPeriods.isEmpty() || this.allowDynamicClippingUpdates) {
            return;
        }
        Q(((a) com.google.android.exoplayer2.util.a.e(this.clippingTimeline)).timeline);
    }

    @Override // com.google.android.exoplayer2.source.g, com.google.android.exoplayer2.source.b0
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        b bVar = this.clippingError;
        if (bVar != null) {
            throw bVar;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    public e(b0 b0Var, long j6, long j10, boolean z6, boolean z10, boolean z11) {
        super((b0) com.google.android.exoplayer2.util.a.e(b0Var));
        com.google.android.exoplayer2.util.a.a(j6 >= 0);
        this.startUs = j6;
        this.endUs = j10;
        this.enableInitialDiscontinuity = z6;
        this.allowDynamicClippingUpdates = z10;
        this.relativeToDefaultPosition = z11;
        this.mediaPeriods = new ArrayList<>();
        this.window = new z3.d();
    }

    @Override // com.google.android.exoplayer2.source.g, com.google.android.exoplayer2.source.a
    protected void y() {
        super.y();
        this.clippingError = null;
        this.clippingTimeline = null;
    }
}
