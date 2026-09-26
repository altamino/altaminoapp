package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.r3;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;

/* JADX INFO: loaded from: classes9.dex */
final class j0 implements y, y.a {

    @Nullable
    private y.a callback;
    private x0 compositeSequenceableLoader;
    private final i compositeSequenceableLoaderFactory;
    private final y[] periods;

    @Nullable
    private h1 trackGroups;
    private final ArrayList<y> childrenPendingPreparation = new ArrayList<>();
    private final HashMap<f1, f1> childTrackGroupByMergedTrackGroup = new HashMap<>();
    private final IdentityHashMap<w0, Integer> streamPeriodIndices = new IdentityHashMap<>();
    private y[] enabledPeriods = new y[0];

    private static final class a implements com.google.android.exoplayer2.trackselection.s {
        private final f1 trackGroup;
        private final com.google.android.exoplayer2.trackselection.s trackSelection;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.trackSelection.equals(aVar.trackSelection) && this.trackGroup.equals(aVar.trackGroup);
        }

        @Override // com.google.android.exoplayer2.trackselection.v
        public f1 getTrackGroup() {
            return this.trackGroup;
        }

        @Override // com.google.android.exoplayer2.trackselection.s
        public void a() {
            this.trackSelection.a();
        }

        @Override // com.google.android.exoplayer2.trackselection.s
        public void b() {
            this.trackSelection.b();
        }

        @Override // com.google.android.exoplayer2.trackselection.s
        public void c(boolean z6) {
            this.trackSelection.c(z6);
        }

        @Override // com.google.android.exoplayer2.trackselection.s
        public void disable() {
            this.trackSelection.disable();
        }

        @Override // com.google.android.exoplayer2.trackselection.s
        public void enable() {
            this.trackSelection.enable();
        }

        @Override // com.google.android.exoplayer2.trackselection.v
        public a2 getFormat(int i10) {
            return this.trackSelection.getFormat(i10);
        }

        @Override // com.google.android.exoplayer2.trackselection.v
        public int getIndexInTrackGroup(int i10) {
            return this.trackSelection.getIndexInTrackGroup(i10);
        }

        @Override // com.google.android.exoplayer2.trackselection.s
        public a2 getSelectedFormat() {
            return this.trackSelection.getSelectedFormat();
        }

        public int hashCode() {
            return ((527 + this.trackGroup.hashCode()) * 31) + this.trackSelection.hashCode();
        }

        @Override // com.google.android.exoplayer2.trackselection.v
        public int indexOf(int i10) {
            return this.trackSelection.indexOf(i10);
        }

        @Override // com.google.android.exoplayer2.trackselection.v
        public int length() {
            return this.trackSelection.length();
        }

        @Override // com.google.android.exoplayer2.trackselection.s
        public void onPlaybackSpeed(float f) {
            this.trackSelection.onPlaybackSpeed(f);
        }

