package androidx.media3.exoplayer.source;

import androidx.annotation.CallSuper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.DataReader;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.extractor.TrackOutput;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
@UnstableApi
public class SampleQueue implements TrackOutput {

    @VisibleForTesting
    static final int SAMPLE_CAPACITY_INCREMENT = 1000;
    private static final String TAG = "SampleQueue";
    private int absoluteFirstIndex;

    @Nullable
    private DrmSession currentDrmSession;

    @Nullable
    private Format downstreamFormat;

    @Nullable
    private final DrmSessionEventListener.EventDispatcher drmEventDispatcher;

    @Nullable
    private final DrmSessionManager drmSessionManager;
    private boolean isLastSampleQueued;
    private int length;
    private boolean loggedUnexpectedNonSyncSample;
    private boolean pendingSplice;
    private int readPosition;
    private int relativeFirstIndex;
    private final SampleDataQueue sampleDataQueue;
    private long sampleOffsetUs;

    @Nullable
    private Format unadjustedUpstreamFormat;
    private boolean upstreamAllSamplesAreSyncSamples;

    @Nullable
    private Format upstreamFormat;
    private boolean upstreamFormatAdjustmentRequired;

    @Nullable
    private UpstreamFormatChangedListener upstreamFormatChangeListener;
    private long upstreamSourceId;
    private final SampleExtrasHolder extrasHolder = new SampleExtrasHolder();
    private int capacity = 1000;
    private long[] sourceIds = new long[1000];
    private long[] offsets = new long[1000];
    private long[] timesUs = new long[1000];
    private int[] flags = new int[1000];
    private int[] sizes = new int[1000];
    private TrackOutput.CryptoData[] cryptoDatas = new TrackOutput.CryptoData[1000];
    private final SpannedData<SharedSampleMetadata> sharedSampleMetadata = new SpannedData<>(new Consumer() { // from class: androidx.media3.exoplayer.source.a0
        @Override // androidx.media3.common.util.Consumer
        public final void accept(Object obj) {
            SampleQueue.L((SampleQueue.SharedSampleMetadata) obj);
        }
    });
    private long startTimeUs = Long.MIN_VALUE;
    private long largestDiscardedTimestampUs = Long.MIN_VALUE;
    private long largestQueuedTimestampUs = Long.MIN_VALUE;
    private boolean upstreamFormatRequired = true;
    private boolean upstreamKeyframeRequired = true;

    /* JADX INFO: Access modifiers changed from: private */
    static final class SharedSampleMetadata {
        public final DrmSessionManager.DrmSessionReference drmSessionReference;
        public final Format format;

        private SharedSampleMetadata(Format format, DrmSessionManager.DrmSessionReference drmSessionReference) {
            this.format = format;
            this.drmSessionReference = drmSessionReference;
        }
    }

    public interface UpstreamFormatChangedListener {
        void b(Format format);
    }

    private int D(int i10) {
        int i11 = this.relativeFirstIndex + i10;
        int i12 = this.capacity;
        return i11 < i12 ? i11 : i11 - i12;
    }

    private boolean H() {
        return this.readPosition != this.length;
    }

