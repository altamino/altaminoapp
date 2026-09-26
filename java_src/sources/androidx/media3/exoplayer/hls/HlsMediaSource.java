package androidx.media3.exoplayer.hls;

import android.os.Looper;
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
import androidx.media3.exoplayer.hls.playlist.DefaultHlsPlaylistParserFactory;
import androidx.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker;
import androidx.media3.exoplayer.hls.playlist.FilteringHlsPlaylistParserFactory;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsMultivariantPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistParserFactory;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.source.BaseMediaSource;
import androidx.media3.exoplayer.source.CompositeSequenceableLoaderFactory;
import androidx.media3.exoplayer.source.DefaultCompositeSequenceableLoaderFactory;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.MediaSourceFactory;
import androidx.media3.exoplayer.source.SinglePeriodTimeline;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@UnstableApi
public final class HlsMediaSource extends BaseMediaSource implements HlsPlaylistTracker.PrimaryPlaylistListener {
    public static final int METADATA_TYPE_EMSG = 3;
    public static final int METADATA_TYPE_ID3 = 1;
    private final boolean allowChunklessPreparation;

    @Nullable
    private final CmcdConfiguration cmcdConfiguration;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private final HlsDataSourceFactory dataSourceFactory;
    private final DrmSessionManager drmSessionManager;
    private final long elapsedRealTimeOffsetMs;
    private final HlsExtractorFactory extractorFactory;
    private MediaItem.LiveConfiguration liveConfiguration;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private final MediaItem.LocalConfiguration localConfiguration;
    private final MediaItem mediaItem;

    @Nullable
    private TransferListener mediaTransferListener;
    private final int metadataType;
    private final HlsPlaylistTracker playlistTracker;
    private final long timestampAdjusterInitializationTimeoutMs;
    private final boolean useSessionKeys;

    public static final class Factory implements MediaSourceFactory {
        private boolean allowChunklessPreparation;

        @Nullable
        private CmcdConfiguration.Factory cmcdConfigurationFactory;
        private CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
        private DrmSessionManagerProvider drmSessionManagerProvider;
        private long elapsedRealTimeOffsetMs;
        private HlsExtractorFactory extractorFactory;
        private final HlsDataSourceFactory hlsDataSourceFactory;
        private LoadErrorHandlingPolicy loadErrorHandlingPolicy;
        private int metadataType;
        private HlsPlaylistParserFactory playlistParserFactory;
        private HlsPlaylistTracker.Factory playlistTrackerFactory;
        private long timestampAdjusterInitializationTimeoutMs;
        private boolean useSessionKeys;