        public a(com.google.android.exoplayer2.trackselection.s sVar, f1 f1Var) {
            this.trackSelection = sVar;
            this.trackGroup = f1Var;
        }
    }

    private static final class b implements y, y.a {
        private y.a callback;
        private final y mediaPeriod;
        private final long timeOffsetUs;

        @Override // com.google.android.exoplayer2.source.y
        public long b(com.google.android.exoplayer2.trackselection.s[] sVarArr, boolean[] zArr, w0[] w0VarArr, boolean[] zArr2, long j6) {
            w0[] w0VarArr2 = new w0[w0VarArr.length];
            int i10 = 0;
            while (true) {
                w0 w0VarB = null;
                if (i10 >= w0VarArr.length) {
                    break;
                }
                c cVar = (c) w0VarArr[i10];
                if (cVar != null) {
                    w0VarB = cVar.b();
                }
                w0VarArr2[i10] = w0VarB;
                i10++;
            }
            long jB = this.mediaPeriod.b(sVarArr, zArr, w0VarArr2, zArr2, j6 - this.timeOffsetUs);
            for (int i11 = 0; i11 < w0VarArr.length; i11++) {
                w0 w0Var = w0VarArr2[i11];
                if (w0Var == null) {
                    w0VarArr[i11] = null;
                } else {
                    w0 w0Var2 = w0VarArr[i11];
                    if (w0Var2 == null || ((c) w0Var2).b() != w0Var) {
                        w0VarArr[i11] = new c(w0Var, this.timeOffsetUs);
                    }
                }
            }
            return jB + this.timeOffsetUs;
        }

        @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
        public boolean continueLoading(long j6) {
            return this.mediaPeriod.continueLoading(j6 - this.timeOffsetUs);
        }

        @Override // com.google.android.exoplayer2.source.y.a
        public void d(y yVar) {
            ((y.a) com.google.android.exoplayer2.util.a.e(this.callback)).d(this);
        }

        @Override // com.google.android.exoplayer2.source.y
        public void discardBuffer(long j6, boolean z6) {
            this.mediaPeriod.discardBuffer(j6 - this.timeOffsetUs, z6);
        }

        @Override // com.google.android.exoplayer2.source.y
        public long e(long j6, r3 r3Var) {
            return this.mediaPeriod.e(j6 - this.timeOffsetUs, r3Var) + this.timeOffsetUs;
        }

        @Override // com.google.android.exoplayer2.source.y
        public void f(y.a aVar, long j6) {
            this.callback = aVar;
            this.mediaPeriod.f(this, j6 - this.timeOffsetUs);
        }

        @Override // com.google.android.exoplayer2.source.x0.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void c(y yVar) {
            ((y.a) com.google.android.exoplayer2.util.a.e(this.callback)).c(this);
        }

        @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
        public long getBufferedPositionUs() {
            long bufferedPositionUs = this.mediaPeriod.getBufferedPositionUs();
            if (bufferedPositionUs == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.timeOffsetUs + bufferedPositionUs;
        }

        @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
        public long getNextLoadPositionUs() {
            long nextLoadPositionUs = this.mediaPeriod.getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.timeOffsetUs + nextLoadPositionUs;
        }

        @Override // com.google.android.exoplayer2.source.y
        public h1 getTrackGroups() {
            return this.mediaPeriod.getTrackGroups();
        }

        @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
        public boolean isLoading() {
            return this.mediaPeriod.isLoading();
        }

        @Override // com.google.android.exoplayer2.source.y
        public void maybeThrowPrepareError() throws IOException {
            this.mediaPeriod.maybeThrowPrepareError();
        }

        @Override // com.google.android.exoplayer2.source.y
        public long readDiscontinuity() {
            long discontinuity = this.mediaPeriod.readDiscontinuity();
            if (discontinuity == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.timeOffsetUs + discontinuity;
        }

        @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
        public void reevaluateBuffer(long j6) {
            this.mediaPeriod.reevaluateBuffer(j6 - this.timeOffsetUs);
        }

        @Override // com.google.android.exoplayer2.source.y
        public long seekToUs(long j6) {
            return this.mediaPeriod.seekToUs(j6 - this.timeOffsetUs) + this.timeOffsetUs;
        }

        public b(y yVar, long j6) {
            this.mediaPeriod = yVar;
            this.timeOffsetUs = j6;
        }
    }

    private static final class c implements w0 {
        private final w0 sampleStream;
        private final long timeOffsetUs;

        public w0 b() {
            return this.sampleStream;
        }

        @Override // com.google.android.exoplayer2.source.w0
        public int a(b2 b2Var, com.google.android.exoplayer2.decoder.g gVar, int i10) {
            int iA = this.sampleStream.a(b2Var, gVar, i10);
            if (iA == -4) {
                gVar.timeUs = Math.max(0L, gVar.timeUs + this.timeOffsetUs);
            }
            return iA;
        }

        @Override // com.google.android.exoplayer2.source.w0
        public boolean isReady() {
            return this.sampleStream.isReady();
        }

        @Override // com.google.android.exoplayer2.source.w0
        public void maybeThrowError() throws IOException {
            this.sampleStream.maybeThrowError();
        }

        @Override // com.google.android.exoplayer2.source.w0
        public int skipData(long j6) {
            return this.sampleStream.skipData(j6 - this.timeOffsetUs);
        }

        public c(w0 w0Var, long j6) {
            this.sampleStream = w0Var;
            this.timeOffsetUs = j6;
        }
    }

    public y a(int i10) {
        y yVar = this.periods[i10];
        return yVar instanceof b ? ((b) yVar).mediaPeriod : yVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.exoplayer2.source.y
    public long b(com.google.android.exoplayer2.trackselection.s[] sVarArr, boolean[] zArr, w0[] w0VarArr, boolean[] zArr2, long j6) {
        Integer num;
        int[] iArr = new int[sVarArr.length];
        int[] iArr2 = new int[sVarArr.length];
        int i10 = 0;
        while (true) {
            num = null;
            if (i10 >= sVarArr.length) {
                break;
            }
            w0 w0Var = w0VarArr[i10];
            num = w0Var != null ? this.streamPeriodIndices.get(w0Var) : null;
            iArr[i10] = num == null ? -1 : num.intValue();
            iArr2[i10] = -1;
            com.google.android.exoplayer2.trackselection.s sVar = sVarArr[i10];
            if (sVar != null) {
                f1 f1Var = (f1) com.google.android.exoplayer2.util.a.e(this.childTrackGroupByMergedTrackGroup.get(sVar.getTrackGroup()));
                int i11 = 0;
                while (true) {
                    y[] yVarArr = this.periods;
                    if (i11 >= yVarArr.length) {
                        break;
                    }
                    if (yVarArr[i11].getTrackGroups().c(f1Var) != -1) {
                        iArr2[i10] = i11;
                        break;
                    }
                    i11++;
                }
            }
            i10++;
        }
        this.streamPeriodIndices.clear();
        int length = sVarArr.length;
        w0[] w0VarArr2 = new w0[length];
        w0[] w0VarArr3 = new w0[sVarArr.length];
        Object[] objArr = new com.google.android.exoplayer2.trackselection.s[sVarArr.length];
        ArrayList arrayList = new ArrayList(this.periods.length);
        long j10 = j6;
        int i12 = 0;
        while (i12 < this.periods.length) {
            for (int i13 = 0; i13 < sVarArr.length; i13++) {
                w0VarArr3[i13] = iArr[i13] == i12 ? w0VarArr[i13] : num;
                if (iArr2[i13] == i12) {
                    com.google.android.exoplayer2.trackselection.s sVar2 = (com.google.android.exoplayer2.trackselection.s) com.google.android.exoplayer2.util.a.e(sVarArr[i13]);
                    objArr[i13] = new a(sVar2, (f1) com.google.android.exoplayer2.util.a.e(this.childTrackGroupByMergedTrackGroup.get(sVar2.getTrackGroup())));
                } else {
                    objArr[i13] = num;
                }
            }
            int i14 = i12;
            ArrayList arrayList2 = arrayList;
            Object[] objArr2 = objArr;
            long jB = this.periods[i12].b(objArr, zArr, w0VarArr3, zArr2, j10);
            if (i14 == 0) {
                j10 = jB;
            } else if (jB != j10) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z6 = false;
            for (int i15 = 0; i15 < sVarArr.length; i15++) {
                if (iArr2[i15] == i14) {
                    w0 w0Var2 = (w0) com.google.android.exoplayer2.util.a.e(w0VarArr3[i15]);
                    w0VarArr2[i15] = w0VarArr3[i15];
                    this.streamPeriodIndices.put(w0Var2, Integer.valueOf(i14));
                    z6 = true;
                } else if (iArr[i15] == i14) {
                    com.google.android.exoplayer2.util.a.g(w0VarArr3[i15] == 0);
                }
            }
            if (z6) {
                arrayList2.add(this.periods[i14]);
            }
            i12 = i14 + 1;
            arrayList = arrayList2;
            objArr = objArr2;
            num = null;
        }
        System.arraycopy(w0VarArr2, 0, w0VarArr, 0, length);
        y[] yVarArr2 = (y[]) arrayList.toArray(new y[0]);
        this.enabledPeriods = yVarArr2;
        this.compositeSequenceableLoader = this.compositeSequenceableLoaderFactory.a(yVarArr2);
        return j10;
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public boolean continueLoading(long j6) {
        if (this.childrenPendingPreparation.isEmpty()) {
            return this.compositeSequenceableLoader.continueLoading(j6);
        }
        int size = this.childrenPendingPreparation.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.childrenPendingPreparation.get(i10).continueLoading(j6);
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.y.a
    public void d(y yVar) {
        this.childrenPendingPreparation.remove(yVar);
        if (!this.childrenPendingPreparation.isEmpty()) {
            return;
        }
        int i10 = 0;
        for (y yVar2 : this.periods) {
            i10 += yVar2.getTrackGroups().length;
        }
        f1[] f1VarArr = new f1[i10];
        int i11 = 0;
        int i12 = 0;
        while (true) {
            y[] yVarArr = this.periods;
            if (i11 >= yVarArr.length) {
                this.trackGroups = new h1(f1VarArr);
                ((y.a) com.google.android.exoplayer2.util.a.e(this.callback)).d(this);
                return;
            }
            h1 trackGroups = yVarArr[i11].getTrackGroups();
            int i13 = trackGroups.length;
            int i14 = 0;
            while (i14 < i13) {
                f1 f1VarB = trackGroups.b(i14);
                f1 f1VarB2 = f1VarB.b(i11 + ":" + f1VarB.id);
                this.childTrackGroupByMergedTrackGroup.put(f1VarB2, f1VarB);
                f1VarArr[i12] = f1VarB2;
                i14++;
                i12++;
            }
            i11++;
        }
    }

    @Override // com.google.android.exoplayer2.source.y
    public void discardBuffer(long j6, boolean z6) {
        for (y yVar : this.enabledPeriods) {
            yVar.discardBuffer(j6, z6);
        }
    }

    @Override // com.google.android.exoplayer2.source.y
    public long e(long j6, r3 r3Var) {
        y[] yVarArr = this.enabledPeriods;
        return (yVarArr.length > 0 ? yVarArr[0] : this.periods[0]).e(j6, r3Var);
    }

    @Override // com.google.android.exoplayer2.source.y
    public void f(y.a aVar, long j6) {
        this.callback = aVar;
        Collections.addAll(this.childrenPendingPreparation, this.periods);
        for (y yVar : this.periods) {
            yVar.f(this, j6);
        }
    }

    @Override // com.google.android.exoplayer2.source.x0.a
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void c(y yVar) {
        ((y.a) com.google.android.exoplayer2.util.a.e(this.callback)).c(this);
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public long getBufferedPositionUs() {
        return this.compositeSequenceableLoader.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public long getNextLoadPositionUs() {
        return this.compositeSequenceableLoader.getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.y
    public h1 getTrackGroups() {
        return (h1) com.google.android.exoplayer2.util.a.e(this.trackGroups);
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public boolean isLoading() {
        return this.compositeSequenceableLoader.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.y
    public void maybeThrowPrepareError() throws IOException {
        for (y yVar : this.periods) {
            yVar.maybeThrowPrepareError();
        }
    }

    @Override // com.google.android.exoplayer2.source.y
    public long readDiscontinuity() {
        long j6 = -9223372036854775807L;
        for (y yVar : this.enabledPeriods) {
            long discontinuity = yVar.readDiscontinuity();
            if (discontinuity == -9223372036854775807L) {
                if (j6 != -9223372036854775807L && yVar.seekToUs(j6) != j6) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else if (j6 == -9223372036854775807L) {
                for (y yVar2 : this.enabledPeriods) {
                    if (yVar2 == yVar) {
                        break;
                    }
                    if (yVar2.seekToUs(discontinuity) != discontinuity) {
                        throw new IllegalStateException("Unexpected child seekToUs result.");
                    }
                }
                j6 = discontinuity;
            } else if (discontinuity != j6) {
                throw new IllegalStateException("Conflicting discontinuities.");
            }
        }
        return j6;
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public void reevaluateBuffer(long j6) {
        this.compositeSequenceableLoader.reevaluateBuffer(j6);
    }

    @Override // com.google.android.exoplayer2.source.y
    public long seekToUs(long j6) {
        long jSeekToUs = this.enabledPeriods[0].seekToUs(j6);
        int i10 = 1;
        while (true) {
            y[] yVarArr = this.enabledPeriods;
            if (i10 >= yVarArr.length) {
                return jSeekToUs;
            }
            if (yVarArr[i10].seekToUs(jSeekToUs) != jSeekToUs) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i10++;
        }
    }

    public j0(i iVar, long[] jArr, y... yVarArr) {
        this.compositeSequenceableLoaderFactory = iVar;
        this.periods = yVarArr;
        this.compositeSequenceableLoader = iVar.a(new x0[0]);
        for (int i10 = 0; i10 < yVarArr.length; i10++) {
            long j6 = jArr[i10];
            if (j6 != 0) {
                this.periods[i10] = new b(yVarArr[i10], j6);
            }
        }
    }
}
