package androidx.media3.exoplayer.source.chunk;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.SampleQueue;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.SequenceableLoader;
import androidx.media3.exoplayer.source.chunk.ChunkSource;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public class ChunkSampleStream<T extends ChunkSource> implements SampleStream, SequenceableLoader, Loader.Callback<Chunk>, Loader.ReleaseCallback {
    private static final String TAG = "ChunkSampleStream";
    private final SequenceableLoader.Callback<ChunkSampleStream<T>> callback;

    @Nullable
    private BaseMediaChunk canceledMediaChunk;
    private final BaseMediaChunkOutput chunkOutput;
    private final T chunkSource;
    private final SampleQueue[] embeddedSampleQueues;
    private final Format[] embeddedTrackFormats;
    private final int[] embeddedTrackTypes;
    private final boolean[] embeddedTracksSelected;
    private long lastSeekPositionUs;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private final Loader loader;

    @Nullable
    private Chunk loadingChunk;
    boolean loadingFinished;
    private final ArrayList<BaseMediaChunk> mediaChunks;
    private final MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;
    private final ChunkHolder nextChunkHolder;
    private int nextNotifyPrimaryFormatMediaChunkIndex;
    private long pendingResetPositionUs;
    private Format primaryDownstreamTrackFormat;
    private final SampleQueue primarySampleQueue;
    public final int primaryTrackType;
    private final List<BaseMediaChunk> readOnlyMediaChunks;

    @Nullable
    private ReleaseCallback<T> releaseCallback;

    public final class EmbeddedSampleStream implements SampleStream {
        private final int index;
        private boolean notifiedDownstreamFormat;
        public final ChunkSampleStream<T> parent;
        private final SampleQueue sampleQueue;

        @Override // androidx.media3.exoplayer.source.SampleStream
        public void maybeThrowError() {
        }

        public EmbeddedSampleStream(ChunkSampleStream<T> chunkSampleStream, SampleQueue sampleQueue, int i10) {
            this.parent = chunkSampleStream;
            this.sampleQueue = sampleQueue;
            this.index = i10;
        }

        private void a() {
            if (this.notifiedDownstreamFormat) {
                return;
            }
            ChunkSampleStream.this.mediaSourceEventDispatcher.h(ChunkSampleStream.this.embeddedTrackTypes[this.index], ChunkSampleStream.this.embeddedTrackFormats[this.index], 0, null, ChunkSampleStream.this.lastSeekPositionUs);
            this.notifiedDownstreamFormat = true;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int b(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i10) {
            if (ChunkSampleStream.this.r()) {
                return -3;
            }
            if (ChunkSampleStream.this.canceledMediaChunk != null && ChunkSampleStream.this.canceledMediaChunk.g(this.index + 1) <= this.sampleQueue.C()) {
                return -3;
            }
            a();
            return this.sampleQueue.S(formatHolder, decoderInputBuffer, i10, ChunkSampleStream.this.loadingFinished);
        }

        public void c() {
            Assertions.g(ChunkSampleStream.this.embeddedTracksSelected[this.index]);
            ChunkSampleStream.this.embeddedTracksSelected[this.index] = false;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public boolean isReady() {
            return !ChunkSampleStream.this.r() && this.sampleQueue.K(ChunkSampleStream.this.loadingFinished);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int skipData(long j6) {
            if (ChunkSampleStream.this.r()) {
                return 0;
            }
            int iE = this.sampleQueue.E(j6, ChunkSampleStream.this.loadingFinished);
            if (ChunkSampleStream.this.canceledMediaChunk != null) {
                iE = Math.min(iE, ChunkSampleStream.this.canceledMediaChunk.g(this.index + 1) - this.sampleQueue.C());
            }
            this.sampleQueue.e0(iE);
            if (iE > 0) {
                a();
            }
            return iE;
        }
    }

    public interface ReleaseCallback<T extends ChunkSource> {
        void b(ChunkSampleStream<T> chunkSampleStream);
    }

    private void k(int i10) {
        int iMin = Math.min(y(i10, 0), this.nextNotifyPrimaryFormatMediaChunkIndex);
        if (iMin > 0) {
            Util.V0(this.mediaChunks, 0, iMin);
            this.nextNotifyPrimaryFormatMediaChunkIndex -= iMin;
        }
    }

    public ChunkSampleStream<T>.EmbeddedSampleStream D(long j6, int i10) {
        for (int i11 = 0; i11 < this.embeddedSampleQueues.length; i11++) {
            if (this.embeddedTrackTypes[i11] == i10) {
                Assertions.g(!this.embeddedTracksSelected[i11]);
                this.embeddedTracksSelected[i11] = true;
                this.embeddedSampleQueues[i11].Z(j6, true);
                return new EmbeddedSampleStream(this, this.embeddedSampleQueues[i11], i11);
            }
        }
        throw new IllegalStateException();
    }

    public T n() {
        return this.chunkSource;
    }

    boolean r() {
        return this.pendingResetPositionUs != -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public void H(Chunk chunk, long j6, long j10, boolean z6) {
        this.loadingChunk = null;
        this.canceledMediaChunk = null;
        LoadEventInfo loadEventInfo = new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, chunk.d(), chunk.c(), j6, j10, chunk.a());
        this.loadErrorHandlingPolicy.a(chunk.loadTaskId);
        this.mediaSourceEventDispatcher.q(loadEventInfo, chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs);
        if (z6) {
            return;
        }
        if (r()) {
            B();
        } else if (q(chunk)) {
            m(this.mediaChunks.size() - 1);
            if (this.mediaChunks.isEmpty()) {
                this.pendingResetPositionUs = this.lastSeekPositionUs;
            }
        }
        this.callback.f(this);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public void Y(Chunk chunk, long j6, long j10) {
        this.loadingChunk = null;
        this.chunkSource.e(chunk);
        LoadEventInfo loadEventInfo = new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, chunk.d(), chunk.c(), j6, j10, chunk.a());
        this.loadErrorHandlingPolicy.a(chunk.loadTaskId);
        this.mediaSourceEventDispatcher.t(loadEventInfo, chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs);
        this.callback.f(this);
    }

    public void z() {
        A(null);
    }

    private void B() {
        this.primarySampleQueue.V();
        for (SampleQueue sampleQueue : this.embeddedSampleQueues) {
            sampleQueue.V();
        }
    }

    private void l(int i10) {
        Assertions.g(!this.loader.i());
        int size = this.mediaChunks.size();
        while (true) {
            if (i10 >= size) {
                i10 = -1;
                break;
            } else if (!p(i10)) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 == -1) {
            return;
        }
        long j6 = o().endTimeUs;
        BaseMediaChunk baseMediaChunkM = m(i10);
        if (this.mediaChunks.isEmpty()) {
            this.pendingResetPositionUs = this.lastSeekPositionUs;
        }
        this.loadingFinished = false;
        this.mediaSourceEventDispatcher.C(this.primaryTrackType, baseMediaChunkM.startTimeUs, j6);
    }

    private BaseMediaChunk m(int i10) {
        BaseMediaChunk baseMediaChunk = this.mediaChunks.get(i10);
        ArrayList<BaseMediaChunk> arrayList = this.mediaChunks;
        Util.V0(arrayList, i10, arrayList.size());
        this.nextNotifyPrimaryFormatMediaChunkIndex = Math.max(this.nextNotifyPrimaryFormatMediaChunkIndex, this.mediaChunks.size());
        int i11 = 0;
        this.primarySampleQueue.u(baseMediaChunk.g(0));
        while (true) {
            SampleQueue[] sampleQueueArr = this.embeddedSampleQueues;
            if (i11 >= sampleQueueArr.length) {
                return baseMediaChunk;
            }
            SampleQueue sampleQueue = sampleQueueArr[i11];
            i11++;
            sampleQueue.u(baseMediaChunk.g(i11));
        }
    }

    private BaseMediaChunk o() {
        ArrayList<BaseMediaChunk> arrayList = this.mediaChunks;
        return arrayList.get(arrayList.size() - 1);
    }

    private boolean p(int i10) {
        int iC;
        BaseMediaChunk baseMediaChunk = this.mediaChunks.get(i10);
        if (this.primarySampleQueue.C() > baseMediaChunk.g(0)) {
            return true;
        }
        int i11 = 0;
        do {
            SampleQueue[] sampleQueueArr = this.embeddedSampleQueues;
            if (i11 >= sampleQueueArr.length) {
                return false;
            }
            iC = sampleQueueArr[i11].C();
            i11++;
        } while (iC <= baseMediaChunk.g(i11));
        return true;
    }

    private boolean q(Chunk chunk) {
        return chunk instanceof BaseMediaChunk;
    }

    private void s() {
        int iY = y(this.primarySampleQueue.C(), this.nextNotifyPrimaryFormatMediaChunkIndex - 1);
        while (true) {
            int i10 = this.nextNotifyPrimaryFormatMediaChunkIndex;
            if (i10 > iY) {
                return;
            }
            this.nextNotifyPrimaryFormatMediaChunkIndex = i10 + 1;
            t(i10);
        }
    }

    private void t(int i10) {
        BaseMediaChunk baseMediaChunk = this.mediaChunks.get(i10);
        Format format = baseMediaChunk.trackFormat;
        if (!format.equals(this.primaryDownstreamTrackFormat)) {
            this.mediaSourceEventDispatcher.h(this.primaryTrackType, format, baseMediaChunk.trackSelectionReason, baseMediaChunk.trackSelectionData, baseMediaChunk.startTimeUs);
        }
        this.primaryDownstreamTrackFormat = format;
    }

    private int y(int i10, int i11) {
        do {
            i11++;
            if (i11 >= this.mediaChunks.size()) {
                return this.mediaChunks.size() - 1;
            }
        } while (this.mediaChunks.get(i11).g(0) <= i10);
        return i11 - 1;
    }

    public void A(@Nullable ReleaseCallback<T> releaseCallback) {
        this.releaseCallback = releaseCallback;
        this.primarySampleQueue.R();
        for (SampleQueue sampleQueue : this.embeddedSampleQueues) {
            sampleQueue.R();
        }
        this.loader.l(this);
    }

    public void C(long j6) {
        BaseMediaChunk baseMediaChunk;
        boolean Z;
        this.lastSeekPositionUs = j6;
        if (r()) {
            this.pendingResetPositionUs = j6;
            return;
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i11 < this.mediaChunks.size()) {
                baseMediaChunk = this.mediaChunks.get(i11);
                long j10 = baseMediaChunk.startTimeUs;
                if (j10 == j6 && baseMediaChunk.clippedStartTimeUs == -9223372036854775807L) {
                    break;
                } else if (j10 <= j6) {
                    i11++;
                }
            }
            baseMediaChunk = null;
            break;
        }
        if (baseMediaChunk != null) {
            Z = this.primarySampleQueue.Y(baseMediaChunk.g(0));
        } else {
            Z = this.primarySampleQueue.Z(j6, j6 < getNextLoadPositionUs());
        }
        if (Z) {
            this.nextNotifyPrimaryFormatMediaChunkIndex = y(this.primarySampleQueue.C(), 0);
            SampleQueue[] sampleQueueArr = this.embeddedSampleQueues;
            int length = sampleQueueArr.length;
            while (i10 < length) {
                sampleQueueArr[i10].Z(j6, true);
                i10++;
            }
            return;
        }
        this.pendingResetPositionUs = j6;
        this.loadingFinished = false;
        this.mediaChunks.clear();
        this.nextNotifyPrimaryFormatMediaChunkIndex = 0;
        if (!this.loader.i()) {
            this.loader.f();
            B();
            return;
        }
        this.primarySampleQueue.r();
        SampleQueue[] sampleQueueArr2 = this.embeddedSampleQueues;
        int length2 = sampleQueueArr2.length;
        while (i10 < length2) {
            sampleQueueArr2[i10].r();
            i10++;
        }
        this.loader.e();
    }

    public long a(long j6, SeekParameters seekParameters) {
        return this.chunkSource.a(j6, seekParameters);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(long j6) {
        List<BaseMediaChunk> listEmptyList;
        long j10;
        if (this.loadingFinished || this.loader.i() || this.loader.h()) {
            return false;
        }
        boolean zR = r();
        if (zR) {
            listEmptyList = Collections.emptyList();
            j10 = this.pendingResetPositionUs;
        } else {
            listEmptyList = this.readOnlyMediaChunks;
            j10 = o().endTimeUs;
        }
        this.chunkSource.h(j6, j10, listEmptyList, this.nextChunkHolder);
        ChunkHolder chunkHolder = this.nextChunkHolder;
        boolean z6 = chunkHolder.endOfStream;
        Chunk chunk = chunkHolder.chunk;
        chunkHolder.a();
        if (z6) {
            this.pendingResetPositionUs = -9223372036854775807L;
            this.loadingFinished = true;
            return true;
        }
        if (chunk == null) {
            return false;
        }
        this.loadingChunk = chunk;
        if (q(chunk)) {
            BaseMediaChunk baseMediaChunk = (BaseMediaChunk) chunk;
            if (zR) {
                long j11 = baseMediaChunk.startTimeUs;
                long j12 = this.pendingResetPositionUs;
                if (j11 != j12) {
                    this.primarySampleQueue.b0(j12);
                    for (SampleQueue sampleQueue : this.embeddedSampleQueues) {
                        sampleQueue.b0(this.pendingResetPositionUs);
                    }
                }
                this.pendingResetPositionUs = -9223372036854775807L;
            }
            baseMediaChunk.i(this.chunkOutput);
            this.mediaChunks.add(baseMediaChunk);
        } else if (chunk instanceof InitializationChunk) {
            ((InitializationChunk) chunk).e(this.chunkOutput);
        }
        this.mediaSourceEventDispatcher.z(new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, this.loader.m(chunk, this, this.loadErrorHandlingPolicy.b(chunk.type))), chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs);
        return true;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        if (this.loadingFinished) {
            return Long.MIN_VALUE;
        }
        if (r()) {
            return this.pendingResetPositionUs;
        }
        long jMax = this.lastSeekPositionUs;
        BaseMediaChunk baseMediaChunkO = o();
        if (!baseMediaChunkO.f()) {
            if (this.mediaChunks.size() > 1) {
                ArrayList<BaseMediaChunk> arrayList = this.mediaChunks;
                baseMediaChunkO = arrayList.get(arrayList.size() - 2);
            } else {
                baseMediaChunkO = null;
            }
        }
        if (baseMediaChunkO != null) {
            jMax = Math.max(jMax, baseMediaChunkO.endTimeUs);
        }
        return Math.max(jMax, this.primarySampleQueue.z());
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return this.loader.i();
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public void maybeThrowError() throws IOException {
        this.loader.maybeThrowError();
        this.primarySampleQueue.N();
        if (this.loader.i()) {
            return;
        }
        this.chunkSource.maybeThrowError();
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        this.primarySampleQueue.T();
        for (SampleQueue sampleQueue : this.embeddedSampleQueues) {
            sampleQueue.T();
        }
        this.chunkSource.release();
        ReleaseCallback<T> releaseCallback = this.releaseCallback;
        if (releaseCallback != null) {
            releaseCallback.b(this);
        }
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j6) {
        if (this.loader.h() || r()) {
            return;
        }
        if (!this.loader.i()) {
            int preferredQueueSize = this.chunkSource.getPreferredQueueSize(j6, this.readOnlyMediaChunks);
            if (preferredQueueSize < this.mediaChunks.size()) {
                l(preferredQueueSize);
                return;
            }
            return;
        }
        Chunk chunk = (Chunk) Assertions.e(this.loadingChunk);
        if (!(q(chunk) && p(this.mediaChunks.size() - 1)) && this.chunkSource.g(j6, chunk, this.readOnlyMediaChunks)) {
            this.loader.e();
            if (q(chunk)) {
                this.canceledMediaChunk = (BaseMediaChunk) chunk;
            }
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public Loader.LoadErrorAction w(Chunk chunk, long j6, long j10, IOException iOException, int i10) {
        Loader.LoadErrorAction loadErrorActionG;
        long jA = chunk.a();
        boolean zQ = q(chunk);
        int size = this.mediaChunks.size() - 1;
        boolean z6 = (jA != 0 && zQ && p(size)) ? false : true;
        LoadEventInfo loadEventInfo = new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, chunk.d(), chunk.c(), j6, j10, jA);
        LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo = new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, Util.q1(chunk.startTimeUs), Util.q1(chunk.endTimeUs)), iOException, i10);
        if (!this.chunkSource.c(chunk, z6, loadErrorInfo, this.loadErrorHandlingPolicy)) {
            loadErrorActionG = null;
        } else if (z6) {
            loadErrorActionG = Loader.DONT_RETRY;
            if (zQ) {
                Assertions.g(m(size) == chunk);
                if (this.mediaChunks.isEmpty()) {
                    this.pendingResetPositionUs = this.lastSeekPositionUs;
                }
            }
        } else {
            Log.i(TAG, "Ignoring attempt to cancel non-cancelable load.");
            loadErrorActionG = null;
        }
        if (loadErrorActionG == null) {
            long jD = this.loadErrorHandlingPolicy.d(loadErrorInfo);
            loadErrorActionG = jD != -9223372036854775807L ? Loader.g(false, jD) : Loader.DONT_RETRY_FATAL;
        }
        boolean z10 = !loadErrorActionG.c();
        this.mediaSourceEventDispatcher.v(loadEventInfo, chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, iOException, z10);
        if (z10) {
            this.loadingChunk = null;
            this.loadErrorHandlingPolicy.a(chunk.loadTaskId);
            this.callback.f(this);
        }
        return loadErrorActionG;
    }

    public ChunkSampleStream(int i10, @Nullable int[] iArr, @Nullable Format[] formatArr, T t5, SequenceableLoader.Callback<ChunkSampleStream<T>> callback, Allocator allocator, long j6, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2) {
        this.primaryTrackType = i10;
        int i11 = 0;
        iArr = iArr == null ? new int[0] : iArr;
        this.embeddedTrackTypes = iArr;
        this.embeddedTrackFormats = formatArr == null ? new Format[0] : formatArr;
        this.chunkSource = t5;
        this.callback = callback;
        this.mediaSourceEventDispatcher = eventDispatcher2;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.loader = new Loader(TAG);
        this.nextChunkHolder = new ChunkHolder();
        ArrayList<BaseMediaChunk> arrayList = new ArrayList<>();
        this.mediaChunks = arrayList;
        this.readOnlyMediaChunks = Collections.unmodifiableList(arrayList);
        int length = iArr.length;
        this.embeddedSampleQueues = new SampleQueue[length];
        this.embeddedTracksSelected = new boolean[length];
        int i12 = length + 1;
        int[] iArr2 = new int[i12];
        SampleQueue[] sampleQueueArr = new SampleQueue[i12];
        SampleQueue sampleQueueK = SampleQueue.k(allocator, drmSessionManager, eventDispatcher);
        this.primarySampleQueue = sampleQueueK;
        iArr2[0] = i10;
        sampleQueueArr[0] = sampleQueueK;
        while (i11 < length) {
            SampleQueue sampleQueueL = SampleQueue.l(allocator);
            this.embeddedSampleQueues[i11] = sampleQueueL;
            int i13 = i11 + 1;
            sampleQueueArr[i13] = sampleQueueL;
            iArr2[i13] = this.embeddedTrackTypes[i11];
            i11 = i13;
        }
        this.chunkOutput = new BaseMediaChunkOutput(iArr2, sampleQueueArr);
        this.pendingResetPositionUs = j6;
        this.lastSeekPositionUs = j6;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public int b(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i10) {
        if (r()) {
            return -3;
        }
        BaseMediaChunk baseMediaChunk = this.canceledMediaChunk;
        if (baseMediaChunk != null && baseMediaChunk.g(0) <= this.primarySampleQueue.C()) {
            return -3;
        }
        s();
        return this.primarySampleQueue.S(formatHolder, decoderInputBuffer, i10, this.loadingFinished);
    }

    public void discardBuffer(long j6, boolean z6) {
        if (r()) {
            return;
        }
        int iX = this.primarySampleQueue.x();
        this.primarySampleQueue.q(j6, z6, true);
        int iX2 = this.primarySampleQueue.x();
        if (iX2 > iX) {
            long jY = this.primarySampleQueue.y();
            int i10 = 0;
            while (true) {
                SampleQueue[] sampleQueueArr = this.embeddedSampleQueues;
                if (i10 >= sampleQueueArr.length) {
                    break;
                }
                sampleQueueArr[i10].q(jY, z6, this.embeddedTracksSelected[i10]);
                i10++;
            }
        }
        k(iX2);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        if (r()) {
            return this.pendingResetPositionUs;
        }
        if (this.loadingFinished) {
            return Long.MIN_VALUE;
        }
        return o().endTimeUs;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public boolean isReady() {
        if (!r() && this.primarySampleQueue.K(this.loadingFinished)) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public int skipData(long j6) {
        if (r()) {
            return 0;
        }
        int iE = this.primarySampleQueue.E(j6, this.loadingFinished);
        BaseMediaChunk baseMediaChunk = this.canceledMediaChunk;
        if (baseMediaChunk != null) {
            iE = Math.min(iE, baseMediaChunk.g(0) - this.primarySampleQueue.C());
        }
        this.primarySampleQueue.e0(iE);
        s();
        return iE;
    }
}
