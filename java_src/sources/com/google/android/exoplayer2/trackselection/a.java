package com.google.android.exoplayer2.trackselection;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.work.WorkRequest;
import com.google.android.exoplayer2.source.f1;
import com.google.android.exoplayer2.z3;
import com.google.common.collect.m0;
import com.google.common.collect.n0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class a extends c {
    public static final float DEFAULT_BANDWIDTH_FRACTION = 0.7f;
    public static final float DEFAULT_BUFFERED_FRACTION_TO_LIVE_EDGE_FOR_QUALITY_INCREASE = 0.75f;
    public static final int DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS = 25000;
    public static final int DEFAULT_MAX_HEIGHT_TO_DISCARD = 719;
    public static final int DEFAULT_MAX_WIDTH_TO_DISCARD = 1279;
    public static final int DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS = 10000;
    public static final int DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS = 25000;
    private static final long MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS = 1000;
    private static final String TAG = "AdaptiveTrackSelection";
    private final com.google.common.collect.a0<C0183a> adaptationCheckpoints;
    private final float bandwidthFraction;
    private final com.google.android.exoplayer2.upstream.e bandwidthMeter;
    private final float bufferedFractionToLiveEdgeForQualityIncrease;
    private final com.google.android.exoplayer2.util.d clock;

    @Nullable
    private com.google.android.exoplayer2.source.chunk.b lastBufferEvaluationMediaChunk;
    private long lastBufferEvaluationMs;
    private final long maxDurationForQualityDecreaseUs;
    private final int maxHeightToDiscard;
    private final int maxWidthToDiscard;
    private final long minDurationForQualityIncreaseUs;
    private final long minDurationToRetainAfterDiscardUs;
    private float playbackSpeed;
    private int reason;
    private int selectedIndex;

    public static class b implements s.b {
        private final float bandwidthFraction;
        private final float bufferedFractionToLiveEdgeForQualityIncrease;
        private final com.google.android.exoplayer2.util.d clock;
        private final int maxDurationForQualityDecreaseMs;
        private final int maxHeightToDiscard;
        private final int maxWidthToDiscard;
        private final int minDurationForQualityIncreaseMs;
        private final int minDurationToRetainAfterDiscardMs;

        public b() {
            this(10000, 25000, 25000, 0.7f);
        }

        public b(int i10, int i11, int i12, float f) {
            this(i10, i11, i12, 1279, 719, f, 0.75f, com.google.android.exoplayer2.util.d.DEFAULT);
        }

        protected a b(f1 f1Var, int[] iArr, int i10, com.google.android.exoplayer2.upstream.e eVar, com.google.common.collect.a0<C0183a> a0Var) {
            return new a(f1Var, iArr, i10, eVar, this.minDurationForQualityIncreaseMs, this.maxDurationForQualityDecreaseMs, this.minDurationToRetainAfterDiscardMs, this.maxWidthToDiscard, this.maxHeightToDiscard, this.bandwidthFraction, this.bufferedFractionToLiveEdgeForQualityIncrease, a0Var, this.clock);
        }

        public b(int i10, int i11, int i12, int i13, int i14, float f) {
            this(i10, i11, i12, i13, i14, f, 0.75f, com.google.android.exoplayer2.util.d.DEFAULT);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.exoplayer2.trackselection.s.b
        public final s[] a(s.a[] aVarArr, com.google.android.exoplayer2.upstream.e eVar, com.google.android.exoplayer2.source.b0.b bVar, z3 z3Var) {
            s sVarB;
            com.google.common.collect.a0 a0VarH = a.h(aVarArr);
            s[] sVarArr = new s[aVarArr.length];
            for (int i10 = 0; i10 < aVarArr.length; i10++) {
                s.a aVar = aVarArr[i10];
                if (aVar != null) {
                    int[] iArr = aVar.tracks;
                    if (iArr.length != 0) {
                        if (iArr.length == 1) {
                            sVarB = new t(aVar.group, iArr[0], aVar.type);
                        } else {
                            sVarB = b(aVar.group, iArr, aVar.type, eVar, (com.google.common.collect.a0) a0VarH.get(i10));
                        }
                        sVarArr[i10] = sVarB;
                    }
                }
            }
            return sVarArr;
        }

        public b(int i10, int i11, int i12, float f, float f6, com.google.android.exoplayer2.util.d dVar) {
            this(i10, i11, i12, 1279, 719, f, f6, dVar);
        }

        public b(int i10, int i11, int i12, int i13, int i14, float f, float f6, com.google.android.exoplayer2.util.d dVar) {
            this.minDurationForQualityIncreaseMs = i10;
            this.maxDurationForQualityDecreaseMs = i11;
            this.minDurationToRetainAfterDiscardMs = i12;
            this.maxWidthToDiscard = i13;
            this.maxHeightToDiscard = i14;
            this.bandwidthFraction = f;
            this.bufferedFractionToLiveEdgeForQualityIncrease = f6;
            this.clock = dVar;
        }
    }

    public a(f1 f1Var, int[] iArr, com.google.android.exoplayer2.upstream.e eVar) {
        this(f1Var, iArr, 0, eVar, WorkRequest.MIN_BACKOFF_MILLIS, 25000L, 25000L, 1279, 719, 0.7f, 0.75f, com.google.common.collect.a0.x(), com.google.android.exoplayer2.util.d.DEFAULT);
    }

    private static long[][] i(s.a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length][];
        for (int i10 = 0; i10 < aVarArr.length; i10++) {
            s.a aVar = aVarArr[i10];
            if (aVar == null) {
                jArr[i10] = new long[0];
            } else {
                jArr[i10] = new long[aVar.tracks.length];
                int i11 = 0;
                while (true) {
                    int[] iArr = aVar.tracks;
                    if (i11 >= iArr.length) {
                        break;
                    }
                    long j6 = aVar.group.c(iArr[i11]).bitrate;
                    long[] jArr2 = jArr[i10];
                    if (j6 == -1) {
                        j6 = 0;
                    }
                    jArr2[i11] = j6;
                    i11++;
                }
                Arrays.sort(jArr[i10]);
            }
        }
        return jArr;
    }

    @Override // com.google.android.exoplayer2.trackselection.c, com.google.android.exoplayer2.trackselection.s
    @CallSuper
    public void disable() {
        this.lastBufferEvaluationMediaChunk = null;
    }

    @Override // com.google.android.exoplayer2.trackselection.c, com.google.android.exoplayer2.trackselection.s
    @CallSuper
    public void enable() {
        this.lastBufferEvaluationMs = -9223372036854775807L;
        this.lastBufferEvaluationMediaChunk = null;
    }

    @Override // com.google.android.exoplayer2.trackselection.s
    public int getSelectedIndex() {
        return this.selectedIndex;
    }

    @Override // com.google.android.exoplayer2.trackselection.c, com.google.android.exoplayer2.trackselection.s
    public void onPlaybackSpeed(float f) {
        this.playbackSpeed = f;
    }

    /* JADX INFO: renamed from: com.google.android.exoplayer2.trackselection.a$a, reason: collision with other inner class name */
    public static final class C0183a {
        public final long allocatedBandwidth;
        public final long totalBandwidth;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0183a)) {
                return false;
            }
            C0183a c0183a = (C0183a) obj;
            return this.totalBandwidth == c0183a.totalBandwidth && this.allocatedBandwidth == c0183a.allocatedBandwidth;
        }

        public int hashCode() {
            return (((int) this.totalBandwidth) * 31) + ((int) this.allocatedBandwidth);
        }

        public C0183a(long j6, long j10) {
            this.totalBandwidth = j6;
            this.allocatedBandwidth = j10;
        }
    }

    private static void g(List<com.google.common.collect.a0.a<C0183a>> list, long[] jArr) {
        long j6 = 0;
        for (long j10 : jArr) {
            j6 += j10;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            com.google.common.collect.a0.a<C0183a> aVar = list.get(i10);
            if (aVar != null) {
                aVar.d(new C0183a(j6, jArr[i10]));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.google.common.collect.a0<com.google.common.collect.a0<C0183a>> h(s.a[] aVarArr) {
        ArrayList arrayList = new ArrayList();
        for (s.a aVar : aVarArr) {
            if (aVar == null || aVar.tracks.length <= 1) {
                arrayList.add(null);
            } else {
                com.google.common.collect.a0.a aVarR = com.google.common.collect.a0.r();
                aVarR.d(new C0183a(0L, 0L));
                arrayList.add(aVarR);
            }
        }
        long[][] jArrI = i(aVarArr);
        int[] iArr = new int[jArrI.length];
        long[] jArr = new long[jArrI.length];
        for (int i10 = 0; i10 < jArrI.length; i10++) {
            long[] jArr2 = jArrI[i10];
            jArr[i10] = jArr2.length == 0 ? 0L : jArr2[0];
        }
        g(arrayList, jArr);
        com.google.common.collect.a0<Integer> a0VarJ = j(jArrI);
        for (int i11 = 0; i11 < a0VarJ.size(); i11++) {
            int iIntValue = a0VarJ.get(i11).intValue();
            int i12 = iArr[iIntValue] + 1;
            iArr[iIntValue] = i12;
            jArr[iIntValue] = jArrI[iIntValue][i12];
            g(arrayList, jArr);
        }
        for (int i13 = 0; i13 < aVarArr.length; i13++) {
            if (arrayList.get(i13) != null) {
                jArr[i13] = jArr[i13] * 2;
            }
        }
        g(arrayList, jArr);
        com.google.common.collect.a0.a aVarR2 = com.google.common.collect.a0.r();
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            com.google.common.collect.a0.a aVar2 = (com.google.common.collect.a0.a) arrayList.get(i14);
            aVarR2.d(aVar2 == null ? com.google.common.collect.a0.x() : aVar2.k());
        }
        return aVarR2.k();
    }

    protected a(f1 f1Var, int[] iArr, int i10, com.google.android.exoplayer2.upstream.e eVar, long j6, long j10, long j11, int i11, int i12, float f, float f6, List<C0183a> list, com.google.android.exoplayer2.util.d dVar) {
        long j12;
        super(f1Var, iArr, i10);
        if (j11 < j6) {
            com.google.android.exoplayer2.util.t.i(TAG, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            j12 = j6;
        } else {
            j12 = j11;
        }
        this.bandwidthMeter = eVar;
        this.minDurationForQualityIncreaseUs = j6 * 1000;
        this.maxDurationForQualityDecreaseUs = j10 * 1000;
        this.minDurationToRetainAfterDiscardUs = j12 * 1000;
        this.maxWidthToDiscard = i11;
        this.maxHeightToDiscard = i12;
        this.bandwidthFraction = f;
        this.bufferedFractionToLiveEdgeForQualityIncrease = f6;
        this.adaptationCheckpoints = com.google.common.collect.a0.t(list);
        this.clock = dVar;
        this.playbackSpeed = 1.0f;
        this.reason = 0;
        this.lastBufferEvaluationMs = -9223372036854775807L;
    }

    private static com.google.common.collect.a0<Integer> j(long[][] jArr) {
        double d;
        m0 m0VarE = n0.c().a().e();
        for (int i10 = 0; i10 < jArr.length; i10++) {
            long[] jArr2 = jArr[i10];
            if (jArr2.length > 1) {
                int length = jArr2.length;
                double[] dArr = new double[length];
                int i11 = 0;
                while (true) {
                    long[] jArr3 = jArr[i10];
                    int length2 = jArr3.length;
                    double dLog = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
                    if (i11 >= length2) {
                        break;
                    }
                    long j6 = jArr3[i11];
                    if (j6 != -1) {
                        dLog = Math.log(j6);
                    }
                    dArr[i11] = dLog;
                    i11++;
                }
                int i12 = length - 1;
                double d2 = dArr[i12] - dArr[0];
                int i13 = 0;
                while (i13 < i12) {
                    double d6 = dArr[i13];
                    i13++;
                    double d7 = (d6 + dArr[i13]) * 0.5d;
                    if (d2 == com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                        d = 1.0d;
                    } else {
                        d = (d7 - dArr[0]) / d2;
                    }
                    m0VarE.put(Double.valueOf(d), Integer.valueOf(i10));
                }
            }
        }
        return com.google.common.collect.a0.t(m0VarE.values());
    }
}
