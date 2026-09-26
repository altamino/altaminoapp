package androidx.media3.exoplayer.smoothstreaming;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.smoothstreaming.manifest.SsManifest;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.source.chunk.BaseMediaChunkIterator;
import androidx.media3.exoplayer.source.chunk.BundledChunkExtractor;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.source.chunk.ChunkExtractor;
import androidx.media3.exoplayer.source.chunk.ChunkHolder;
import androidx.media3.exoplayer.source.chunk.ContainerMediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelectionUtil;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoaderErrorThrower;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import androidx.media3.extractor.mp4.Track;
import androidx.media3.extractor.mp4.TrackEncryptionBox;
import com.google.common.collect.b0;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public class DefaultSsChunkSource implements SsChunkSource {
    private final ChunkExtractor[] chunkExtractors;

    @Nullable
    private final CmcdConfiguration cmcdConfiguration;
    private int currentManifestChunkOffset;
    private final DataSource dataSource;

    @Nullable
    private IOException fatalError;
    private SsManifest manifest;
    private final LoaderErrorThrower manifestLoaderErrorThrower;
    private final int streamElementIndex;
    private ExoTrackSelection trackSelection;

    public static final class Factory implements SsChunkSource.Factory {
        private final DataSource.Factory dataSourceFactory;

        @Override // androidx.media3.exoplayer.smoothstreaming.SsChunkSource.Factory
        public SsChunkSource a(LoaderErrorThrower loaderErrorThrower, SsManifest ssManifest, int i10, ExoTrackSelection exoTrackSelection, @Nullable TransferListener transferListener, @Nullable CmcdConfiguration cmcdConfiguration) {
            DataSource dataSourceCreateDataSource = this.dataSourceFactory.createDataSource();
            if (transferListener != null) {
                dataSourceCreateDataSource.c(transferListener);
            }
            return new DefaultSsChunkSource(loaderErrorThrower, ssManifest, i10, exoTrackSelection, dataSourceCreateDataSource, cmcdConfiguration);
        }

        public Factory(DataSource.Factory factory) {
            this.dataSourceFactory = factory;
        }
    }

    @Override // androidx.media3.exoplayer.smoothstreaming.SsChunkSource
    public void b(ExoTrackSelection exoTrackSelection) {
        this.trackSelection = exoTrackSelection;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public void e(Chunk chunk) {
    }

    private static final class StreamElementIterator extends BaseMediaChunkIterator {
        private final SsManifest.StreamElement streamElement;
        private final int trackIndex;

        public StreamElementIterator(SsManifest.StreamElement streamElement, int i10, int i11) {
            super(i11, streamElement.chunkCount - 1);
            this.streamElement = streamElement;
            this.trackIndex = i10;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long a() {
            return b() + this.streamElement.c((int) d());
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long b() {
            c();
            return this.streamElement.e((int) d());
        }
    }

    public DefaultSsChunkSource(LoaderErrorThrower loaderErrorThrower, SsManifest ssManifest, int i10, ExoTrackSelection exoTrackSelection, DataSource dataSource, @Nullable CmcdConfiguration cmcdConfiguration) {
        this.manifestLoaderErrorThrower = loaderErrorThrower;
        this.manifest = ssManifest;
        this.streamElementIndex = i10;
        this.trackSelection = exoTrackSelection;
        this.dataSource = dataSource;
        this.cmcdConfiguration = cmcdConfiguration;
        SsManifest.StreamElement streamElement = ssManifest.streamElements[i10];
        this.chunkExtractors = new ChunkExtractor[exoTrackSelection.length()];
        int i11 = 0;
        while (i11 < this.chunkExtractors.length) {
            int indexInTrackGroup = exoTrackSelection.getIndexInTrackGroup(i11);
            Format format = streamElement.formats[indexInTrackGroup];
            TrackEncryptionBox[] trackEncryptionBoxArr = format.drmInitData != null ? ((SsManifest.ProtectionElement) Assertions.e(ssManifest.protectionElement)).trackEncryptionBoxes : null;
            int i12 = streamElement.type;
            int i13 = i11;
            this.chunkExtractors[i13] = new BundledChunkExtractor(new FragmentedMp4Extractor(3, null, new Track(indexInTrackGroup, i12, streamElement.timescale, -9223372036854775807L, ssManifest.durationUs, format, 0, trackEncryptionBoxArr, i12 == 2 ? 4 : 0, null, null)), streamElement.type, format);
            i11 = i13 + 1;
        }
    }

    private static MediaChunk i(Format format, DataSource dataSource, Uri uri, int i10, long j6, long j10, long j11, int i11, @Nullable Object obj, ChunkExtractor chunkExtractor, @Nullable CmcdHeadersFactory cmcdHeadersFactory) {
        return new ContainerMediaChunk(dataSource, new DataSpec.Builder().i(uri).e(cmcdHeadersFactory == null ? b0.m() : cmcdHeadersFactory.a()).a(), format, i11, obj, j6, j10, j11, -9223372036854775807L, i10, 1, j6, chunkExtractor);
    }

    private long j(long j6) {
        SsManifest ssManifest = this.manifest;
        if (!ssManifest.isLive) {
            return -9223372036854775807L;
        }
        SsManifest.StreamElement streamElement = ssManifest.streamElements[this.streamElementIndex];
        int i10 = streamElement.chunkCount - 1;
        return (streamElement.e(i10) + streamElement.c(i10)) - j6;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public long a(long j6, SeekParameters seekParameters) {
        SsManifest.StreamElement streamElement = this.manifest.streamElements[this.streamElementIndex];
        int iD = streamElement.d(j6);
        long jE = streamElement.e(iD);
        return seekParameters.a(j6, jE, (jE >= j6 || iD >= streamElement.chunkCount + (-1)) ? jE : streamElement.e(iD + 1));
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public boolean c(Chunk chunk, boolean z6, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
        LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionC = loadErrorHandlingPolicy.c(TrackSelectionUtil.c(this.trackSelection), loadErrorInfo);
        if (z6 && fallbackSelectionC != null && fallbackSelectionC.type == 2) {
            ExoTrackSelection exoTrackSelection = this.trackSelection;
            if (exoTrackSelection.f(exoTrackSelection.h(chunk.trackFormat), fallbackSelectionC.exclusionDurationMs)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.smoothstreaming.SsChunkSource
    public void d(SsManifest ssManifest) {
        SsManifest.StreamElement[] streamElementArr = this.manifest.streamElements;
        int i10 = this.streamElementIndex;
        SsManifest.StreamElement streamElement = streamElementArr[i10];
        int i11 = streamElement.chunkCount;
        SsManifest.StreamElement streamElement2 = ssManifest.streamElements[i10];
        if (i11 == 0 || streamElement2.chunkCount == 0) {
            this.currentManifestChunkOffset += i11;
        } else {
            int i12 = i11 - 1;
            long jE = streamElement.e(i12) + streamElement.c(i12);
            long jE2 = streamElement2.e(0);
            if (jE <= jE2) {
                this.currentManifestChunkOffset += i11;
            } else {
                this.currentManifestChunkOffset += streamElement.d(jE2);
            }
        }
        this.manifest = ssManifest;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public boolean g(long j6, Chunk chunk, List<? extends MediaChunk> list) {
        if (this.fatalError != null) {
            return false;
        }
        return this.trackSelection.g(j6, chunk, list);
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public int getPreferredQueueSize(long j6, List<? extends MediaChunk> list) {
        return (this.fatalError != null || this.trackSelection.length() < 2) ? list.size() : this.trackSelection.evaluateQueueSize(j6, list);
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public final void h(long j6, long j10, List<? extends MediaChunk> list, ChunkHolder chunkHolder) {
        int iE;
        long j11 = j10;
        if (this.fatalError != null) {
            return;
        }
        SsManifest ssManifest = this.manifest;
        SsManifest.StreamElement streamElement = ssManifest.streamElements[this.streamElementIndex];
        if (streamElement.chunkCount == 0) {
            chunkHolder.endOfStream = !ssManifest.isLive;
            return;
        }
        if (list.isEmpty()) {
            iE = streamElement.d(j11);
        } else {
            iE = (int) (list.get(list.size() - 1).e() - ((long) this.currentManifestChunkOffset));
            if (iE < 0) {
                this.fatalError = new BehindLiveWindowException();
                return;
            }
        }
        if (iE >= streamElement.chunkCount) {
            chunkHolder.endOfStream = !this.manifest.isLive;
            return;
        }
        long j12 = j11 - j6;
        long j13 = j(j6);
        int length = this.trackSelection.length();
        MediaChunkIterator[] mediaChunkIteratorArr = new MediaChunkIterator[length];
        for (int i10 = 0; i10 < length; i10++) {
            mediaChunkIteratorArr[i10] = new StreamElementIterator(streamElement, this.trackSelection.getIndexInTrackGroup(i10), iE);
        }
        this.trackSelection.i(j6, j12, j13, list, mediaChunkIteratorArr);
        long jE = streamElement.e(iE);
        long jC = jE + streamElement.c(iE);
        if (!list.isEmpty()) {
            j11 = -9223372036854775807L;
        }
        long j14 = j11;
        int i11 = iE + this.currentManifestChunkOffset;
        int selectedIndex = this.trackSelection.getSelectedIndex();
        ChunkExtractor chunkExtractor = this.chunkExtractors[selectedIndex];
        Uri uriA = streamElement.a(this.trackSelection.getIndexInTrackGroup(selectedIndex), iE);
        CmcdConfiguration cmcdConfiguration = this.cmcdConfiguration;
        chunkHolder.chunk = i(this.trackSelection.getSelectedFormat(), this.dataSource, uriA, i11, jE, jC, j14, this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), chunkExtractor, cmcdConfiguration == null ? null : new CmcdHeadersFactory(cmcdConfiguration, this.trackSelection, j12, CmcdHeadersFactory.STREAMING_FORMAT_SS, this.manifest.isLive).d(jC - jE).e(CmcdHeadersFactory.c(this.trackSelection)));
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public void maybeThrowError() throws IOException {
        IOException iOException = this.fatalError;
        if (iOException != null) {
            throw iOException;
        }
        this.manifestLoaderErrorThrower.maybeThrowError();
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public void release() {
        for (ChunkExtractor chunkExtractor : this.chunkExtractors) {
            chunkExtractor.release();
        }
    }
}