    private synchronized int P(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z6, boolean z10, SampleExtrasHolder sampleExtrasHolder) {
        try {
            decoderInputBuffer.waitingForKeys = false;
            if (!H()) {
                if (!z10 && !this.isLastSampleQueued) {
                    Format format = this.upstreamFormat;
                    if (format == null || (!z6 && format == this.downstreamFormat)) {
                        return -3;
                    }
                    O((Format) Assertions.e(format), formatHolder);
                    return -5;
                }
                decoderInputBuffer.l(4);
                return -4;
            }
            Format format2 = this.sharedSampleMetadata.f(C()).format;
            if (!z6 && format2 == this.downstreamFormat) {
                int iD = D(this.readPosition);
                if (!M(iD)) {
                    decoderInputBuffer.waitingForKeys = true;
                    return -3;
                }
                decoderInputBuffer.l(this.flags[iD]);
                if (this.readPosition == this.length - 1 && (z10 || this.isLastSampleQueued)) {
                    decoderInputBuffer.a(536870912);
                }
                long j6 = this.timesUs[iD];
                decoderInputBuffer.timeUs = j6;
                if (j6 < this.startTimeUs) {
                    decoderInputBuffer.a(Integer.MIN_VALUE);
                }
                sampleExtrasHolder.size = this.sizes[iD];
                sampleExtrasHolder.offset = this.offsets[iD];
                sampleExtrasHolder.cryptoData = this.cryptoDatas[iD];
                return -4;
            }
            O(format2, formatHolder);
            return -5;
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void X() {
        this.readPosition = 0;
        this.sampleDataQueue.o();
    }

    private synchronized boolean c0(Format format) {
        try {
            this.upstreamFormatRequired = false;
            if (Util.c(format, this.upstreamFormat)) {
                return false;
            }
            if (this.sharedSampleMetadata.h() || !this.sharedSampleMetadata.g().format.equals(format)) {
                this.upstreamFormat = format;
            } else {
                this.upstreamFormat = this.sharedSampleMetadata.g().format;
            }
            Format format2 = this.upstreamFormat;
            this.upstreamAllSamplesAreSyncSamples = MimeTypes.a(format2.sampleMimeType, format2.codecs);
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
        if (A() >= j6) {
            return false;
        }
        t(this.absoluteFirstIndex + j(j6));
        return true;
    }

    private synchronized void i(long j6, int i10, long j10, int i11, @Nullable TrackOutput.CryptoData cryptoData) {
        try {
            int i12 = this.length;
            if (i12 > 0) {
                int iD = D(i12 - 1);
                Assertions.a(this.offsets[iD] + ((long) this.sizes[iD]) <= j10);
            }
            this.isLastSampleQueued = (536870912 & i10) != 0;
            this.largestQueuedTimestampUs = Math.max(this.largestQueuedTimestampUs, j6);
            int iD2 = D(this.length);
            this.timesUs[iD2] = j6;
            this.offsets[iD2] = j10;
            this.sizes[iD2] = i11;
            this.flags[iD2] = i10;
            this.cryptoDatas[iD2] = cryptoData;
            this.sourceIds[iD2] = this.upstreamSourceId;
            if (this.sharedSampleMetadata.h() || !this.sharedSampleMetadata.g().format.equals(this.upstreamFormat)) {
                DrmSessionManager drmSessionManager = this.drmSessionManager;
                this.sharedSampleMetadata.b(G(), new SharedSampleMetadata((Format) Assertions.e(this.upstreamFormat), drmSessionManager != null ? drmSessionManager.d(this.drmEventDispatcher, this.upstreamFormat) : DrmSessionManager.DrmSessionReference.EMPTY));
            }
            int i13 = this.length + 1;
            this.length = i13;
            int i14 = this.capacity;
            if (i13 == i14) {
                int i15 = i14 + 1000;
                long[] jArr = new long[i15];
                long[] jArr2 = new long[i15];
                long[] jArr3 = new long[i15];
                int[] iArr = new int[i15];
                int[] iArr2 = new int[i15];
                TrackOutput.CryptoData[] cryptoDataArr = new TrackOutput.CryptoData[i15];
                int i16 = this.relativeFirstIndex;
                int i17 = i14 - i16;
                System.arraycopy(this.offsets, i16, jArr2, 0, i17);
                System.arraycopy(this.timesUs, this.relativeFirstIndex, jArr3, 0, i17);
                System.arraycopy(this.flags, this.relativeFirstIndex, iArr, 0, i17);
                System.arraycopy(this.sizes, this.relativeFirstIndex, iArr2, 0, i17);
                System.arraycopy(this.cryptoDatas, this.relativeFirstIndex, cryptoDataArr, 0, i17);
                System.arraycopy(this.sourceIds, this.relativeFirstIndex, jArr, 0, i17);
                int i18 = this.relativeFirstIndex;
                System.arraycopy(this.offsets, 0, jArr2, i17, i18);
                System.arraycopy(this.timesUs, 0, jArr3, i17, i18);
                System.arraycopy(this.flags, 0, iArr, i17, i18);
                System.arraycopy(this.sizes, 0, iArr2, i17, i18);
                System.arraycopy(this.cryptoDatas, 0, cryptoDataArr, i17, i18);
                System.arraycopy(this.sourceIds, 0, jArr, i17, i18);
                this.offsets = jArr2;
                this.timesUs = jArr3;
                this.flags = iArr;
                this.sizes = iArr2;
                this.cryptoDatas = cryptoDataArr;
                this.sourceIds = jArr;
                this.relativeFirstIndex = 0;
                this.capacity = i15;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized long m(long j6, boolean z6, boolean z10) {
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
                    int iV = v(i12, i11, j6, z6);
                    if (iV == -1) {
                        return -1L;
                    }
                    return p(iV);
                }
            }
            return -1L;
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized long n() {
        int i10 = this.length;
        if (i10 == 0) {
            return -1L;
        }
        return p(i10);
    }

    private int v(int i10, int i11, long j6, boolean z6) {
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

    public final synchronized long A() {
        return Math.max(this.largestDiscardedTimestampUs, B(this.readPosition));
    }

    public final int C() {
        return this.absoluteFirstIndex + this.readPosition;
    }

    public final synchronized int E(long j6, boolean z6) {
        int iD = D(this.readPosition);
        if (H() && j6 >= this.timesUs[iD]) {
            if (j6 > this.largestQueuedTimestampUs && z6) {
                return this.length - this.readPosition;
            }
            int iV = v(iD, this.length - this.readPosition, j6, true);
            if (iV == -1) {
                return 0;
            }
            return iV;
        }
        return 0;
    }

    @Nullable
    public final synchronized Format F() {
        return this.upstreamFormatRequired ? null : this.upstreamFormat;
    }

    public final int G() {
        return this.absoluteFirstIndex + this.length;
    }

    protected final void I() {
        this.upstreamFormatAdjustmentRequired = true;
    }

    public final synchronized boolean J() {
        return this.isLastSampleQueued;
    }

    @CallSuper
    public synchronized boolean K(boolean z6) {
        Format format;
        boolean z10 = true;
        if (H()) {
            if (this.sharedSampleMetadata.f(C()).format != this.downstreamFormat) {
                return true;
            }
            return M(D(this.readPosition));
        }
        if (!z6 && !this.isLastSampleQueued && ((format = this.upstreamFormat) == null || format == this.downstreamFormat)) {
            z10 = false;
        }
        return z10;
    }

    public final synchronized long Q() {
        try {
        } catch (Throwable th) {
            throw th;
        }
        return H() ? this.sourceIds[D(this.readPosition)] : this.upstreamSourceId;
    }

    @CallSuper
    public void T() {
        W(true);
        U();
    }

    public final void V() {
        W(false);
    }

    public final synchronized boolean Y(int i10) {
        X();
        int i11 = this.absoluteFirstIndex;
        if (i10 >= i11 && i10 <= this.length + i11) {
            this.startTimeUs = Long.MIN_VALUE;
            this.readPosition = i10 - i11;
            return true;
        }
        return false;
    }

    public final synchronized boolean Z(long j6, boolean z6) {
        X();
        int iD = D(this.readPosition);
        if (H() && j6 >= this.timesUs[iD] && (j6 <= this.largestQueuedTimestampUs || z6)) {
            int iV = v(iD, this.length - this.readPosition, j6, true);
            if (iV == -1) {
                return false;
            }
            this.startTimeUs = j6;
            this.readPosition += iV;
            return true;
        }
        return false;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public /* synthetic */ void b(ParsableByteArray parsableByteArray, int i10) {
        androidx.media3.extractor.f.b(this, parsableByteArray, i10);
    }

    public final void b0(long j6) {
        this.startTimeUs = j6;
    }

    public final void d0(@Nullable UpstreamFormatChangedListener upstreamFormatChangedListener) {
        this.upstreamFormatChangeListener = upstreamFormatChangedListener;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public /* synthetic */ int e(DataReader dataReader, int i10, boolean z6) {
        return androidx.media3.extractor.f.a(this, dataReader, i10, z6);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x000e  */
    public final synchronized void e0(int i10) {
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
        Assertions.a(z6);
        this.readPosition += i10;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0054  */
    @Override // androidx.media3.extractor.TrackOutput
    public void f(long j6, int i10, int i11, int i12, @Nullable TrackOutput.CryptoData cryptoData) {
        int i13;
        if (this.upstreamFormatAdjustmentRequired) {
            d((Format) Assertions.i(this.unadjustedUpstreamFormat));
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
                    Log.i(TAG, "Overriding unexpected non-sync sample for format: " + this.upstreamFormat);
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
        i(j10, i13, (this.sampleDataQueue.e() - ((long) i11)) - ((long) i12), i11, cryptoData);
    }

    public final void f0(long j6) {
        this.upstreamSourceId = j6;
    }

    public final void g0() {
        this.pendingSplice = true;
    }

    public synchronized long o() {
        int i10 = this.readPosition;
        if (i10 == 0) {
            return -1L;
        }
        return p(i10);
    }

    public final int x() {
        return this.absoluteFirstIndex;
    }

    public final synchronized long y() {
        return this.length == 0 ? Long.MIN_VALUE : this.timesUs[this.relativeFirstIndex];
    }

    public final synchronized long z() {
        return this.largestQueuedTimestampUs;
    }

    static final class SampleExtrasHolder {

        @Nullable
        public TrackOutput.CryptoData cryptoData;
        public long offset;
        public int size;

        SampleExtrasHolder() {
        }
    }

    private long B(int i10) {
        long jMax = Long.MIN_VALUE;
        if (i10 == 0) {
            return Long.MIN_VALUE;
        }
        int iD = D(i10 - 1);
        for (int i11 = 0; i11 < i10; i11++) {
            jMax = Math.max(jMax, this.timesUs[iD]);
            if ((this.flags[iD] & 1) != 0) {
                break;
            }
            iD--;
            if (iD == -1) {
                iD = this.capacity - 1;
            }
        }
        return jMax;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void L(SharedSampleMetadata sharedSampleMetadata) {
        sharedSampleMetadata.drmSessionReference.release();
    }

    private boolean M(int i10) {
        DrmSession drmSession = this.currentDrmSession;
        return drmSession == null || drmSession.getState() == 4 || ((this.flags[i10] & 1073741824) == 0 && this.currentDrmSession.a());
    }

    private void O(Format format, FormatHolder formatHolder) {
        Format format2 = this.downstreamFormat;
        boolean z6 = format2 == null;
        DrmInitData drmInitData = z6 ? null : format2.drmInitData;
        this.downstreamFormat = format;
        DrmInitData drmInitData2 = format.drmInitData;
        DrmSessionManager drmSessionManager = this.drmSessionManager;
        formatHolder.format = drmSessionManager != null ? format.c(drmSessionManager.a(format)) : format;
        formatHolder.drmSession = this.currentDrmSession;
        if (this.drmSessionManager == null) {
            return;
        }
        if (z6 || !Util.c(drmInitData, drmInitData2)) {
            DrmSession drmSession = this.currentDrmSession;
            DrmSession drmSessionC = this.drmSessionManager.c(this.drmEventDispatcher, format);
            this.currentDrmSession = drmSessionC;
            formatHolder.drmSession = drmSessionC;
            if (drmSession != null) {
                drmSession.e(this.drmEventDispatcher);
            }
        }
    }

    private void U() {
        DrmSession drmSession = this.currentDrmSession;
        if (drmSession != null) {
            drmSession.e(this.drmEventDispatcher);
            this.currentDrmSession = null;
            this.downstreamFormat = null;
        }
    }

    private int j(long j6) {
        int i10 = this.length;
        int iD = D(i10 - 1);
        while (i10 > this.readPosition && this.timesUs[iD] >= j6) {
            i10--;
            iD--;
            if (iD == -1) {
                iD = this.capacity - 1;
            }
        }
        return i10;
    }

    public static SampleQueue k(Allocator allocator, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return new SampleQueue(allocator, (DrmSessionManager) Assertions.e(drmSessionManager), (DrmSessionEventListener.EventDispatcher) Assertions.e(eventDispatcher));
    }

    public static SampleQueue l(Allocator allocator) {
        return new SampleQueue(allocator, null, null);
    }

    @GuardedBy
    private long p(int i10) {
        this.largestDiscardedTimestampUs = Math.max(this.largestDiscardedTimestampUs, B(i10));
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

    @CallSuper
    public void N() throws IOException {
        DrmSession drmSession = this.currentDrmSession;
        if (drmSession != null && drmSession.getState() == 1) {
            throw ((DrmSession.DrmSessionException) Assertions.e(this.currentDrmSession.getError()));
        }
    }

    @CallSuper
    public int S(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i10, boolean z6) {
        int iP = P(formatHolder, decoderInputBuffer, (i10 & 2) != 0, z6, this.extrasHolder);
        if (iP == -4 && !decoderInputBuffer.h()) {
            boolean z10 = (i10 & 1) != 0;
            if ((i10 & 4) == 0) {
                if (z10) {
                    this.sampleDataQueue.f(decoderInputBuffer, this.extrasHolder);
                } else {
                    this.sampleDataQueue.m(decoderInputBuffer, this.extrasHolder);
                }
            }
            if (!z10) {
                this.readPosition++;
            }
        }
        return iP;
    }

    @CallSuper
    public void W(boolean z6) {
        this.sampleDataQueue.n();
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

    @Override // androidx.media3.extractor.TrackOutput
    public final void a(ParsableByteArray parsableByteArray, int i10, int i11) {
        this.sampleDataQueue.q(parsableByteArray, i10);
    }

    public final void a0(long j6) {
        if (this.sampleOffsetUs != j6) {
            this.sampleOffsetUs = j6;
            I();
        }
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final int c(DataReader dataReader, int i10, boolean z6, int i11) throws IOException {
        return this.sampleDataQueue.p(dataReader, i10, z6);
    }

    public final void q(long j6, boolean z6, boolean z10) {
        this.sampleDataQueue.b(m(j6, z6, z10));
    }

    public final void r() {
        this.sampleDataQueue.b(n());
    }

    public final void s() {
        this.sampleDataQueue.b(o());
    }

    public final void u(int i10) {
        this.sampleDataQueue.c(t(i10));
    }

    @CallSuper
    protected Format w(Format format) {
        return (this.sampleOffsetUs == 0 || format.subsampleOffsetUs == Long.MAX_VALUE) ? format : format.b().k0(format.subsampleOffsetUs + this.sampleOffsetUs).G();
    }

    protected SampleQueue(Allocator allocator, @Nullable DrmSessionManager drmSessionManager, @Nullable DrmSessionEventListener.EventDispatcher eventDispatcher) {
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = eventDispatcher;
        this.sampleDataQueue = new SampleDataQueue(allocator);
    }

    private long t(int i10) {
        boolean z6;
        int iG = G() - i10;
        boolean z10 = false;
        if (iG >= 0 && iG <= this.length - this.readPosition) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.a(z6);
        int i11 = this.length - iG;
        this.length = i11;
        this.largestQueuedTimestampUs = Math.max(this.largestDiscardedTimestampUs, B(i11));
        if (iG == 0 && this.isLastSampleQueued) {
            z10 = true;
        }
        this.isLastSampleQueued = z10;
        this.sharedSampleMetadata.d(i10);
        int i12 = this.length;
        if (i12 != 0) {
            int iD = D(i12 - 1);
            return this.offsets[iD] + ((long) this.sizes[iD]);
        }
        return 0L;
    }

    @CallSuper
    public void R() {
        r();
        U();
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void d(Format format) {
        Format formatW = w(format);
        this.upstreamFormatAdjustmentRequired = false;
        this.unadjustedUpstreamFormat = format;
        boolean zC0 = c0(formatW);
        UpstreamFormatChangedListener upstreamFormatChangedListener = this.upstreamFormatChangeListener;
        if (upstreamFormatChangedListener != null && zC0) {
            upstreamFormatChangedListener.b(formatW);
        }
    }
}
