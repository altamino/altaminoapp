package androidx.media3.exoplayer.dash.offline;

import androidx.annotation.Nullable;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.RunnableFutureTask;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.exoplayer.dash.BaseUrlExclusionList;
import androidx.media3.exoplayer.dash.DashSegmentIndex;
import androidx.media3.exoplayer.dash.DashUtil;
import androidx.media3.exoplayer.dash.DashWrappingSegmentIndex;
import androidx.media3.exoplayer.dash.manifest.AdaptationSet;
import androidx.media3.exoplayer.dash.manifest.BaseUrl;
import androidx.media3.exoplayer.dash.manifest.DashManifest;
import androidx.media3.exoplayer.dash.manifest.DashManifestParser;
import androidx.media3.exoplayer.dash.manifest.Period;
import androidx.media3.exoplayer.dash.manifest.RangedUri;
import androidx.media3.exoplayer.dash.manifest.Representation;
import androidx.media3.exoplayer.offline.DownloadException;
import androidx.media3.exoplayer.offline.SegmentDownloader;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import androidx.media3.extractor.ChunkIndex;
import com.google.common.collect.b0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class DashDownloader extends SegmentDownloader<DashManifest> {
    private final BaseUrlExclusionList baseUrlExclusionList;

    public DashDownloader(MediaItem mediaItem, CacheDataSource.Factory factory) {
        this(mediaItem, factory, new a());
    }

    private SegmentDownloader.Segment m(Representation representation, String str, long j6, RangedUri rangedUri) {
        return new SegmentDownloader.Segment(j6, DashUtil.a(representation, str, rangedUri, 0, b0.m()));
    }

    public DashDownloader(MediaItem mediaItem, CacheDataSource.Factory factory, Executor executor) {
        this(mediaItem, new DashManifestParser(), factory, executor, 20000L);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x00b8 A[SYNTHETIC] */
    private void l(DataSource dataSource, AdaptationSet adaptationSet, long j6, long j10, boolean z6, ArrayList<SegmentDownloader.Segment> arrayList) throws InterruptedException, IOException {
        for (int i10 = 0; i10 < adaptationSet.representations.size(); i10++) {
            Representation representation = adaptationSet.representations.get(i10);
            try {
                try {
                    DashSegmentIndex dashSegmentIndexN = n(dataSource, adaptationSet.type, representation, z6);
                    if (dashSegmentIndexN != null) {
                        long jE = dashSegmentIndexN.e(j10);
                        if (jE == -1) {
                            throw new DownloadException("Unbounded segment index");
                        }
                        String str = ((BaseUrl) Util.j(this.baseUrlExclusionList.j(representation.baseUrls))).url;
                        RangedUri rangedUriM = representation.m();
                        if (rangedUriM != null) {
                            arrayList.add(m(representation, str, j6, rangedUriM));
                        }
                        RangedUri rangedUriL = representation.l();
                        if (rangedUriL != null) {
                            arrayList.add(m(representation, str, j6, rangedUriL));
                        }
                        long jF = dashSegmentIndexN.f();
                        long j11 = (jF + jE) - 1;
                        for (long j12 = jF; j12 <= j11; j12++) {
                            arrayList.add(m(representation, str, j6 + dashSegmentIndexN.getTimeUs(j12), dashSegmentIndexN.g(j12)));
                        }
                    } else {
                        try {
                            throw new DownloadException("Missing segment index");
                        } catch (IOException e) {
                            e = e;
                            if (z6) {
                                throw e;
                            }
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                    if (z6) {
                        throw e;
                    }
                }
            } catch (IOException e6) {
                e = e6;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.offline.SegmentDownloader
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public List<SegmentDownloader.Segment> h(DataSource dataSource, DashManifest dashManifest, boolean z6) throws InterruptedException, IOException {
        ArrayList<SegmentDownloader.Segment> arrayList = new ArrayList<>();
        for (int i10 = 0; i10 < dashManifest.d(); i10++) {
            Period periodC = dashManifest.c(i10);
            long jK0 = Util.K0(periodC.startMs);
            long jF = dashManifest.f(i10);
            int i11 = 0;
            for (List<AdaptationSet> list = periodC.adaptationSets; i11 < list.size(); list = list) {
                l(dataSource, list.get(i11), jK0, jF, z6, arrayList);
                i11++;
            }
        }
        return arrayList;
    }

    @Deprecated
    public DashDownloader(MediaItem mediaItem, ParsingLoadable.Parser<DashManifest> parser, CacheDataSource.Factory factory, Executor executor) {
        this(mediaItem, parser, factory, executor, 20000L);
    }

    @Nullable
    private DashSegmentIndex n(final DataSource dataSource, final int i10, final Representation representation, boolean z6) throws InterruptedException, IOException {
        DashSegmentIndex dashSegmentIndexK = representation.k();
        if (dashSegmentIndexK != null) {
            return dashSegmentIndexK;
        }
        ChunkIndex chunkIndex = (ChunkIndex) e(new RunnableFutureTask<ChunkIndex, IOException>() { // from class: androidx.media3.exoplayer.dash.offline.DashDownloader.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.media3.common.util.RunnableFutureTask
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public ChunkIndex d() throws IOException {
                return DashUtil.b(dataSource, i10, representation);
            }
        }, z6);
        if (chunkIndex == null) {
            return null;
        }
        return new DashWrappingSegmentIndex(chunkIndex, representation.presentationTimeOffsetUs);
    }

    public DashDownloader(MediaItem mediaItem, ParsingLoadable.Parser<DashManifest> parser, CacheDataSource.Factory factory, Executor executor, long j6) {
        super(mediaItem, parser, factory, executor, j6);
        this.baseUrlExclusionList = new BaseUrlExclusionList();
    }
}
