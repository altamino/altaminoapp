package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.i2;
import com.google.android.exoplayer2.z3;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class k0 extends g<Integer> {
    private static final i2 EMPTY_MEDIA_ITEM = new i2.c().d("MergingMediaSource").a();
    private static final int PERIOD_COUNT_UNSET = -1;
    private final boolean adjustPeriodTimeOffsets;
    private final boolean clipDurations;
    private final Map<Object, Long> clippedDurationsUs;
    private final com.google.common.collect.m0<Object, d> clippedMediaPeriods;
    private final i compositeSequenceableLoaderFactory;
    private final b0[] mediaSources;

    @Nullable
    private b mergeError;
    private final ArrayList<b0> pendingTimelineSources;
    private int periodCount;
    private long[][] periodTimeOffsetsUs;
    private final z3[] timelines;

    public k0(b0... b0VarArr) {
        this(false, b0VarArr);
    }

    private static final class a extends s {
        private final long[] periodDurationsUs;
        private final long[] windowDurationsUs;

        public a(z3 z3Var, Map<Object, Long> map) {
            super(z3Var);
            int iT = z3Var.t();
            this.windowDurationsUs = new long[z3Var.t()];
            z3.d dVar = new z3.d();
            for (int i10 = 0; i10 < iT; i10++) {
                this.windowDurationsUs[i10] = z3Var.r(i10, dVar).durationUs;
            }
            int iM = z3Var.m();
            this.periodDurationsUs = new long[iM];
            z3.b bVar = new z3.b();
            for (int i11 = 0; i11 < iM; i11++) {
                z3Var.k(i11, bVar, true);
                long jLongValue = ((Long) com.google.android.exoplayer2.util.a.e(map.get(bVar.uid))).longValue();
                long[] jArr = this.periodDurationsUs;
                jLongValue = jLongValue == Long.MIN_VALUE ? bVar.durationUs : jLongValue;
                jArr[i11] = jLongValue;
                long j6 = bVar.durationUs;
                if (j6 != -9223372036854775807L) {
                    long[] jArr2 = this.windowDurationsUs;
                    int i12 = bVar.windowIndex;
                    jArr2[i12] = jArr2[i12] - (j6 - jLongValue);
                }
            }
        }

        @Override // com.google.android.exoplayer2.source.s, com.google.android.exoplayer2.z3
        public z3.b k(int i10, z3.b bVar, boolean z6) {
            super.k(i10, bVar, z6);
            bVar.durationUs = this.periodDurationsUs[i10];
            return bVar;
        }

        /* JADX WARN: Code duplicated, block: B:8:0x001e  */
        @Override // com.google.android.exoplayer2.source.s, com.google.android.exoplayer2.z3
        public z3.d s(int i10, z3.d dVar, long j6) {
            long jMin;
            super.s(i10, dVar, j6);
            long j10 = this.windowDurationsUs[i10];
            dVar.durationUs = j10;
            if (j10 != -9223372036854775807L) {
                long j11 = dVar.defaultPositionUs;
                if (j11 != -9223372036854775807L) {
                    jMin = Math.min(j11, j10);
                } else {
                    jMin = dVar.defaultPositionUs;
                }
            } else {
                jMin = dVar.defaultPositionUs;
            }
            dVar.defaultPositionUs = jMin;
            return dVar;
        }
    }

    public static final class b extends IOException {
        public static final int REASON_PERIOD_COUNT_MISMATCH = 0;
        public final int reason;

        public b(int i10) {
            this.reason = i10;
        }
    }

    public k0(boolean z6, b0... b0VarArr) {
        this(z6, false, b0VarArr);
    }

    private void G() {
        z3.b bVar = new z3.b();
        for (int i10 = 0; i10 < this.periodCount; i10++) {
            long j6 = -this.timelines[0].j(i10, bVar).q();
            int i11 = 1;
            while (true) {
                z3[] z3VarArr = this.timelines;
                if (i11 < z3VarArr.length) {
                    this.periodTimeOffsetsUs[i10][i11] = j6 - (-z3VarArr[i11].j(i10, bVar).q());
                    i11++;
                }
            }
        }
    }

    private void J() {
        z3[] z3VarArr;
        z3.b bVar = new z3.b();
        for (int i10 = 0; i10 < this.periodCount; i10++) {
            int i11 = 0;
            long j6 = Long.MIN_VALUE;
            while (true) {
                z3VarArr = this.timelines;
                if (i11 >= z3VarArr.length) {
                    break;
                }
                long jM = z3VarArr[i11].j(i10, bVar).m();
                if (jM != -9223372036854775807L) {
                    long j10 = jM + this.periodTimeOffsetsUs[i10][i11];
                    if (j6 == Long.MIN_VALUE || j10 < j6) {
                        j6 = j10;
                    }
                }
                i11++;
            }
            Object objQ = z3VarArr[0].q(i10);
            this.clippedDurationsUs.put(objQ, Long.valueOf(j6));
            Iterator<d> it = this.clippedMediaPeriods.q(objQ).iterator();
            while (it.hasNext()) {
                it.next().k(0L, j6);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.g
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void D(Integer num, b0 b0Var, z3 z3Var) {
        if (this.mergeError != null) {
            return;
        }
        if (this.periodCount == -1) {
            this.periodCount = z3Var.m();
        } else if (z3Var.m() != this.periodCount) {
            this.mergeError = new b(0);
            return;
        }
        if (this.periodTimeOffsetsUs.length == 0) {
            this.periodTimeOffsetsUs = (long[][]) Array.newInstance((Class<?>) Long.TYPE, this.periodCount, this.timelines.length);
        }
        this.pendingTimelineSources.remove(b0Var);
        this.timelines[num.intValue()] = z3Var;
        if (this.pendingTimelineSources.isEmpty()) {
            if (this.adjustPeriodTimeOffsets) {
                G();
            }
            z3 aVar = this.timelines[0];
            if (this.clipDurations) {
                J();
                aVar = new a(aVar, this.clippedDurationsUs);
            }
            x(aVar);
        }
    }

    @Override // com.google.android.exoplayer2.source.b0
    public y c(b0.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j6) {
        int length = this.mediaSources.length;
        y[] yVarArr = new y[length];
        int iF = this.timelines[0].f(bVar.periodUid);
        for (int i10 = 0; i10 < length; i10++) {
            yVarArr[i10] = this.mediaSources[i10].c(bVar.c(this.timelines[i10].q(iF)), bVar2, j6 - this.periodTimeOffsetsUs[iF][i10]);
        }
        j0 j0Var = new j0(this.compositeSequenceableLoaderFactory, this.periodTimeOffsetsUs[iF], yVarArr);
        if (!this.clipDurations) {
            return j0Var;
        }
        d dVar = new d(j0Var, true, 0L, ((Long) com.google.android.exoplayer2.util.a.e(this.clippedDurationsUs.get(bVar.periodUid))).longValue());
        this.clippedMediaPeriods.put(bVar.periodUid, dVar);
        return dVar;
    }

    @Override // com.google.android.exoplayer2.source.b0
    public void f(y yVar) {
        if (this.clipDurations) {
            d dVar = (d) yVar;
            for (Map.Entry<Object, d> entry : this.clippedMediaPeriods.o()) {
                if (entry.getValue().equals(dVar)) {
                    this.clippedMediaPeriods.remove(entry.getKey(), entry.getValue());
                    break;
                }
            }
            yVar = dVar.mediaPeriod;
        }
        j0 j0Var = (j0) yVar;
        int i10 = 0;
        while (true) {
            b0[] b0VarArr = this.mediaSources;
            if (i10 >= b0VarArr.length) {
                return;
            }
            b0VarArr[i10].f(j0Var.a(i10));
            i10++;
        }
    }

    @Override // com.google.android.exoplayer2.source.b0
    public i2 j() {
        b0[] b0VarArr = this.mediaSources;
        return b0VarArr.length > 0 ? b0VarArr[0].j() : EMPTY_MEDIA_ITEM;
    }

    @Override // com.google.android.exoplayer2.source.g, com.google.android.exoplayer2.source.b0
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        b bVar = this.mergeError;
        if (bVar != null) {
            throw bVar;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    public k0(boolean z6, boolean z10, b0... b0VarArr) {
        this(z6, z10, new j(), b0VarArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.g
    @Nullable
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public b0.b A(Integer num, b0.b bVar) {
        if (num.intValue() != 0) {
            return null;
        }
        return bVar;
    }

    @Override // com.google.android.exoplayer2.source.g, com.google.android.exoplayer2.source.a
    protected void w(@Nullable com.google.android.exoplayer2.upstream.m0 m0Var) {
        super.w(m0Var);
        for (int i10 = 0; i10 < this.mediaSources.length; i10++) {
            F(Integer.valueOf(i10), this.mediaSources[i10]);
        }
    }

    @Override // com.google.android.exoplayer2.source.g, com.google.android.exoplayer2.source.a
    protected void y() {
        super.y();
        Arrays.fill(this.timelines, (Object) null);
        this.periodCount = -1;
        this.mergeError = null;
        this.pendingTimelineSources.clear();
        Collections.addAll(this.pendingTimelineSources, this.mediaSources);
    }

    public k0(boolean z6, boolean z10, i iVar, b0... b0VarArr) {
        this.adjustPeriodTimeOffsets = z6;
        this.clipDurations = z10;
        this.mediaSources = b0VarArr;
        this.compositeSequenceableLoaderFactory = iVar;
        this.pendingTimelineSources = new ArrayList<>(Arrays.asList(b0VarArr));
        this.periodCount = -1;
        this.timelines = new z3[b0VarArr.length];
        this.periodTimeOffsetsUs = new long[0][];
        this.clippedDurationsUs = new HashMap();
        this.clippedMediaPeriods = com.google.common.collect.n0.a().a().e();
    }
}
