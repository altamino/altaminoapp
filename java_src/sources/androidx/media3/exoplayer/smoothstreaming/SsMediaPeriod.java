package androidx.media3.exoplayer.smoothstreaming;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.smoothstreaming.manifest.SsManifest;
import androidx.media3.exoplayer.source.CompositeSequenceableLoaderFactory;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.SequenceableLoader;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.source.chunk.ChunkSampleStream;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoaderErrorThrower;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
final class SsMediaPeriod implements MediaPeriod, SequenceableLoader.Callback<ChunkSampleStream<SsChunkSource>> {
    private final Allocator allocator;

    @Nullable
    private MediaPeriod.Callback callback;
    private final SsChunkSource.Factory chunkSourceFactory;

    @Nullable
    private final CmcdConfiguration cmcdConfiguration;
    private SequenceableLoader compositeSequenceableLoader;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private final DrmSessionEventListener.EventDispatcher drmEventDispatcher;
    private final DrmSessionManager drmSessionManager;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private SsManifest manifest;
    private final LoaderErrorThrower manifestLoaderErrorThrower;
    private final MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;
    private ChunkSampleStream<SsChunkSource>[] sampleStreams;
    private final TrackGroupArray trackGroups;

    @Nullable
    private final TransferListener transferListener;

    private ChunkSampleStream<SsChunkSource> b(ExoTrackSelection exoTrackSelection, long j6) {
        int iC = this.trackGroups.c(exoTrackSelection.getTrackGroup());
        return new ChunkSampleStream<>(this.manifest.streamElements[iC].type, null, null, this.chunkSourceFactory.a(this.manifestLoaderErrorThrower, this.manifest, iC, exoTrackSelection, this.transferListener, this.cmcdConfiguration), this, this.allocator, j6, this.drmSessionManager, this.drmEventDispatcher, this.loadErrorHandlingPolicy, this.mediaSourceEventDispatcher);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.trackGroups;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long readDiscontinuity() {
        return -9223372036854775807L;
    }

    private static TrackGroupArray h(SsManifest ssManifest, DrmSessionManager drmSessionManager) {
        TrackGroup[] trackGroupArr = new TrackGroup[ssManifest.streamElements.length];
        int i10 = 0;
        while (true) {
            SsManifest.StreamElement[] streamElementArr = ssManifest.streamElements;
            if (i10 >= streamElementArr.length) {
                return new TrackGroupArray(trackGroupArr);
            }
            Format[] formatArr = streamElementArr[i10].formats;
            Format[] formatArr2 = new Format[formatArr.length];
            for (int i11 = 0; i11 < formatArr.length; i11++) {
                Format format = formatArr[i11];
                formatArr2[i11] = format.c(drmSessionManager.a(format));
            }
            trackGroupArr[i10] = new TrackGroup(Integer.toString(i10), formatArr2);
            i10++;
        }
    }

    private static ChunkSampleStream<SsChunkSource>[] i(int i10) {
        return new ChunkSampleStream[i10];
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long a(long j6, SeekParameters seekParameters) {
        for (ChunkSampleStream<SsChunkSource> chunkSampleStream : this.sampleStreams) {
            if (chunkSampleStream.primaryTrackType == 2) {
                return chunkSampleStream.a(j6, seekParameters);
            }
        }
        return j6;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long c(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j6) {
        ExoTrackSelection exoTrackSelection;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < exoTrackSelectionArr.length; i10++) {
            SampleStream sampleStream = sampleStreamArr[i10];
            if (sampleStream != null) {
                ChunkSampleStream chunkSampleStream = (ChunkSampleStream) sampleStream;
                if (exoTrackSelectionArr[i10] == null || !zArr[i10]) {
                    chunkSampleStream.z();
                    sampleStreamArr[i10] = null;
                } else {
                    ((SsChunkSource) chunkSampleStream.n()).b(exoTrackSelectionArr[i10]);
                    arrayList.add(chunkSampleStream);
                }
            }
            if (sampleStreamArr[i10] == null && (exoTrackSelection = exoTrackSelectionArr[i10]) != null) {
                ChunkSampleStream<SsChunkSource> chunkSampleStreamB = b(exoTrackSelection, j6);
                arrayList.add(chunkSampleStreamB);
                sampleStreamArr[i10] = chunkSampleStreamB;
                zArr2[i10] = true;
            }
        }
        ChunkSampleStream<SsChunkSource>[] chunkSampleStreamArrI = i(arrayList.size());
        this.sampleStreams = chunkSampleStreamArrI;
        arrayList.toArray(chunkSampleStreamArrI);
        this.compositeSequenceableLoader = this.compositeSequenceableLoaderFactory.a(this.sampleStreams);
        return j6;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(long j6) {
        return this.compositeSequenceableLoader.continueLoading(j6);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void discardBuffer(long j6, boolean z6) {
        for (ChunkSampleStream<SsChunkSource> chunkSampleStream : this.sampleStreams) {
            chunkSampleStream.discardBuffer(j6, z6);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void e(MediaPeriod.Callback callback, long j6) {
        this.callback = callback;
        callback.d(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.compositeSequenceableLoader.getBufferedPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return this.compositeSequenceableLoader.getNextLoadPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return this.compositeSequenceableLoader.isLoading();
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public void f(ChunkSampleStream<SsChunkSource> chunkSampleStream) {
        this.callback.f(this);
    }

    public void k() {
        for (ChunkSampleStream<SsChunkSource> chunkSampleStream : this.sampleStreams) {
            chunkSampleStream.z();
        }
        this.callback = null;
    }

    public void l(SsManifest ssManifest) {
        this.manifest = ssManifest;
        for (ChunkSampleStream<SsChunkSource> chunkSampleStream : this.sampleStreams) {
            ((SsChunkSource) chunkSampleStream.n()).d(ssManifest);
        }
        this.callback.f(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        this.manifestLoaderErrorThrower.maybeThrowError();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j6) {
        this.compositeSequenceableLoader.reevaluateBuffer(j6);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long seekToUs(long j6) {
        for (ChunkSampleStream<SsChunkSource> chunkSampleStream : this.sampleStreams) {
            chunkSampleStream.C(j6);
        }
        return j6;
    }

    public SsMediaPeriod(SsManifest ssManifest, SsChunkSource.Factory factory, @Nullable TransferListener transferListener, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, @Nullable CmcdConfiguration cmcdConfiguration, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2, LoaderErrorThrower loaderErrorThrower, Allocator allocator) {
        this.manifest = ssManifest;
        this.chunkSourceFactory = factory;
        this.transferListener = transferListener;
        this.manifestLoaderErrorThrower = loaderErrorThrower;
        this.cmcdConfiguration = cmcdConfiguration;
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = eventDispatcher;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.mediaSourceEventDispatcher = eventDispatcher2;
        this.allocator = allocator;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.trackGroups = h(ssManifest, drmSessionManager);
        ChunkSampleStream<SsChunkSource>[] chunkSampleStreamArrI = i(0);
        this.sampleStreams = chunkSampleStreamArrI;
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.a(chunkSampleStreamArrI);
    }
}
