package com.google.android.exoplayer2.source;

import androidx.annotation.CallSuper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class v0 implements com.google.android.exoplayer2.extractor.e0 {

    @VisibleForTesting
    static final int SAMPLE_CAPACITY_INCREMENT = 1000;
    private static final String TAG = "SampleQueue";
    private int absoluteFirstIndex;

    @Nullable
    private com.google.android.exoplayer2.drm.n currentDrmSession;

    @Nullable
    private a2 downstreamFormat;

    @Nullable
    private final com.google.android.exoplayer2.drm.v.a drmEventDispatcher;

    @Nullable
    private final com.google.android.exoplayer2.drm.x drmSessionManager;
    private boolean isLastSampleQueued;
    private int length;
    private boolean loggedUnexpectedNonSyncSample;
    private boolean pendingSplice;
    private int readPosition;
    private int relativeFirstIndex;
    private final t0 sampleDataQueue;
    private long sampleOffsetUs;

    @Nullable
    private a2 unadjustedUpstreamFormat;
    private boolean upstreamAllSamplesAreSyncSamples;

    @Nullable
    private a2 upstreamFormat;
    private boolean upstreamFormatAdjustmentRequired;

    @Nullable
    private d upstreamFormatChangeListener;
    private int upstreamSourceId;
    private final b extrasHolder = new b();
    private int capacity = 1000;
    private int[] sourceIds = new int[1000];
    private long[] offsets = new long[1000];
    private long[] timesUs = new long[1000];
    private int[] flags = new int[1000];
    private int[] sizes = new int[1000];
    private com.google.android.exoplayer2.extractor.e0.a[] cryptoDatas = new com.google.android.exoplayer2.extractor.e0.a[1000];
    private final d1<c> sharedSampleMetadata = new d1<>(new com.google.android.exoplayer2.util.h() { // from class: com.google.android.exoplayer2.source.u0
        @Override // com.google.android.exoplayer2.util.h
        public final void accept(Object obj) {
            v0.E((v0.c) obj);
        }
    });
    private long startTimeUs = Long.MIN_VALUE;
    private long largestDiscardedTimestampUs = Long.MIN_VALUE;
    private long largestQueuedTimestampUs = Long.MIN_VALUE;
    private boolean upstreamFormatRequired = true;
    private boolean upstreamKeyframeRequired = true;

    /* JADX INFO: Access modifiers changed from: private */
    static final class c {
        public final com.google.android.exoplayer2.drm.x.b drmSessionReference;
        public final a2 format;

        private c(a2 a2Var, com.google.android.exoplayer2.drm.x.b bVar) {
            this.format = a2Var;
            this.drmSessionReference = bVar;
        }
    }

    public interface d {
        void a(a2 a2Var);
    }

    private boolean B() {
        return this.readPosition != this.length;
    }

    private synchronized int I(b2 b2Var, com.google.android.exoplayer2.decoder.g gVar, boolean z6, boolean z10, b bVar) {
        try {
            gVar.waitingForKeys = false;
            if (!B()) {
                if (!z10 && !this.isLastSampleQueued) {
                    a2 a2Var = this.upstreamFormat;
                    if (a2Var == null || (!z6 && a2Var == this.downstreamFormat)) {
                        return -3;
                    }
                    H((a2) com.google.android.exoplayer2.util.a.e(a2Var), b2Var);
                    return -5;
                }
                gVar.k(4);
                return -4;
            }
            a2 a2Var2 = this.sharedSampleMetadata.f(w()).format;
            if (!z6 && a2Var2 == this.downstreamFormat) {
                int iX = x(this.readPosition);
                if (!F(iX)) {
                    gVar.waitingForKeys = true;
                    return -3;
                }
                gVar.k(this.flags[iX]);
                long j6 = this.timesUs[iX];
                gVar.timeUs = j6;
                if (j6 < this.startTimeUs) {
                    gVar.a(Integer.MIN_VALUE);
                }
                bVar.size = this.sizes[iX];
                bVar.offset = this.offsets[iX];
                bVar.cryptoData = this.cryptoDatas[iX];
                return -4;
            }
            H(a2Var2, b2Var);
            return -5;
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void P() {
        this.readPosition = 0;
        this.sampleDataQueue.n();
    }

    private synchronized boolean S(a2 a2Var) {
        try {
            this.upstreamFormatRequired = false;
            if (com.google.android.exoplayer2.util.o0.c(a2Var, this.upstreamFormat)) {
                return false;
            }
            if (this.sharedSampleMetadata.h() || !this.sharedSampleMetadata.g().format.equals(a2Var)) {
                this.upstreamFormat = a2Var;
            } else {
                this.upstreamFormat = this.sharedSampleMetadata.g().format;
            }
            a2 a2Var2 = this.upstreamFormat;
            this.upstreamAllSamplesAreSyncSamples = com.google.android.exoplayer2.util.x.a(a2Var2.sampleMimeType, a2Var2.codecs);
            this.loggedUnexpectedNonSyncSample = false;
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized boolean h(long j6) {
        if (this.length == 0) {
            return j6 > this.largestDiscardedTimestampUs;
        }
        if (u() >= j6) {
            return false;
        }
        q(this.absoluteFirstIndex + j(j6));
        return true;
    }

    private synchronized void i(long j6, int i10, long j10, int i11, @Nullable com.google.android.exoplayer2.extractor.e0.a aVar) {
        try {
            int i12 = this.length;
            if (i12 > 0) {
                int iX = x(i12 - 1);
                com.google.android.exoplayer2.util.a.a(this.offsets[iX] + ((long) this.sizes[iX]) <= j10);
            }
            this.isLastSampleQueued = (536870912 & i10) != 0;
            this.largestQueuedTimestampUs = Math.max(this.largestQueuedTimestampUs, j6);
            int iX2 = x(this.length);
            this.timesUs[iX2] = j6;
            this.offsets[iX2] = j10;
            this.sizes[iX2] = i11;
            this.flags[iX2] = i10;
            this.cryptoDatas[iX2] = aVar;
            this.sourceIds[iX2] = this.upstreamSourceId;
            if (this.sharedSampleMetadata.h() || !this.sharedSampleMetadata.g().format.equals(this.upstreamFormat)) {
                com.google.android.exoplayer2.drm.x xVar = this.drmSessionManager;
                this.sharedSampleMetadata.b(A(), new c((a2) com.google.android.exoplayer2.util.a.e(this.upstreamFormat), xVar != null ? xVar.b(this.drmEventDispatcher, this.upstreamFormat) : com.google.android.exoplayer2.drm.x.b.EMPTY));
            }
            int i13 = this.length + 1;
            this.length = i13;
            int i14 = this.capacity;
            if (i13 == i14) {
                int i15 = i14 + 1000;
                int[] iArr = new int[i15];
                long[] jArr = new long[i15];
                long[] jArr2 = new long[i15];
                int[] iArr2 = new int[i15];
                int[] iArr3 = new int[i15];
                com.google.android.exoplayer2.extractor.e0.a[] aVarArr = new com.google.android.exoplayer2.extractor.e0.a[i15];
                int i16 = this.relativeFirstIndex;
                int i17 = i14 - i16;
                System.arraycopy(this.offsets, i16, jArr, 0, i17);
                System.arraycopy(this.timesUs, this.relativeFirstIndex, jArr2, 0, i17);
                System.arraycopy(this.flags, this.relativeFirstIndex, iArr2, 0, i17);
                System.arraycopy(this.sizes, this.relativeFirstIndex, iArr3, 0, i17);
                System.arraycopy(this.cryptoDatas, this.relativeFirstIndex, aVarArr, 0, i17);
                System.arraycopy(this.sourceIds, this.relativeFirstIndex, iArr, 0, i17);
                int i18 = this.relativeFirstIndex;
                System.arraycopy(this.offsets, 0, jArr, i17, i18);
                System.arraycopy(this.timesUs, 0, jArr2, i17, i18);
                System.arraycopy(this.flags, 0, iArr2, i17, i18);
                System.arraycopy(this.sizes, 0, iArr3, i17, i18);
                System.arraycopy(this.cryptoDatas, 0, aVarArr, i17, i18);
                System.arraycopy(this.sourceIds, 0, iArr, i17, i18);
                this.offsets = jArr;
                this.timesUs = jArr2;
                this.flags = iArr2;
                this.sizes = iArr3;
                this.cryptoDatas = aVarArr;
                this.sourceIds = iArr;
                this.relativeFirstIndex = 0;
                this.capacity = i15;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized long l(long j6, boolean z6, boolean z10) {
        int i10;
        try {
            int i11 = this.length;
            if (i11 != 0) {
                long[] jArr = this.timesUs;
                int i12 = this.relativeFirstIndex;
                if (j6 >= jArr[i12]) {
                    if (z10 && (i10 = this.readPosition) != i11) {
                        i11 = i10 + 1;
                    }
                    int iR = r(i12, i11, j6, z6);
                    if (iR == -1) {
                        return -1L;
                    }
                    return n(iR);
                }
            }
            return -1L;
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized long m() {
        int i10 = this.length;
        if (i10 == 0) {
            return -1L;
        }
        return n(i10);
    }

    private int r(int i10, int i11, long j6, boolean z6) {
        int i12 = -1;
        for (int i13 = 0; i13 < i11; i13++) {
            long j10 = this.timesUs[i10];
            if (j10 > j6) {
                return i12;
            }
            if (!z6 || (this.flags[i10] & 1) != 0) {
                if (j10 == j6) {
                    return i13;
                }
                i12 = i13;
            }
            i10++;
            if (i10 == this.capacity) {
                i10 = 0;
            }
        }
        return i12;
    }

    private int x(int i10) {
        int i11 = this.relativeFirstIndex + i10;
        int i12 = this.capacity;
        return i11 < i12 ? i11 : i11 - i12;
    }

    public final int A() {
        return this.absoluteFirstIndex + this.length;
    }

    public final synchronized boolean C() {
        return this.isLastSampleQueued;
    }

    @CallSuper
    public synchronized boolean D(boolean z6) {
        a2 a2Var;
        boolean z10 = true;
        if (B()) {
            if (this.sharedSampleMetadata.f(w()).format != this.downstreamFormat) {
                return true;
            }
            return F(x(this.readPosition));
        }
        if (!z6 && !this.isLastSampleQueued && ((a2Var = this.upstreamFormat) == null || a2Var == this.downstreamFormat)) {
            z10 = false;
        }
        return z10;
    }

    @CallSuper
    public void L() {
        O(true);
        M();
    }

    public final void N() {
        O(false);
    }

    public final synchronized boolean Q(long j6, boolean z6) {
        P();
        int iX = x(this.readPosition);
        if (B() && j6 >= this.timesUs[iX] && (j6 <= this.largestQueuedTimestampUs || z6)) {
            int iR = r(iX, this.length - this.readPosition, j6, true);
            if (iR == -1) {
                return false;
            }
            this.startTimeUs = j6;
            this.readPosition += iR;
            return true;
        }
        return false;
    }

    public final void R(long j6) {
        this.startTimeUs = j6;
    }

    public final void T(@Nullable d dVar) {
        this.upstreamFormatChangeListener = dVar;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x000e  */
    public final synchronized void U(int i10) {
        boolean z6;
        if (i10 >= 0) {
            try {
                if (this.readPosition + i10 <= this.length) {
                    z6 = true;
                } else {
                    z6 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        } else {
            z6 = false;
        }
        com.google.android.exoplayer2.util.a.a(z6);
        this.readPosition += i10;
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public /* synthetic */ int b(com.google.android.exoplayer2.upstream.h hVar, int i10, boolean z6) {
        return com.google.android.exoplayer2.extractor.d0.a(this, hVar, i10, z6);
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public /* synthetic */ void c(com.google.android.exoplayer2.util.c0 c0Var, int i10) {
        com.google.android.exoplayer2.extractor.d0.b(this, c0Var, i10);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0054  */
    @Override // com.google.android.exoplayer2.extractor.e0
    public void e(long j6, int i10, int i11, int i12, @Nullable com.google.android.exoplayer2.extractor.e0.a aVar) {
        int i13;
        if (this.upstreamFormatAdjustmentRequired) {
            d((a2) com.google.android.exoplayer2.util.a.i(this.unadjustedUpstreamFormat));
        }
        int i14 = i10 & 1;
        boolean z6 = i14 != 0;
        if (this.upstreamKeyframeRequired) {
            if (!z6) {
                return;
            } else {
                this.upstreamKeyframeRequired = false;
            }
        }
        long j10 = this.sampleOffsetUs + j6;
        if (!this.upstreamAllSamplesAreSyncSamples) {
            i13 = i10;
        } else {
            if (j10 < this.startTimeUs) {
                return;
            }
            if (i14 == 0) {
                if (!this.loggedUnexpectedNonSyncSample) {
                    com.google.android.exoplayer2.util.t.i(TAG, "Overriding unexpected non-sync sample for format: " + this.upstreamFormat);
                    this.loggedUnexpectedNonSyncSample = true;
                }
                i13 = i10 | 1;
            } else {
                i13 = i10;
            }
        }
        if (this.pendingSplice) {
            if (!z6 || !h(j10)) {
                return;
            } else {
                this.pendingSplice = false;
            }
        }
        i(j10, i13, (this.sampleDataQueue.d() - ((long) i11)) - ((long) i12), i11, aVar);
    }

    public final synchronized long t() {
        return this.largestQueuedTimestampUs;
    }

    public final synchronized long u() {
        return Math.max(this.largestDiscardedTimestampUs, v(this.readPosition));
    }

    public final int w() {
        return this.absoluteFirstIndex + this.readPosition;
    }

    public final synchronized int y(long j6, boolean z6) {
        int iX = x(this.readPosition);
        if (B() && j6 >= this.timesUs[iX]) {
            if (j6 > this.largestQueuedTimestampUs && z6) {
                return this.length - this.readPosition;
            }
            int iR = r(iX, this.length - this.readPosition, j6, true);
            if (iR == -1) {
                return 0;
            }
            return iR;
        }
        return 0;
    }

    @Nullable
    public final synchronized a2 z() {
        return this.upstreamFormatRequired ? null : this.upstreamFormat;
    }

    static final class b {

        @Nullable
        public com.google.android.exoplayer2.extractor.e0.a cryptoData;
        public long offset;
        public int size;

        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void E(c cVar) {
        cVar.drmSessionReference.release();
    }

    private boolean F(int i10) {
        com.google.android.exoplayer2.drm.n nVar = this.currentDrmSession;
        return nVar == null || nVar.getState() == 4 || ((this.flags[i10] & 1073741824) == 0 && this.currentDrmSession.a());
    }

    private void H(a2 a2Var, b2 b2Var) {
        a2 a2Var2 = this.downstreamFormat;
        boolean z6 = a2Var2 == null;
        DrmInitData drmInitData = z6 ? null : a2Var2.drmInitData;
        this.downstreamFormat = a2Var;
        DrmInitData drmInitData2 = a2Var.drmInitData;
        com.google.android.exoplayer2.drm.x xVar = this.drmSessionManager;
        b2Var.format = xVar != null ? a2Var.c(xVar.c(a2Var)) : a2Var;
        b2Var.drmSession = this.currentDrmSession;
        if (this.drmSessionManager == null) {
            return;
        }
        if (z6 || !com.google.android.exoplayer2.util.o0.c(drmInitData, drmInitData2)) {
            com.google.android.exoplayer2.drm.n nVar = this.currentDrmSession;
            com.google.android.exoplayer2.drm.n nVarA = this.drmSessionManager.a(this.drmEventDispatcher, a2Var);
            this.currentDrmSession = nVarA;
            b2Var.drmSession = nVarA;
            if (nVar != null) {
                nVar.e(this.drmEventDispatcher);
            }
        }
    }

    private void M() {
        com.google.android.exoplayer2.drm.n nVar = this.currentDrmSession;
        if (nVar != null) {
            nVar.e(this.drmEventDispatcher);
            this.currentDrmSession = null;
            this.downstreamFormat = null;
        }
    }

    private int j(long j6) {
        int i10 = this.length;
        int iX = x(i10 - 1);
        while (i10 > this.readPosition && this.timesUs[iX] >= j6) {
            i10--;
            iX--;
            if (iX == -1) {
                iX = this.capacity - 1;
            }
        }
        return i10;
    }

    public static v0 k(com.google.android.exoplayer2.upstream.b bVar, com.google.android.exoplayer2.drm.x xVar, com.google.android.exoplayer2.drm.v.a aVar) {
        return new v0(bVar, (com.google.android.exoplayer2.drm.x) com.google.android.exoplayer2.util.a.e(xVar), (com.google.android.exoplayer2.drm.v.a) com.google.android.exoplayer2.util.a.e(aVar));
    }

    @GuardedBy
    private long n(int i10) {
        this.largestDiscardedTimestampUs = Math.max(this.largestDiscardedTimestampUs, v(i10));
        this.length -= i10;
        int i11 = this.absoluteFirstIndex + i10;
        this.absoluteFirstIndex = i11;
        int i12 = this.relativeFirstIndex + i10;
        this.relativeFirstIndex = i12;
        int i13 = this.capacity;
        if (i12 >= i13) {
            this.relativeFirstIndex = i12 - i13;
        }
        int i14 = this.readPosition - i10;
        this.readPosition = i14;
        if (i14 < 0) {
            this.readPosition = 0;
        }
        this.sharedSampleMetadata.e(i11);
        if (this.length != 0) {
            return this.offsets[this.relativeFirstIndex];
        }
        int i15 = this.relativeFirstIndex;
        if (i15 == 0) {
            i15 = this.capacity;
        }
        int i16 = i15 - 1;
        return this.offsets[i16] + ((long) this.sizes[i16]);
    }

    private long v(int i10) {
        long jMax = Long.MIN_VALUE;
        if (i10 == 0) {
            return Long.MIN_VALUE;
        }
        int iX = x(i10 - 1);
        for (int i11 = 0; i11 < i10; i11++) {
            jMax = Math.max(jMax, this.timesUs[iX]);
            if ((this.flags[iX] & 1) != 0) {
                break;
            }
            iX--;
            if (iX == -1) {
                iX = this.capacity - 1;
            }
        }
        return jMax;
    }

    @CallSuper
    public void G() throws IOException {
        com.google.android.exoplayer2.drm.n nVar = this.currentDrmSession;
        if (nVar != null && nVar.getState() == 1) {
            throw ((com.google.android.exoplayer2.drm.n.a) com.google.android.exoplayer2.util.a.e(this.currentDrmSession.getError()));
        }
    }

    @CallSuper
    public int K(b2 b2Var, com.google.android.exoplayer2.decoder.g gVar, int i10, boolean z6) {
        int I = I(b2Var, gVar, (i10 & 2) != 0, z6, this.extrasHolder);
        if (I == -4 && !gVar.h()) {
            boolean z10 = (i10 & 1) != 0;
            if ((i10 & 4) == 0) {
                if (z10) {
                    this.sampleDataQueue.e(gVar, this.extrasHolder);
                } else {
                    this.sampleDataQueue.l(gVar, this.extrasHolder);
                }
            }
            if (!z10) {
                this.readPosition++;
            }
        }
        return I;
    }

    @CallSuper
    public void O(boolean z6) {
        this.sampleDataQueue.m();
        this.length = 0;
        this.absoluteFirstIndex = 0;
        this.relativeFirstIndex = 0;
        this.readPosition = 0;
        this.upstreamKeyframeRequired = true;
        this.startTimeUs = Long.MIN_VALUE;
        this.largestDiscardedTimestampUs = Long.MIN_VALUE;
        this.largestQueuedTimestampUs = Long.MIN_VALUE;
        this.isLastSampleQueued = false;
        this.sharedSampleMetadata.c();
        if (z6) {
            this.unadjustedUpstreamFormat = null;
            this.upstreamFormat = null;
            this.upstreamFormatRequired = true;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public final int a(com.google.android.exoplayer2.upstream.h hVar, int i10, boolean z6, int i11) throws IOException {
        return this.sampleDataQueue.o(hVar, i10, z6);
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public final void f(com.google.android.exoplayer2.util.c0 c0Var, int i10, int i11) {
        this.sampleDataQueue.p(c0Var, i10);
    }

    public final void o(long j6, boolean z6, boolean z10) {
        this.sampleDataQueue.b(l(j6, z6, z10));
    }

    public final void p() {
        this.sampleDataQueue.b(m());
    }

    @CallSuper
    protected a2 s(a2 a2Var) {
        return (this.sampleOffsetUs == 0 || a2Var.subsampleOffsetUs == Long.MAX_VALUE) ? a2Var : a2Var.b().i0(a2Var.subsampleOffsetUs + this.sampleOffsetUs).E();
    }

    protected v0(com.google.android.exoplayer2.upstream.b bVar, @Nullable com.google.android.exoplayer2.drm.x xVar, @Nullable com.google.android.exoplayer2.drm.v.a aVar) {
        this.drmSessionManager = xVar;
        this.drmEventDispatcher = aVar;
        this.sampleDataQueue = new t0(bVar);
    }

    private long q(int i10) {
        boolean z6;
        int iA = A() - i10;
        boolean z10 = false;
        if (iA >= 0 && iA <= this.length - this.readPosition) {
            z6 = true;
        } else {
            z6 = false;
        }
        com.google.android.exoplayer2.util.a.a(z6);
        int i11 = this.length - iA;
        this.length = i11;
        this.largestQueuedTimestampUs = Math.max(this.largestDiscardedTimestampUs, v(i11));
        if (iA == 0 && this.isLastSampleQueued) {
            z10 = true;
        }
        this.isLastSampleQueued = z10;
        this.sharedSampleMetadata.d(i10);
        int i12 = this.length;
        if (i12 != 0) {
            int iX = x(i12 - 1);
            return this.offsets[iX] + ((long) this.sizes[iX]);
        }
        return 0L;
    }

    @CallSuper
    public void J() {
        p();
        M();
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public final void d(a2 a2Var) {
        a2 a2VarS = s(a2Var);
        this.upstreamFormatAdjustmentRequired = false;
        this.unadjustedUpstreamFormat = a2Var;
        boolean zS = S(a2VarS);
        d dVar = this.upstreamFormatChangeListener;
        if (dVar != null && zS) {
            dVar.a(a2VarS);
        }
    }
}