        public Factory(DataSource.Factory factory) {
            this(new DefaultHlsDataSourceFactory(factory));
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public int[] getSupportedTypes() {
            return new int[]{2};
        }

        public Factory(HlsDataSourceFactory hlsDataSourceFactory) {
            this.hlsDataSourceFactory = (HlsDataSourceFactory) Assertions.e(hlsDataSourceFactory);
            this.drmSessionManagerProvider = new DefaultDrmSessionManagerProvider();
            this.playlistParserFactory = new DefaultHlsPlaylistParserFactory();
            this.playlistTrackerFactory = DefaultHlsPlaylistTracker.FACTORY;
            this.extractorFactory = HlsExtractorFactory.DEFAULT;
            this.loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
            this.compositeSequenceableLoaderFactory = new DefaultCompositeSequenceableLoaderFactory();
            this.metadataType = 1;
            this.elapsedRealTimeOffsetMs = -9223372036854775807L;
            this.allowChunklessPreparation = true;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public HlsMediaSource d(MediaItem mediaItem) {
            Assertions.e(mediaItem.localConfiguration);
            HlsPlaylistParserFactory hlsPlaylistParserFactory = this.playlistParserFactory;
            List<StreamKey> list = mediaItem.localConfiguration.streamKeys;
            HlsPlaylistParserFactory filteringHlsPlaylistParserFactory = !list.isEmpty() ? new FilteringHlsPlaylistParserFactory(hlsPlaylistParserFactory, list) : hlsPlaylistParserFactory;
            CmcdConfiguration.Factory factory = this.cmcdConfigurationFactory;
            CmcdConfiguration cmcdConfigurationA = factory == null ? null : factory.a(mediaItem);
            HlsDataSourceFactory hlsDataSourceFactory = this.hlsDataSourceFactory;
            HlsExtractorFactory hlsExtractorFactory = this.extractorFactory;
            CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory = this.compositeSequenceableLoaderFactory;
            DrmSessionManager drmSessionManagerA = this.drmSessionManagerProvider.a(mediaItem);
            LoadErrorHandlingPolicy loadErrorHandlingPolicy = this.loadErrorHandlingPolicy;
            return new HlsMediaSource(mediaItem, hlsDataSourceFactory, hlsExtractorFactory, compositeSequenceableLoaderFactory, cmcdConfigurationA, drmSessionManagerA, loadErrorHandlingPolicy, this.playlistTrackerFactory.a(this.hlsDataSourceFactory, loadErrorHandlingPolicy, filteringHlsPlaylistParserFactory), this.elapsedRealTimeOffsetMs, this.allowChunklessPreparation, this.metadataType, this.useSessionKeys, this.timestampAdjusterInitializationTimeoutMs);
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

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetadataType {
    }

    @Nullable
    private static HlsMediaPlaylist.Part m0(List<HlsMediaPlaylist.Part> list, long j6) {
        HlsMediaPlaylist.Part part = null;
        for (int i10 = 0; i10 < list.size(); i10++) {
            HlsMediaPlaylist.Part part2 = list.get(i10);
            long j10 = part2.relativeStartTimeUs;
            if (j10 > j6 || !part2.isIndependent) {
                if (j10 > j6) {
                    break;
                }
            } else {
                part = part2;
            }
        }
        return part;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaItem j() {
        return this.mediaItem;
    }

    static {
        MediaLibraryInfo.a("media3.exoplayer.hls");
    }

    private HlsMediaSource(MediaItem mediaItem, HlsDataSourceFactory hlsDataSourceFactory, HlsExtractorFactory hlsExtractorFactory, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, @Nullable CmcdConfiguration cmcdConfiguration, DrmSessionManager drmSessionManager, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistTracker hlsPlaylistTracker, long j6, boolean z6, int i10, boolean z10, long j10) {
        this.localConfiguration = (MediaItem.LocalConfiguration) Assertions.e(mediaItem.localConfiguration);
        this.mediaItem = mediaItem;
        this.liveConfiguration = mediaItem.liveConfiguration;
        this.dataSourceFactory = hlsDataSourceFactory;
        this.extractorFactory = hlsExtractorFactory;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.cmcdConfiguration = cmcdConfiguration;
        this.drmSessionManager = drmSessionManager;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.playlistTracker = hlsPlaylistTracker;
        this.elapsedRealTimeOffsetMs = j6;
        this.allowChunklessPreparation = z6;
        this.metadataType = i10;
        this.useSessionKeys = z10;
        this.timestampAdjusterInitializationTimeoutMs = j10;
    }

    private SinglePeriodTimeline k0(HlsMediaPlaylist hlsMediaPlaylist, long j6, long j10, HlsManifest hlsManifest) {
        long jA = hlsMediaPlaylist.startTimeUs - this.playlistTracker.a();
        long j11 = hlsMediaPlaylist.hasEndTag ? jA + hlsMediaPlaylist.durationUs : -9223372036854775807L;
        long jO0 = o0(hlsMediaPlaylist);
        long j12 = this.liveConfiguration.targetOffsetMs;
        r0(hlsMediaPlaylist, Util.r(j12 != -9223372036854775807L ? Util.K0(j12) : q0(hlsMediaPlaylist, jO0), jO0, hlsMediaPlaylist.durationUs + jO0));
        return new SinglePeriodTimeline(j6, j10, -9223372036854775807L, j11, hlsMediaPlaylist.durationUs, jA, p0(hlsMediaPlaylist, jO0), true, !hlsMediaPlaylist.hasEndTag, hlsMediaPlaylist.playlistType == 2 && hlsMediaPlaylist.hasPositiveStartOffset, hlsManifest, this.mediaItem, this.liveConfiguration);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002e  */
    private SinglePeriodTimeline l0(HlsMediaPlaylist hlsMediaPlaylist, long j6, long j10, HlsManifest hlsManifest) {
        long j11;
        if (hlsMediaPlaylist.startOffsetUs == -9223372036854775807L || hlsMediaPlaylist.segments.isEmpty()) {
            j11 = 0;
        } else if (hlsMediaPlaylist.preciseStart) {
            j11 = hlsMediaPlaylist.startOffsetUs;
        } else {
            long j12 = hlsMediaPlaylist.startOffsetUs;
            if (j12 == hlsMediaPlaylist.durationUs) {
                j11 = hlsMediaPlaylist.startOffsetUs;
            } else {
                j11 = n0(hlsMediaPlaylist.segments, j12).relativeStartTimeUs;
            }
        }
        long j13 = j11;
        long j14 = hlsMediaPlaylist.durationUs;
        return new SinglePeriodTimeline(j6, j10, -9223372036854775807L, j14, j14, 0L, j13, true, false, true, hlsManifest, this.mediaItem, null);
    }

    private long o0(HlsMediaPlaylist hlsMediaPlaylist) {
        if (hlsMediaPlaylist.hasProgramDateTime) {
            return Util.K0(Util.e0(this.elapsedRealTimeOffsetMs)) - hlsMediaPlaylist.d();
        }
        return 0L;
    }

    private long p0(HlsMediaPlaylist hlsMediaPlaylist, long j6) {
        long jK0 = hlsMediaPlaylist.startOffsetUs;
        if (jK0 == -9223372036854775807L) {
            jK0 = (hlsMediaPlaylist.durationUs + j6) - Util.K0(this.liveConfiguration.targetOffsetMs);
        }
        if (hlsMediaPlaylist.preciseStart) {
            return jK0;
        }
        HlsMediaPlaylist.Part partM0 = m0(hlsMediaPlaylist.trailingParts, jK0);
        if (partM0 != null) {
            return partM0.relativeStartTimeUs;
        }
        if (hlsMediaPlaylist.segments.isEmpty()) {
            return 0L;
        }
        HlsMediaPlaylist.Segment segmentN0 = n0(hlsMediaPlaylist.segments, jK0);
        HlsMediaPlaylist.Part partM1 = m0(segmentN0.parts, jK0);
        return partM1 != null ? partM1.relativeStartTimeUs : segmentN0.relativeStartTimeUs;
    }

    private static long q0(HlsMediaPlaylist hlsMediaPlaylist, long j6) {
        long j10;
        HlsMediaPlaylist.ServerControl serverControl = hlsMediaPlaylist.serverControl;
        long j11 = hlsMediaPlaylist.startOffsetUs;
        if (j11 != -9223372036854775807L) {
            j10 = hlsMediaPlaylist.durationUs - j11;
        } else {
            long j12 = serverControl.partHoldBackUs;
            if (j12 == -9223372036854775807L || hlsMediaPlaylist.partTargetDurationUs == -9223372036854775807L) {
                long j13 = serverControl.holdBackUs;
                j10 = j13 != -9223372036854775807L ? j13 : hlsMediaPlaylist.targetDurationUs * 3;
            } else {
                j10 = j12;
            }
        }
        return j10 + j6;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0028  */
    private void r0(HlsMediaPlaylist hlsMediaPlaylist, long j6) {
        boolean z6;
        MediaItem.LiveConfiguration liveConfiguration = this.mediaItem.liveConfiguration;
        if (liveConfiguration.minPlaybackSpeed == -3.4028235E38f && liveConfiguration.maxPlaybackSpeed == -3.4028235E38f) {
            HlsMediaPlaylist.ServerControl serverControl = hlsMediaPlaylist.serverControl;
            if (serverControl.holdBackUs == -9223372036854775807L && serverControl.partHoldBackUs == -9223372036854775807L) {
                z6 = true;
            } else {
                z6 = false;
            }
        } else {
            z6 = false;
        }
        this.liveConfiguration = new MediaItem.LiveConfiguration.Builder().k(Util.q1(j6)).j(z6 ? 1.0f : this.liveConfiguration.minPlaybackSpeed).h(z6 ? 1.0f : this.liveConfiguration.maxPlaybackSpeed).f();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void A(MediaPeriod mediaPeriod) {
        ((HlsMediaPeriod) mediaPeriod).r();
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.PrimaryPlaylistListener
    public void K(HlsMediaPlaylist hlsMediaPlaylist) {
        long jQ1 = hlsMediaPlaylist.hasProgramDateTime ? Util.q1(hlsMediaPlaylist.startTimeUs) : -9223372036854775807L;
        int i10 = hlsMediaPlaylist.playlistType;
        long j6 = (i10 == 2 || i10 == 1) ? jQ1 : -9223372036854775807L;
        HlsManifest hlsManifest = new HlsManifest((HlsMultivariantPlaylist) Assertions.e(this.playlistTracker.f()), hlsMediaPlaylist);
        i0(this.playlistTracker.i() ? k0(hlsMediaPlaylist, j6, jQ1, hlsManifest) : l0(hlsMediaPlaylist, j6, jQ1, hlsManifest));
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod M(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
        MediaSourceEventListener.EventDispatcher eventDispatcherC0 = c0(mediaPeriodId);
        return new HlsMediaPeriod(this.extractorFactory, this.playlistTracker, this.dataSourceFactory, this.mediaTransferListener, this.cmcdConfiguration, this.drmSessionManager, a0(mediaPeriodId), this.loadErrorHandlingPolicy, eventDispatcherC0, allocator, this.compositeSequenceableLoaderFactory, this.allowChunklessPreparation, this.metadataType, this.useSessionKeys, f0(), this.timestampAdjusterInitializationTimeoutMs);
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void h0(@Nullable TransferListener transferListener) {
        this.mediaTransferListener = transferListener;
        this.drmSessionManager.b((Looper) Assertions.e(Looper.myLooper()), f0());
        this.drmSessionManager.prepare();
        this.playlistTracker.d(this.localConfiguration.uri, c0(null), this);
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void j0() {
        this.playlistTracker.stop();
        this.drmSessionManager.release();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        this.playlistTracker.k();
    }

    private static HlsMediaPlaylist.Segment n0(List<HlsMediaPlaylist.Segment> list, long j6) {
        return list.get(Util.g(list, Long.valueOf(j6), true, true));
    }
}
