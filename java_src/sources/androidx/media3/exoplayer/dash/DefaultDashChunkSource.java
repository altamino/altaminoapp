package androidx.media3.exoplayer.dash;

import android.os.SystemClock;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.dash.manifest.AdaptationSet;
import androidx.media3.exoplayer.dash.manifest.BaseUrl;
import androidx.media3.exoplayer.dash.manifest.DashManifest;
import androidx.media3.exoplayer.dash.manifest.RangedUri;
import androidx.media3.exoplayer.dash.manifest.Representation;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.source.chunk.BaseMediaChunkIterator;
import androidx.media3.exoplayer.source.chunk.BundledChunkExtractor;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.source.chunk.ChunkExtractor;
import androidx.media3.exoplayer.source.chunk.ChunkHolder;
import androidx.media3.exoplayer.source.chunk.ContainerMediaChunk;
import androidx.media3.exoplayer.source.chunk.InitializationChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.source.chunk.SingleSampleMediaChunk;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoaderErrorThrower;
import androidx.media3.extractor.ChunkIndex;
import com.google.common.collect.b0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public class DefaultDashChunkSource implements DashChunkSource {
    private final int[] adaptationSetIndices;
    private final BaseUrlExclusionList baseUrlExclusionList;

    @Nullable
    private final CmcdConfiguration cmcdConfiguration;
    private final DataSource dataSource;
    private final long elapsedRealtimeOffsetMs;

    @Nullable
    private IOException fatalError;
    private DashManifest manifest;
    private final LoaderErrorThrower manifestLoaderErrorThrower;
    private final int maxSegmentsPerLoad;
    private boolean missingLastSegment;
    private int periodIndex;

    @Nullable
    private final PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler;
    protected final RepresentationHolder[] representationHolders;
    private ExoTrackSelection trackSelection;
    private final int trackType;

    public static final class Factory implements DashChunkSource.Factory {
        private final ChunkExtractor.Factory chunkExtractorFactory;
        private final DataSource.Factory dataSourceFactory;
        private final int maxSegmentsPerLoad;

        public Factory(DataSource.Factory factory) {
            this(factory, 1);
        }

        public Factory(DataSource.Factory factory, int i10) {
            this(BundledChunkExtractor.FACTORY, factory, i10);
        }

        @Override // androidx.media3.exoplayer.dash.DashChunkSource.Factory
        public DashChunkSource a(LoaderErrorThrower loaderErrorThrower, DashManifest dashManifest, BaseUrlExclusionList baseUrlExclusionList, int i10, int[] iArr, ExoTrackSelection exoTrackSelection, int i11, long j6, boolean z6, List<Format> list, @Nullable PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler, @Nullable TransferListener transferListener, PlayerId playerId, @Nullable CmcdConfiguration cmcdConfiguration) {
            DataSource dataSourceCreateDataSource = this.dataSourceFactory.createDataSource();
            if (transferListener != null) {
                dataSourceCreateDataSource.c(transferListener);
            }
            return new DefaultDashChunkSource(this.chunkExtractorFactory, loaderErrorThrower, dashManifest, baseUrlExclusionList, i10, iArr, exoTrackSelection, i11, dataSourceCreateDataSource, j6, this.maxSegmentsPerLoad, z6, list, playerTrackEmsgHandler, playerId, cmcdConfiguration);
        }

        public Factory(ChunkExtractor.Factory factory, DataSource.Factory factory2, int i10) {
            this.chunkExtractorFactory = factory;
            this.dataSourceFactory = factory2;
            this.maxSegmentsPerLoad = i10;
        }
    }

    protected static final class RepresentationHolder {

        @Nullable
        final ChunkExtractor chunkExtractor;
        private final long periodDurationUs;
        public final Representation representation;

        @Nullable
        public final DashSegmentIndex segmentIndex;
        private final long segmentNumShift;
        public final BaseUrl selectedBaseUrl;

        @CheckResult
        RepresentationHolder b(long j6, Representation representation) throws BehindLiveWindowException {
            long jD;
            DashSegmentIndex dashSegmentIndexK = this.representation.k();
            DashSegmentIndex dashSegmentIndexK2 = representation.k();
            if (dashSegmentIndexK == null) {
                return new RepresentationHolder(j6, representation, this.selectedBaseUrl, this.chunkExtractor, this.segmentNumShift, dashSegmentIndexK);
            }
            if (!dashSegmentIndexK.h()) {
                return new RepresentationHolder(j6, representation, this.selectedBaseUrl, this.chunkExtractor, this.segmentNumShift, dashSegmentIndexK2);
            }
            long jE = dashSegmentIndexK.e(j6);
            if (jE == 0) {
                return new RepresentationHolder(j6, representation, this.selectedBaseUrl, this.chunkExtractor, this.segmentNumShift, dashSegmentIndexK2);
            }
            long jF = dashSegmentIndexK.f();
            long timeUs = dashSegmentIndexK.getTimeUs(jF);
            long jD2 = jE + jF;
            long j10 = jD2 - 1;
            long timeUs2 = dashSegmentIndexK.getTimeUs(j10) + dashSegmentIndexK.a(j10, j6);
            long jF2 = dashSegmentIndexK2.f();
            long timeUs3 = dashSegmentIndexK2.getTimeUs(jF2);
            long j11 = this.segmentNumShift;
            if (timeUs2 == timeUs3) {
                jD = j11 + (jD2 - jF2);
            } else {
                if (timeUs2 < timeUs3) {
                    throw new BehindLiveWindowException();
                }
                if (timeUs3 < timeUs) {
                    jD = j11 - (dashSegmentIndexK2.d(timeUs, j6) - jF);
                } else {
                    jD2 = dashSegmentIndexK.d(timeUs3, j6);
                    jD = j11 + (jD2 - jF2);
                }
            }
            return new RepresentationHolder(j6, representation, this.selectedBaseUrl, this.chunkExtractor, jD, dashSegmentIndexK2);
        }

        @CheckResult
        RepresentationHolder c(DashSegmentIndex dashSegmentIndex) {
            return new RepresentationHolder(this.periodDurationUs, this.representation, this.selectedBaseUrl, this.chunkExtractor, this.segmentNumShift, dashSegmentIndex);
        }

        @CheckResult
        RepresentationHolder d(BaseUrl baseUrl) {
            return new RepresentationHolder(this.periodDurationUs, this.representation, baseUrl, this.chunkExtractor, this.segmentNumShift, this.segmentIndex);
        }

        public long e(long j6) {
            return this.segmentIndex.b(this.periodDurationUs, j6) + this.segmentNumShift;
        }

        public long f() {
            return this.segmentIndex.f() + this.segmentNumShift;
        }

        public long h() {
            return this.segmentIndex.e(this.periodDurationUs);
        }

        public long j(long j6) {
            return this.segmentIndex.d(j6, this.periodDurationUs) + this.segmentNumShift;
        }

        public long k(long j6) {
            return this.segmentIndex.getTimeUs(j6 - this.segmentNumShift);
        }

        public RangedUri l(long j6) {
            return this.segmentIndex.g(j6 - this.segmentNumShift);
        }

        public boolean m(long j6, long j10) {
            return this.segmentIndex.h() || j10 == -9223372036854775807L || i(j6) <= j10;
        }

        RepresentationHolder(long j6, Representation representation, BaseUrl baseUrl, @Nullable ChunkExtractor chunkExtractor, long j10, @Nullable DashSegmentIndex dashSegmentIndex) {
            this.periodDurationUs = j6;
            this.representation = representation;
            this.selectedBaseUrl = baseUrl;
            this.segmentNumShift = j10;
            this.chunkExtractor = chunkExtractor;
            this.segmentIndex = dashSegmentIndex;
        }

        public long g(long j6) {
            return (e(j6) + this.segmentIndex.i(this.periodDurationUs, j6)) - 1;
        }

        public long i(long j6) {
            return k(j6) + this.segmentIndex.a(j6 - this.segmentNumShift, this.periodDurationUs);
        }
    }

    @Override // androidx.media3.exoplayer.dash.DashChunkSource
    public void b(ExoTrackSelection exoTrackSelection) {
        this.trackSelection = exoTrackSelection;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public boolean c(Chunk chunk, boolean z6, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
        LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionC;
        if (!z6) {
            return false;
        }
        PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler = this.playerTrackEmsgHandler;
        if (playerTrackEmsgHandler != null && playerTrackEmsgHandler.j(chunk)) {
            return true;
        }
        if (!this.manifest.dynamic && (chunk instanceof MediaChunk)) {
            IOException iOException = loadErrorInfo.exception;
            if ((iOException instanceof HttpDataSource.InvalidResponseCodeException) && ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode == 404) {
                RepresentationHolder representationHolder = this.representationHolders[this.trackSelection.h(chunk.trackFormat)];
                long jH = representationHolder.h();
                if (jH != -1 && jH != 0) {
                    if (((MediaChunk) chunk).e() > (representationHolder.f() + jH) - 1) {
                        this.missingLastSegment = true;
                        return true;
                    }
                }
            }
        }
        RepresentationHolder representationHolder2 = this.representationHolders[this.trackSelection.h(chunk.trackFormat)];
        BaseUrl baseUrlJ = this.baseUrlExclusionList.j(representationHolder2.representation.baseUrls);
        if (baseUrlJ != null && !representationHolder2.selectedBaseUrl.equals(baseUrlJ)) {
            return true;
        }
        LoadErrorHandlingPolicy.FallbackOptions fallbackOptionsI = i(this.trackSelection, representationHolder2.representation.baseUrls);
        if ((!fallbackOptionsI.a(2) && !fallbackOptionsI.a(1)) || (fallbackSelectionC = loadErrorHandlingPolicy.c(fallbackOptionsI, loadErrorInfo)) == null || !fallbackOptionsI.a(fallbackSelectionC.type)) {
            return false;
        }
        int i10 = fallbackSelectionC.type;
        if (i10 == 2) {
            ExoTrackSelection exoTrackSelection = this.trackSelection;
            return exoTrackSelection.f(exoTrackSelection.h(chunk.trackFormat), fallbackSelectionC.exclusionDurationMs);
        }
        if (i10 != 1) {
            return false;
        }
        this.baseUrlExclusionList.e(representationHolder2.selectedBaseUrl, fallbackSelectionC.exclusionDurationMs);
        return true;
    }

    protected Chunk n(RepresentationHolder representationHolder, DataSource dataSource, Format format, int i10, @Nullable Object obj, @Nullable RangedUri rangedUri, @Nullable RangedUri rangedUri2, @Nullable CmcdHeadersFactory cmcdHeadersFactory) {
        RangedUri rangedUri3 = rangedUri;
        Representation representation = representationHolder.representation;
        if (rangedUri3 != null) {
            RangedUri rangedUriA = rangedUri3.a(rangedUri2, representationHolder.selectedBaseUrl.url);
            if (rangedUriA != null) {
                rangedUri3 = rangedUriA;
            }
        } else {
            rangedUri3 = rangedUri2;
        }
        return new InitializationChunk(dataSource, DashUtil.a(representation, representationHolder.selectedBaseUrl.url, rangedUri3, 0, cmcdHeadersFactory == null ? b0.m() : cmcdHeadersFactory.e(CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT).a()), format, i10, obj, representationHolder.chunkExtractor);
    }

    protected static final class RepresentationSegmentIterator extends BaseMediaChunkIterator {
        private final long nowPeriodTimeUs;
        private final RepresentationHolder representationHolder;

        public RepresentationSegmentIterator(RepresentationHolder representationHolder, long j6, long j10, long j11) {
            super(j6, j10);
            this.representationHolder = representationHolder;
            this.nowPeriodTimeUs = j11;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long a() {
            c();
            return this.representationHolder.i(d());
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long b() {
            c();
            return this.representationHolder.k(d());
        }
    }

    public DefaultDashChunkSource(ChunkExtractor.Factory factory, LoaderErrorThrower loaderErrorThrower, DashManifest dashManifest, BaseUrlExclusionList baseUrlExclusionList, int i10, int[] iArr, ExoTrackSelection exoTrackSelection, int i11, DataSource dataSource, long j6, int i12, boolean z6, List<Format> list, @Nullable PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler, PlayerId playerId, @Nullable CmcdConfiguration cmcdConfiguration) {
        this.manifestLoaderErrorThrower = loaderErrorThrower;
        this.manifest = dashManifest;
        this.baseUrlExclusionList = baseUrlExclusionList;
        this.adaptationSetIndices = iArr;
        this.trackSelection = exoTrackSelection;
        this.trackType = i11;
        this.dataSource = dataSource;
        this.periodIndex = i10;
        this.elapsedRealtimeOffsetMs = j6;
        this.maxSegmentsPerLoad = i12;
        this.playerTrackEmsgHandler = playerTrackEmsgHandler;
        this.cmcdConfiguration = cmcdConfiguration;
        long jF = dashManifest.f(i10);
        ArrayList<Representation> arrayListL = l();
        this.representationHolders = new RepresentationHolder[exoTrackSelection.length()];
        int i13 = 0;
        while (i13 < this.representationHolders.length) {
            Representation representation = arrayListL.get(exoTrackSelection.getIndexInTrackGroup(i13));
            BaseUrl baseUrlJ = baseUrlExclusionList.j(representation.baseUrls);
            int i14 = i13;
            this.representationHolders[i14] = new RepresentationHolder(jF, representation, baseUrlJ == null ? representation.baseUrls.get(0) : baseUrlJ, factory.a(i11, representation.format, z6, list, playerTrackEmsgHandler, playerId), 0L, representation.k());
            i13 = i14 + 1;
        }
    }

    private long j(long j6, long j10) {
        if (!this.manifest.dynamic || this.representationHolders[0].h() == 0) {
            return -9223372036854775807L;
        }
        return Math.max(0L, Math.min(k(j6), this.representationHolders[0].i(this.representationHolders[0].g(j6))) - j10);
    }

    private long k(long j6) {
        DashManifest dashManifest = this.manifest;
        long j10 = dashManifest.availabilityStartTimeMs;
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j6 - Util.K0(j10 + dashManifest.c(this.periodIndex).startMs);
    }

    private ArrayList<Representation> l() {
        List<AdaptationSet> list = this.manifest.c(this.periodIndex).adaptationSets;
        ArrayList<Representation> arrayList = new ArrayList<>();
        for (int i10 : this.adaptationSetIndices) {
            arrayList.addAll(list.get(i10).representations);
        }
        return arrayList;
    }

    private long m(RepresentationHolder representationHolder, @Nullable MediaChunk mediaChunk, long j6, long j10, long j11) {
        return mediaChunk != null ? mediaChunk.e() : Util.r(representationHolder.j(j6), j10, j11);
    }

    private RepresentationHolder p(int i10) {
        RepresentationHolder representationHolder = this.representationHolders[i10];
        BaseUrl baseUrlJ = this.baseUrlExclusionList.j(representationHolder.representation.baseUrls);
        if (baseUrlJ == null || baseUrlJ.equals(representationHolder.selectedBaseUrl)) {
            return representationHolder;
        }
        RepresentationHolder representationHolderD = representationHolder.d(baseUrlJ);
        this.representationHolders[i10] = representationHolderD;
        return representationHolderD;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public long a(long j6, SeekParameters seekParameters) {
        for (RepresentationHolder representationHolder : this.representationHolders) {
            if (representationHolder.segmentIndex != null) {
                long jH = representationHolder.h();
                if (jH != 0) {
                    long j10 = representationHolder.j(j6);
                    long jK = representationHolder.k(j10);
                    return seekParameters.a(j6, jK, (jK >= j6 || (jH != -1 && j10 >= (representationHolder.f() + jH) - 1)) ? jK : representationHolder.k(j10 + 1));
                }
            }
        }
        return j6;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public void e(Chunk chunk) {
        ChunkIndex chunkIndexC;
        if (chunk instanceof InitializationChunk) {
            int iH = this.trackSelection.h(((InitializationChunk) chunk).trackFormat);
            RepresentationHolder representationHolder = this.representationHolders[iH];
            if (representationHolder.segmentIndex == null && (chunkIndexC = representationHolder.chunkExtractor.c()) != null) {
                this.representationHolders[iH] = representationHolder.c(new DashWrappingSegmentIndex(chunkIndexC, representationHolder.representation.presentationTimeOffsetUs));
            }
        }
        PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler = this.playerTrackEmsgHandler;
        if (playerTrackEmsgHandler != null) {
            playerTrackEmsgHandler.i(chunk);
        }
    }

    @Override // androidx.media3.exoplayer.dash.DashChunkSource
    public void f(DashManifest dashManifest, int i10) {
        try {
            this.manifest = dashManifest;
            this.periodIndex = i10;
            long jF = dashManifest.f(i10);
            ArrayList<Representation> arrayListL = l();
            for (int i11 = 0; i11 < this.representationHolders.length; i11++) {
                Representation representation = arrayListL.get(this.trackSelection.getIndexInTrackGroup(i11));
                RepresentationHolder[] representationHolderArr = this.representationHolders;
                representationHolderArr[i11] = representationHolderArr[i11].b(jF, representation);
            }
        } catch (BehindLiveWindowException e) {
            this.fatalError = e;
        }
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

    /* JADX WARN: Code duplicated, block: B:55:0x0163  */
    /* JADX WARN: Code duplicated, block: B:58:0x016e  */
    /* JADX WARN: Code duplicated, block: B:60:0x0171  */
    /* JADX WARN: Code duplicated, block: B:62:0x017b  */
    /* JADX WARN: Code duplicated, block: B:64:0x018a  */
    /* JADX WARN: Code duplicated, block: B:65:0x018c  */
    /* JADX WARN: Code duplicated, block: B:69:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:71:0x01aa  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r0v64 */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r10v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r13v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public void h(long j6, long j10, List<? extends MediaChunk> list, ChunkHolder chunkHolder) {
        boolean z6;
        boolean z10;
        ?? r10;
        ?? r1;
        long jE;
        long jG;
        ?? r5;
        ?? r13;
        long jM;
        long jI;
        ?? r11;
        int i10;
        int i11;
        MediaChunkIterator[] mediaChunkIteratorArr;
        long j11;
        long j12;
        if (this.fatalError != null) {
            return;
        }
        long j13 = j10 - j6;
        long jK0 = Util.K0(this.manifest.availabilityStartTimeMs) + Util.K0(this.manifest.c(this.periodIndex).startMs) + j10;
        PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler = this.playerTrackEmsgHandler;
        if (playerTrackEmsgHandler == null || !playerTrackEmsgHandler.h(jK0)) {
            long jK1 = Util.K0(Util.e0(this.elapsedRealtimeOffsetMs));
            long jK = k(jK1);
            MediaChunk mediaChunk = list.isEmpty() ? null : list.get(list.size() - 1);
            int length = this.trackSelection.length();
            MediaChunkIterator[] mediaChunkIteratorArr2 = new MediaChunkIterator[length];
            int i12 = 0;
            while (i12 < length) {
                RepresentationHolder representationHolder = this.representationHolders[i12];
                if (representationHolder.segmentIndex == null) {
                    mediaChunkIteratorArr2[i12] = MediaChunkIterator.EMPTY;
                    i10 = i12;
                    i11 = length;
                    mediaChunkIteratorArr = mediaChunkIteratorArr2;
                    j11 = j13;
                    j12 = jK1;
                } else {
                    long jE2 = representationHolder.e(jK1);
                    long jG2 = representationHolder.g(jK1);
                    i10 = i12;
                    i11 = length;
                    mediaChunkIteratorArr = mediaChunkIteratorArr2;
                    j11 = j13;
                    j12 = jK1;
                    long jM2 = m(representationHolder, mediaChunk, j10, jE2, jG2);
                    if (jM2 < jE2) {
                        mediaChunkIteratorArr[i10] = MediaChunkIterator.EMPTY;
                    } else {
                        mediaChunkIteratorArr[i10] = new RepresentationSegmentIterator(p(i10), jM2, jG2, jK);
                    }
                }
                i12 = i10 + 1;
                jK1 = j12;
                length = i11;
                mediaChunkIteratorArr2 = mediaChunkIteratorArr;
                j13 = j11;
            }
            long j14 = j13;
            long j15 = jK1;
            this.trackSelection.i(j6, j14, j(j15, j6), list, mediaChunkIteratorArr2);
            int selectedIndex = this.trackSelection.getSelectedIndex();
            CmcdConfiguration cmcdConfiguration = this.cmcdConfiguration;
            CmcdHeadersFactory cmcdHeadersFactory = cmcdConfiguration == null ? null : new CmcdHeadersFactory(cmcdConfiguration, this.trackSelection, j14, "d", this.manifest.dynamic);
            RepresentationHolder representationHolderP = p(selectedIndex);
            ChunkExtractor chunkExtractor = representationHolderP.chunkExtractor;
            if (chunkExtractor != null) {
                Representation representation = representationHolderP.representation;
                RangedUri rangedUriM = chunkExtractor.e() == null ? representation.m() : null;
                RangedUri rangedUriL = representationHolderP.segmentIndex == null ? representation.l() : null;
                if (rangedUriM != null || rangedUriL != null) {
                    chunkHolder.chunk = n(representationHolderP, this.dataSource, this.trackSelection.getSelectedFormat(), this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), rangedUriM, rangedUriL, cmcdHeadersFactory);
                    return;
                }
            }
            long j16 = representationHolderP.periodDurationUs;
            DashManifest dashManifest = this.manifest;
            if (dashManifest.dynamic) {
                z6 = true;
                r10 = 1;
                if (this.periodIndex == dashManifest.d() - 1) {
                    z10 = true;
                }
                if (z10 || j16 != -9223372036854775807L) {
                    r1 = r10;
                } else {
                    r1 = 0;
                }
                if (representationHolderP.h() == 0) {
                    chunkHolder.endOfStream = r1;
                    return;
                }
                jE = representationHolderP.e(j15);
                jG = representationHolderP.g(j15);
                if (z10) {
                    jI = representationHolderP.i(jG);
                    if (jI + (jI - representationHolderP.k(jG)) >= j16) {
                        r5 = r1;
                        r11 = r10;
                    } else {
                        r5 = r1;
                        r11 = 0;
                    }
                    r5 = (r1 == true ? 1 : 0) & r11;
                }
                r5 = r1;
                r13 = r5;
                jM = m(representationHolderP, mediaChunk, j10, jE, jG);
                if (jM < jE) {
                    this.fatalError = new BehindLiveWindowException();
                }
                if (jM <= jG || (this.missingLastSegment && jM >= jG)) {
                    chunkHolder.endOfStream = r13;
                }
                if (r13 != 0 && representationHolderP.k(jM) >= j16) {
                    chunkHolder.endOfStream = r10;
                    return;
                }
                int iMin = (int) Math.min(this.maxSegmentsPerLoad, (jG - jM) + 1);
                if (j16 != -9223372036854775807L) {
                    while (iMin > r10 && representationHolderP.k((((long) iMin) + jM) - 1) >= j16) {
                        iMin--;
                    }
                }
                chunkHolder.chunk = o(representationHolderP, this.dataSource, this.trackType, this.trackSelection.getSelectedFormat(), this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), jM, iMin, list.isEmpty() ? j10 : -9223372036854775807L, jK, cmcdHeadersFactory);
                return;
            }
            z6 = true;
            z10 = false;
            r10 = z6;
            if (z10) {
                r1 = r10;
            } else {
                r1 = r10;
            }
            if (representationHolderP.h() == 0) {
                chunkHolder.endOfStream = r1;
                return;
            }
            jE = representationHolderP.e(j15);
            jG = representationHolderP.g(j15);
            if (z10) {
                jI = representationHolderP.i(jG);
                if (jI + (jI - representationHolderP.k(jG)) >= j16) {
                    r5 = r1;
                    r11 = r10;
                } else {
                    r5 = r1;
                    r11 = 0;
                }
                r5 = (r1 == true ? 1 : 0) & r11;
            }
            r5 = r1;
            r13 = r5;
            jM = m(representationHolderP, mediaChunk, j10, jE, jG);
            if (jM < jE) {
                this.fatalError = new BehindLiveWindowException();
            } else {
                if (jM <= jG) {
                }
                chunkHolder.endOfStream = r13;
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public void maybeThrowError() throws IOException {
        IOException iOException = this.fatalError;
        if (iOException != null) {
            throw iOException;
        }
        this.manifestLoaderErrorThrower.maybeThrowError();
    }

    protected Chunk o(RepresentationHolder representationHolder, DataSource dataSource, int i10, Format format, int i11, Object obj, long j6, int i12, long j10, long j11, @Nullable CmcdHeadersFactory cmcdHeadersFactory) {
        Representation representation = representationHolder.representation;
        long jK = representationHolder.k(j6);
        RangedUri rangedUriL = representationHolder.l(j6);
        if (representationHolder.chunkExtractor == null) {
            long jI = representationHolder.i(j6);
            return new SingleSampleMediaChunk(dataSource, DashUtil.a(representation, representationHolder.selectedBaseUrl.url, rangedUriL, representationHolder.m(j6, j11) ? 0 : 8, cmcdHeadersFactory == null ? b0.m() : cmcdHeadersFactory.d(jI - jK).e(CmcdHeadersFactory.c(this.trackSelection)).a()), format, i11, obj, jK, jI, j6, i10, format);
        }
        int i13 = 1;
        int i14 = 1;
        while (i13 < i12) {
            RangedUri rangedUriA = rangedUriL.a(representationHolder.l(((long) i13) + j6), representationHolder.selectedBaseUrl.url);
            if (rangedUriA == null) {
                break;
            }
            i14++;
            i13++;
            rangedUriL = rangedUriA;
        }
        long j12 = (((long) i14) + j6) - 1;
        long jI2 = representationHolder.i(j12);
        long j13 = representationHolder.periodDurationUs;
        return new ContainerMediaChunk(dataSource, DashUtil.a(representation, representationHolder.selectedBaseUrl.url, rangedUriL, representationHolder.m(j12, j11) ? 0 : 8, cmcdHeadersFactory == null ? b0.m() : cmcdHeadersFactory.d(jI2 - jK).e(CmcdHeadersFactory.c(this.trackSelection)).a()), format, i11, obj, jK, jI2, j10, (j13 == -9223372036854775807L || j13 > jI2) ? -9223372036854775807L : j13, j6, i14, -representation.presentationTimeOffsetUs, representationHolder.chunkExtractor);
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSource
    public void release() {
        for (RepresentationHolder representationHolder : this.representationHolders) {
            ChunkExtractor chunkExtractor = representationHolder.chunkExtractor;
            if (chunkExtractor != null) {
                chunkExtractor.release();
            }
        }
    }

    private LoadErrorHandlingPolicy.FallbackOptions i(ExoTrackSelection exoTrackSelection, List<BaseUrl> list) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int length = exoTrackSelection.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (exoTrackSelection.e(i11, jElapsedRealtime)) {
                i10++;
            }
        }
        int iF = BaseUrlExclusionList.f(list);
        return new LoadErrorHandlingPolicy.FallbackOptions(iF, iF - this.baseUrlExclusionList.g(list), length, i10);
    }
}
