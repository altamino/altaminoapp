package androidx.media3.exoplayer.smoothstreaming;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManagerProvider;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.offline.FilteringManifestParser;
import androidx.media3.exoplayer.smoothstreaming.manifest.SsManifest;
import androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser;
import androidx.media3.exoplayer.source.BaseMediaSource;
import androidx.media3.exoplayer.source.CompositeSequenceableLoaderFactory;
import androidx.media3.exoplayer.source.DefaultCompositeSequenceableLoaderFactory;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.MediaSourceFactory;
import androidx.media3.exoplayer.source.SinglePeriodTimeline;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.LoaderErrorThrower;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class SsMediaSource extends BaseMediaSource implements Loader.Callback<ParsingLoadable<SsManifest>> {
    public static final long DEFAULT_LIVE_PRESENTATION_DELAY_MS = 30000;
    private static final int MINIMUM_MANIFEST_REFRESH_PERIOD_MS = 5000;
    private static final long MIN_LIVE_DEFAULT_START_POSITION_US = 5000000;
    private final SsChunkSource.Factory chunkSourceFactory;

    @Nullable
    private final CmcdConfiguration cmcdConfiguration;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private final DrmSessionManager drmSessionManager;
    private final long livePresentationDelayMs;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private final MediaItem.LocalConfiguration localConfiguration;
    private SsManifest manifest;
    private DataSource manifestDataSource;
    private final DataSource.Factory manifestDataSourceFactory;
    private final MediaSourceEventListener.EventDispatcher manifestEventDispatcher;
    private long manifestLoadStartTimestamp;
    private Loader manifestLoader;
    private LoaderErrorThrower manifestLoaderErrorThrower;
    private final ParsingLoadable.Parser<? extends SsManifest> manifestParser;
    private Handler manifestRefreshHandler;
    private final Uri manifestUri;
    private final MediaItem mediaItem;
    private final ArrayList<SsMediaPeriod> mediaPeriods;

    @Nullable
    private TransferListener mediaTransferListener;
    private final boolean sideloadedManifest;

    public static final class Factory implements MediaSourceFactory {
        private final SsChunkSource.Factory chunkSourceFactory;

        @Nullable
        private CmcdConfiguration.Factory cmcdConfigurationFactory;
        private CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
        private DrmSessionManagerProvider drmSessionManagerProvider;
        private long livePresentationDelayMs;
        private LoadErrorHandlingPolicy loadErrorHandlingPolicy;

        @Nullable
        private final DataSource.Factory manifestDataSourceFactory;

        @Nullable
        private ParsingLoadable.Parser<? extends SsManifest> manifestParser;

        public Factory(DataSource.Factory factory) {
            this(new DefaultSsChunkSource.Factory(factory), factory);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public SsMediaSource d(MediaItem mediaItem) {
            Assertions.e(mediaItem.localConfiguration);
            ParsingLoadable.Parser ssManifestParser = this.manifestParser;
            if (ssManifestParser == null) {
                ssManifestParser = new SsManifestParser();
            }
            List<StreamKey> list = mediaItem.localConfiguration.streamKeys;
            ParsingLoadable.Parser filteringManifestParser = !list.isEmpty() ? new FilteringManifestParser(ssManifestParser, list) : ssManifestParser;
            CmcdConfiguration.Factory factory = this.cmcdConfigurationFactory;
            return new SsMediaSource(mediaItem, null, this.manifestDataSourceFactory, filteringManifestParser, this.chunkSourceFactory, this.compositeSequenceableLoaderFactory, factory == null ? null : factory.a(mediaItem), this.drmSessionManagerProvider.a(mediaItem), this.loadErrorHandlingPolicy, this.livePresentationDelayMs);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public int[] getSupportedTypes() {
            return new int[]{1};
        }

        public Factory(SsChunkSource.Factory factory, @Nullable DataSource.Factory factory2) {
            this.chunkSourceFactory = (SsChunkSource.Factory) Assertions.e(factory);
            this.manifestDataSourceFactory = factory2;
            this.drmSessionManagerProvider = new DefaultDrmSessionManagerProvider();
            this.loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
            this.livePresentationDelayMs = 30000L;
            this.compositeSequenceableLoaderFactory = new DefaultCompositeSequenceableLoaderFactory();
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public Factory a(DrmSessionManagerProvider drmSessionManagerProvider) {
            this.drmSessionManagerProvider = (DrmSessionManagerProvider) Assertions.f(drmSessionManagerProvider, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Factory b(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            this.loadErrorHandlingPolicy = (LoadErrorHandlingPolicy) Assertions.f(loadErrorHandlingPolicy, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Factory c(CmcdConfiguration.Factory factory) {
            this.cmcdConfigurationFactory = (CmcdConfiguration.Factory) Assertions.e(factory);
            return this;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void A(MediaPeriod mediaPeriod) {
        ((SsMediaPeriod) mediaPeriod).k();
        this.mediaPeriods.remove(mediaPeriod);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod M(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
        MediaSourceEventListener.EventDispatcher eventDispatcherC0 = c0(mediaPeriodId);
        SsMediaPeriod ssMediaPeriod = new SsMediaPeriod(this.manifest, this.chunkSourceFactory, this.mediaTransferListener, this.compositeSequenceableLoaderFactory, this.cmcdConfiguration, this.drmSessionManager, a0(mediaPeriodId), this.loadErrorHandlingPolicy, eventDispatcherC0, this.manifestLoaderErrorThrower, allocator);
        this.mediaPeriods.add(ssMediaPeriod);
        return ssMediaPeriod;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaItem j() {
        return this.mediaItem;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    /* JADX INFO: renamed from: l0, reason: merged with bridge method [inline-methods] */
    public void H(ParsingLoadable<SsManifest> parsingLoadable, long j6, long j10, boolean z6) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.d(), parsingLoadable.b(), j6, j10, parsingLoadable.a());
        this.loadErrorHandlingPolicy.a(parsingLoadable.loadTaskId);
        this.manifestEventDispatcher.p(loadEventInfo, parsingLoadable.type);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public void Y(ParsingLoadable<SsManifest> parsingLoadable, long j6, long j10) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.d(), parsingLoadable.b(), j6, j10, parsingLoadable.a());
        this.loadErrorHandlingPolicy.a(parsingLoadable.loadTaskId);
        this.manifestEventDispatcher.s(loadEventInfo, parsingLoadable.type);
        this.manifest = parsingLoadable.c();
        this.manifestLoadStartTimestamp = j6 - j10;
        o0();
        p0();
    }

    static {
        MediaLibraryInfo.a("media3.exoplayer.smoothstreaming");
    }

    private SsMediaSource(MediaItem mediaItem, @Nullable SsManifest ssManifest, @Nullable DataSource.Factory factory, @Nullable ParsingLoadable.Parser<? extends SsManifest> parser, SsChunkSource.Factory factory2, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, @Nullable CmcdConfiguration cmcdConfiguration, DrmSessionManager drmSessionManager, LoadErrorHandlingPolicy loadErrorHandlingPolicy, long j6) {
        Assertions.g(ssManifest == null || !ssManifest.isLive);
        this.mediaItem = mediaItem;
        MediaItem.LocalConfiguration localConfiguration = (MediaItem.LocalConfiguration) Assertions.e(mediaItem.localConfiguration);
        this.localConfiguration = localConfiguration;
        this.manifest = ssManifest;
        this.manifestUri = localConfiguration.uri.equals(Uri.EMPTY) ? null : Util.C(localConfiguration.uri);
        this.manifestDataSourceFactory = factory;
        this.manifestParser = parser;
        this.chunkSourceFactory = factory2;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.cmcdConfiguration = cmcdConfiguration;
        this.drmSessionManager = drmSessionManager;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.livePresentationDelayMs = j6;
        this.manifestEventDispatcher = c0(null);
        this.sideloadedManifest = ssManifest != null;
        this.mediaPeriods = new ArrayList<>();
    }

    private void o0() {
        SinglePeriodTimeline singlePeriodTimeline;
        for (int i10 = 0; i10 < this.mediaPeriods.size(); i10++) {
            this.mediaPeriods.get(i10).l(this.manifest);
        }
        long jMax = Long.MIN_VALUE;
        long jMax2 = Long.MAX_VALUE;
        for (SsManifest.StreamElement streamElement : this.manifest.streamElements) {
            if (streamElement.chunkCount > 0) {
                jMax2 = Math.min(jMax2, streamElement.e(0));
                jMax = Math.max(jMax, streamElement.e(streamElement.chunkCount - 1) + streamElement.c(streamElement.chunkCount - 1));
            }
        }
        if (jMax2 == Long.MAX_VALUE) {
            long j6 = this.manifest.isLive ? -9223372036854775807L : 0L;
            SsManifest ssManifest = this.manifest;
            boolean z6 = ssManifest.isLive;
            singlePeriodTimeline = new SinglePeriodTimeline(j6, 0L, 0L, 0L, true, z6, z6, (Object) ssManifest, this.mediaItem);
        } else {
            SsManifest ssManifest2 = this.manifest;
            if (ssManifest2.isLive) {
                long j10 = ssManifest2.dvrWindowLengthUs;
                if (j10 != -9223372036854775807L && j10 > 0) {
                    jMax2 = Math.max(jMax2, jMax - j10);
                }
                long j11 = jMax2;
                long j12 = jMax - j11;
                long jK0 = j12 - Util.K0(this.livePresentationDelayMs);
                if (jK0 < 5000000) {
                    jK0 = Math.min(5000000L, j12 / 2);
                }
                singlePeriodTimeline = new SinglePeriodTimeline(-9223372036854775807L, j12, j11, jK0, true, true, true, (Object) this.manifest, this.mediaItem);
            } else {
                long j13 = ssManifest2.durationUs;
                long j14 = j13 != -9223372036854775807L ? j13 : jMax - jMax2;
                singlePeriodTimeline = new SinglePeriodTimeline(jMax2 + j14, j14, jMax2, 0L, true, false, false, (Object) this.manifest, this.mediaItem);
            }
        }
        i0(singlePeriodTimeline);
    }

    private void p0() {
        if (this.manifest.isLive) {
            this.manifestRefreshHandler.postDelayed(new Runnable() { // from class: androidx.media3.exoplayer.smoothstreaming.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f590a.q0();
                }
            }, Math.max(0L, (this.manifestLoadStartTimestamp + 5000) - SystemClock.elapsedRealtime()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q0() {
        if (this.manifestLoader.h()) {
            return;
        }
        ParsingLoadable parsingLoadable = new ParsingLoadable(this.manifestDataSource, this.manifestUri, 4, this.manifestParser);
        this.manifestEventDispatcher.y(new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, this.manifestLoader.m(parsingLoadable, this, this.loadErrorHandlingPolicy.b(parsingLoadable.type))), parsingLoadable.type);
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void h0(@Nullable TransferListener transferListener) {
        this.mediaTransferListener = transferListener;
        this.drmSessionManager.b(Looper.myLooper(), f0());
        this.drmSessionManager.prepare();
        if (this.sideloadedManifest) {
            this.manifestLoaderErrorThrower = new LoaderErrorThrower.Placeholder();
            o0();
            return;
        }
        this.manifestDataSource = this.manifestDataSourceFactory.createDataSource();
        Loader loader = new Loader("SsMediaSource");
        this.manifestLoader = loader;
        this.manifestLoaderErrorThrower = loader;
        this.manifestRefreshHandler = Util.w();
        q0();
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void j0() {
        this.manifest = this.sideloadedManifest ? this.manifest : null;
        this.manifestDataSource = null;
        this.manifestLoadStartTimestamp = 0L;
        Loader loader = this.manifestLoader;
        if (loader != null) {
            loader.k();
            this.manifestLoader = null;
        }
        Handler handler = this.manifestRefreshHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.manifestRefreshHandler = null;
        }
        this.drmSessionManager.release();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        this.manifestLoaderErrorThrower.maybeThrowError();
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
    public Loader.LoadErrorAction w(ParsingLoadable<SsManifest> parsingLoadable, long j6, long j10, IOException iOException, int i10) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.d(), parsingLoadable.b(), j6, j10, parsingLoadable.a());
        long jD = this.loadErrorHandlingPolicy.d(new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(parsingLoadable.type), iOException, i10));
        Loader.LoadErrorAction loadErrorActionG = jD == -9223372036854775807L ? Loader.DONT_RETRY_FATAL : Loader.g(false, jD);
        boolean z6 = !loadErrorActionG.c();
        this.manifestEventDispatcher.w(loadEventInfo, parsingLoadable.type, iOException, z6);
        if (z6) {
            this.loadErrorHandlingPolicy.a(parsingLoadable.loadTaskId);
        }
        return loadErrorActionG;
    }
}
