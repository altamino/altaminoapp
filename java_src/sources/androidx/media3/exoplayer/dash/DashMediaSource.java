package androidx.media3.exoplayer.dash;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.ParserException;
import androidx.media3.common.StreamKey;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.dash.manifest.AdaptationSet;
import androidx.media3.exoplayer.dash.manifest.DashManifest;
import androidx.media3.exoplayer.dash.manifest.DashManifestParser;
import androidx.media3.exoplayer.dash.manifest.Period;
import androidx.media3.exoplayer.dash.manifest.Representation;
import androidx.media3.exoplayer.dash.manifest.ServiceDescriptionElement;
import androidx.media3.exoplayer.dash.manifest.UtcTimingElement;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManagerProvider;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.offline.FilteringManifestParser;
import androidx.media3.exoplayer.source.BaseMediaSource;
import androidx.media3.exoplayer.source.CompositeSequenceableLoaderFactory;
import androidx.media3.exoplayer.source.DefaultCompositeSequenceableLoaderFactory;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.MediaSourceFactory;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.LoaderErrorThrower;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import androidx.media3.exoplayer.util.SntpClient;
import com.google.common.base.e;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.RoundingMode;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
@UnstableApi
public final class DashMediaSource extends BaseMediaSource {
    public static final long DEFAULT_FALLBACK_TARGET_LIVE_OFFSET_MS = 30000;

    @Deprecated
    public static final long DEFAULT_LIVE_PRESENTATION_DELAY_MS = 30000;
    public static final String DEFAULT_MEDIA_ID = "DashMediaSource";
    private static final long DEFAULT_NOTIFY_MANIFEST_INTERVAL_MS = 5000;
    public static final long MIN_LIVE_DEFAULT_START_POSITION_US = 5000000;
    private static final String TAG = "DashMediaSource";
    private final BaseUrlExclusionList baseUrlExclusionList;
    private final DashChunkSource.Factory chunkSourceFactory;

    @Nullable
    private final CmcdConfiguration cmcdConfiguration;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private DataSource dataSource;
    private final DrmSessionManager drmSessionManager;
    private long elapsedRealtimeOffsetMs;
    private long expiredManifestPublishTimeUs;
    private final long fallbackTargetLiveOffsetMs;
    private int firstPeriodId;
    private Handler handler;
    private Uri initialManifestUri;
    private MediaItem.LiveConfiguration liveConfiguration;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private Loader loader;
    private DashManifest manifest;
    private final ManifestCallback manifestCallback;
    private final DataSource.Factory manifestDataSourceFactory;
    private final MediaSourceEventListener.EventDispatcher manifestEventDispatcher;
    private IOException manifestFatalError;
    private long manifestLoadEndTimestampMs;
    private final LoaderErrorThrower manifestLoadErrorThrower;
    private boolean manifestLoadPending;
    private long manifestLoadStartTimestampMs;
    private final ParsingLoadable.Parser<? extends DashManifest> manifestParser;
    private Uri manifestUri;
    private final Object manifestUriLock;
    private final MediaItem mediaItem;

    @Nullable
    private TransferListener mediaTransferListener;
    private final long minLiveStartPositionUs;
    private final SparseArray<DashMediaPeriod> periodsById;
    private final PlayerEmsgHandler.PlayerEmsgCallback playerEmsgCallback;
    private final Runnable refreshManifestRunnable;
    private final boolean sideloadedManifest;
    private final Runnable simulateManifestRefreshRunnable;
    private int staleManifestReloadAttempt;

    private static final class DashTimeline extends Timeline {
        private final long elapsedRealtimeEpochOffsetMs;
        private final int firstPeriodId;

        @Nullable
        private final MediaItem.LiveConfiguration liveConfiguration;
        private final DashManifest manifest;
        private final MediaItem mediaItem;
        private final long offsetInFirstPeriodUs;
        private final long presentationStartTimeMs;
        private final long windowDefaultStartPositionUs;
        private final long windowDurationUs;
        private final long windowStartTimeMs;

        public DashTimeline(long j6, long j10, long j11, int i10, long j12, long j13, long j14, DashManifest dashManifest, MediaItem mediaItem, @Nullable MediaItem.LiveConfiguration liveConfiguration) {
            Assertions.g(dashManifest.dynamic == (liveConfiguration != null));
            this.presentationStartTimeMs = j6;
            this.windowStartTimeMs = j10;
            this.elapsedRealtimeEpochOffsetMs = j11;
            this.firstPeriodId = i10;
            this.offsetInFirstPeriodUs = j12;
            this.windowDurationUs = j13;
            this.windowDefaultStartPositionUs = j14;
            this.manifest = dashManifest;
            this.mediaItem = mediaItem;
            this.liveConfiguration = liveConfiguration;
        }

        @Override // androidx.media3.common.Timeline
        public Object q(int i10) {
            Assertions.c(i10, 0, m());
            return Integer.valueOf(this.firstPeriodId + i10);
        }

        @Override // androidx.media3.common.Timeline
        public int t() {
            return 1;
        }

        private long w(long j6) {
            DashSegmentIndex dashSegmentIndexK;
            long j10 = this.windowDefaultStartPositionUs;
            if (!x(this.manifest)) {
                return j10;
            }
            if (j6 > 0) {
                j10 += j6;
                if (j10 > this.windowDurationUs) {
                    return -9223372036854775807L;
                }
            }
            long j11 = this.offsetInFirstPeriodUs + j10;
            long jF = this.manifest.f(0);
            int i10 = 0;
            while (i10 < this.manifest.d() - 1 && j11 >= jF) {
                j11 -= jF;
                i10++;
                jF = this.manifest.f(i10);
            }
            Period periodC = this.manifest.c(i10);
            int iA = periodC.a(2);
            return (iA == -1 || (dashSegmentIndexK = periodC.adaptationSets.get(iA).representations.get(0).k()) == null || dashSegmentIndexK.e(jF) == 0) ? j10 : (j10 + dashSegmentIndexK.getTimeUs(dashSegmentIndexK.d(j11, jF))) - j11;
        }

        private static boolean x(DashManifest dashManifest) {
            return dashManifest.dynamic && dashManifest.minUpdatePeriodMs != -9223372036854775807L && dashManifest.durationMs == -9223372036854775807L;
        }

        @Override // androidx.media3.common.Timeline
        public int f(Object obj) {
            int iIntValue;
            if ((obj instanceof Integer) && (iIntValue = ((Integer) obj).intValue() - this.firstPeriodId) >= 0 && iIntValue < m()) {
                return iIntValue;
            }
            return -1;
        }

        @Override // androidx.media3.common.Timeline
        public int m() {
            return this.manifest.d();
        }

        @Override // androidx.media3.common.Timeline
        public Timeline.Window s(int i10, Timeline.Window window, long j6) {
            Assertions.c(i10, 0, 1);
            long jW = w(j6);
            Object obj = Timeline.Window.SINGLE_WINDOW_UID;
            MediaItem mediaItem = this.mediaItem;
            DashManifest dashManifest = this.manifest;
            return window.i(obj, mediaItem, dashManifest, this.presentationStartTimeMs, this.windowStartTimeMs, this.elapsedRealtimeEpochOffsetMs, true, x(dashManifest), this.liveConfiguration, jW, this.windowDurationUs, 0, m() - 1, this.offsetInFirstPeriodUs);
        }

        @Override // androidx.media3.common.Timeline
        public Timeline.Period k(int i10, Timeline.Period period, boolean z6) {
            String str;
            Assertions.c(i10, 0, m());
            Integer numValueOf = null;
            if (z6) {
                str = this.manifest.c(i10).id;
            } else {
                str = null;
            }
            if (z6) {
                numValueOf = Integer.valueOf(this.firstPeriodId + i10);
            }
            return period.w(str, numValueOf, 0, this.manifest.f(i10), Util.K0(this.manifest.c(i10).startMs - this.manifest.c(0).startMs) - this.offsetInFirstPeriodUs);
        }
    }

    private final class DefaultPlayerEmsgCallback implements PlayerEmsgHandler.PlayerEmsgCallback {
        private DefaultPlayerEmsgCallback() {
        }

        @Override // androidx.media3.exoplayer.dash.PlayerEmsgHandler.PlayerEmsgCallback
        public void a(long j6) {
            DashMediaSource.this.y0(j6);
        }

        @Override // androidx.media3.exoplayer.dash.PlayerEmsgHandler.PlayerEmsgCallback
        public void b() {
            DashMediaSource.this.z0();
        }
    }

    public static final class Factory implements MediaSourceFactory {
        private final DashChunkSource.Factory chunkSourceFactory;
        private CmcdConfiguration.Factory cmcdConfigurationFactory;
        private CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
        private DrmSessionManagerProvider drmSessionManagerProvider;
        private long fallbackTargetLiveOffsetMs;
        private LoadErrorHandlingPolicy loadErrorHandlingPolicy;

        @Nullable
        private final DataSource.Factory manifestDataSourceFactory;

        @Nullable
        private ParsingLoadable.Parser<? extends DashManifest> manifestParser;
        private long minLiveStartPositionUs;

        public Factory(DataSource.Factory factory) {
            this(new DefaultDashChunkSource.Factory(factory), factory);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public int[] getSupportedTypes() {
            return new int[]{0};
        }

        public Factory(DashChunkSource.Factory factory, @Nullable DataSource.Factory factory2) {
            this.chunkSourceFactory = (DashChunkSource.Factory) Assertions.e(factory);
            this.manifestDataSourceFactory = factory2;
            this.drmSessionManagerProvider = new DefaultDrmSessionManagerProvider();
            this.loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
            this.fallbackTargetLiveOffsetMs = 30000L;
            this.minLiveStartPositionUs = DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US;
            this.compositeSequenceableLoaderFactory = new DefaultCompositeSequenceableLoaderFactory();
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public DashMediaSource d(MediaItem mediaItem) {
            Assertions.e(mediaItem.localConfiguration);
            ParsingLoadable.Parser dashManifestParser = this.manifestParser;
            if (dashManifestParser == null) {
                dashManifestParser = new DashManifestParser();
            }
            List<StreamKey> list = mediaItem.localConfiguration.streamKeys;
            ParsingLoadable.Parser filteringManifestParser = !list.isEmpty() ? new FilteringManifestParser(dashManifestParser, list) : dashManifestParser;
            CmcdConfiguration.Factory factory = this.cmcdConfigurationFactory;
            return new DashMediaSource(mediaItem, null, this.manifestDataSourceFactory, filteringManifestParser, this.chunkSourceFactory, this.compositeSequenceableLoaderFactory, factory == null ? null : factory.a(mediaItem), this.drmSessionManagerProvider.a(mediaItem), this.loadErrorHandlingPolicy, this.fallbackTargetLiveOffsetMs, this.minLiveStartPositionUs);
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

    static final class Iso8601Parser implements ParsingLoadable.Parser<Long> {
        private static final Pattern TIMESTAMP_WITH_TIMEZONE_PATTERN = Pattern.compile("(.+?)(Z|((\\+|-|−)(\\d\\d)(:?(\\d\\d))?))");

        @Override // androidx.media3.exoplayer.upstream.ParsingLoadable.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long parse(Uri uri, InputStream inputStream) throws IOException {
            String line = new BufferedReader(new InputStreamReader(inputStream, e.UTF_8)).readLine();
            try {
                Matcher matcher = TIMESTAMP_WITH_TIMEZONE_PATTERN.matcher(line);
                if (!matcher.matches()) {
                    throw ParserException.c("Couldn't parse timestamp: " + line, null);
                }
                String strGroup = matcher.group(1);
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                long time = simpleDateFormat.parse(strGroup).getTime();
                if (!"Z".equals(matcher.group(2))) {
                    long j6 = org.slf4j.c.ANY_NON_NULL_MARKER.equals(matcher.group(4)) ? 1L : -1L;
                    long j10 = Long.parseLong(matcher.group(5));
                    String strGroup2 = matcher.group(7);
                    time -= j6 * (((j10 * 60) + (TextUtils.isEmpty(strGroup2) ? 0L : Long.parseLong(strGroup2))) * 60000);
                }
                return Long.valueOf(time);
            } catch (ParseException e) {
                throw ParserException.c(null, e);
            }
        }

        Iso8601Parser() {
        }
    }

    private final class ManifestCallback implements Loader.Callback<ParsingLoadable<DashManifest>> {
        private ManifestCallback() {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void H(ParsingLoadable<DashManifest> parsingLoadable, long j6, long j10, boolean z6) {
            DashMediaSource.this.A0(parsingLoadable, j6, j10);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void Y(ParsingLoadable<DashManifest> parsingLoadable, long j6, long j10) {
            DashMediaSource.this.B0(parsingLoadable, j6, j10);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Loader.LoadErrorAction w(ParsingLoadable<DashManifest> parsingLoadable, long j6, long j10, IOException iOException, int i10) {
            return DashMediaSource.this.C0(parsingLoadable, j6, j10, iOException, i10);
        }
    }

    final class ManifestLoadErrorThrower implements LoaderErrorThrower {
        ManifestLoadErrorThrower() {
        }

        private void a() throws IOException {
            if (DashMediaSource.this.manifestFatalError != null) {
                throw DashMediaSource.this.manifestFatalError;
            }
        }

        @Override // androidx.media3.exoplayer.upstream.LoaderErrorThrower
        public void maybeThrowError() throws IOException {
            DashMediaSource.this.loader.maybeThrowError();
            a();
        }
    }

    private final class UtcTimestampCallback implements Loader.Callback<ParsingLoadable<Long>> {
        private UtcTimestampCallback() {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void H(ParsingLoadable<Long> parsingLoadable, long j6, long j10, boolean z6) {
            DashMediaSource.this.A0(parsingLoadable, j6, j10);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void Y(ParsingLoadable<Long> parsingLoadable, long j6, long j10) {
            DashMediaSource.this.D0(parsingLoadable, j6, j10);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Loader.LoadErrorAction w(ParsingLoadable<Long> parsingLoadable, long j6, long j10, IOException iOException, int i10) {
            return DashMediaSource.this.E0(parsingLoadable, j6, j10, iOException);
        }
    }

    private static final class XsDateTimeParser implements ParsingLoadable.Parser<Long> {
        private XsDateTimeParser() {
        }

        @Override // androidx.media3.exoplayer.upstream.ParsingLoadable.Parser
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long parse(Uri uri, InputStream inputStream) throws IOException {
            return Long.valueOf(Util.R0(new BufferedReader(new InputStreamReader(inputStream)).readLine()));
        }
    }

    private static boolean u0(Period period) {
        for (int i10 = 0; i10 < period.adaptationSets.size(); i10++) {
            int i11 = period.adaptationSets.get(i10).type;
            if (i11 == 1 || i11 == 2) {
                return true;
            }
        }
        return false;
    }

    private static boolean v0(Period period) {
        for (int i10 = 0; i10 < period.adaptationSets.size(); i10++) {
            DashSegmentIndex dashSegmentIndexK = period.adaptationSets.get(i10).representations.get(0).k();
            if (dashSegmentIndexK == null || dashSegmentIndexK.h()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w0() {
        H0(false);
    }

    void A0(ParsingLoadable<?> parsingLoadable, long j6, long j10) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.d(), parsingLoadable.b(), j6, j10, parsingLoadable.a());
        this.loadErrorHandlingPolicy.a(parsingLoadable.loadTaskId);
        this.manifestEventDispatcher.p(loadEventInfo, parsingLoadable.type);
    }

    void D0(ParsingLoadable<Long> parsingLoadable, long j6, long j10) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.d(), parsingLoadable.b(), j6, j10, parsingLoadable.a());
        this.loadErrorHandlingPolicy.a(parsingLoadable.loadTaskId);
        this.manifestEventDispatcher.s(loadEventInfo, parsingLoadable.type);
        G0(parsingLoadable.c().longValue() - j6);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaItem j() {
        return this.mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void j0() {
        this.manifestLoadPending = false;
        this.dataSource = null;
        Loader loader = this.loader;
        if (loader != null) {
            loader.k();
            this.loader = null;
        }
        this.manifestLoadStartTimestampMs = 0L;
        this.manifestLoadEndTimestampMs = 0L;
        this.manifest = this.sideloadedManifest ? this.manifest : null;
        this.manifestUri = this.initialManifestUri;
        this.manifestFatalError = null;
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.handler = null;
        }
        this.elapsedRealtimeOffsetMs = -9223372036854775807L;
        this.staleManifestReloadAttempt = 0;
        this.expiredManifestPublishTimeUs = -9223372036854775807L;
        this.periodsById.clear();
        this.baseUrlExclusionList.i();
        this.drmSessionManager.release();
    }

    void y0(long j6) {
        long j10 = this.expiredManifestPublishTimeUs;
        if (j10 == -9223372036854775807L || j10 < j6) {
            this.expiredManifestPublishTimeUs = j6;
        }
    }

    static {
        MediaLibraryInfo.a("media3.exoplayer.dash");
    }

    private DashMediaSource(MediaItem mediaItem, @Nullable DashManifest dashManifest, @Nullable DataSource.Factory factory, @Nullable ParsingLoadable.Parser<? extends DashManifest> parser, DashChunkSource.Factory factory2, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, @Nullable CmcdConfiguration cmcdConfiguration, DrmSessionManager drmSessionManager, LoadErrorHandlingPolicy loadErrorHandlingPolicy, long j6, long j10) {
        this.mediaItem = mediaItem;
        this.liveConfiguration = mediaItem.liveConfiguration;
        this.manifestUri = ((MediaItem.LocalConfiguration) Assertions.e(mediaItem.localConfiguration)).uri;
        this.initialManifestUri = mediaItem.localConfiguration.uri;
        this.manifest = dashManifest;
        this.manifestDataSourceFactory = factory;
        this.manifestParser = parser;
        this.chunkSourceFactory = factory2;
        this.cmcdConfiguration = cmcdConfiguration;
        this.drmSessionManager = drmSessionManager;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.fallbackTargetLiveOffsetMs = j6;
        this.minLiveStartPositionUs = j10;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.baseUrlExclusionList = new BaseUrlExclusionList();
        boolean z6 = dashManifest != null;
        this.sideloadedManifest = z6;
        this.manifestEventDispatcher = c0(null);
        this.manifestUriLock = new Object();
        this.periodsById = new SparseArray<>();
        this.playerEmsgCallback = new DefaultPlayerEmsgCallback();
        this.expiredManifestPublishTimeUs = -9223372036854775807L;
        this.elapsedRealtimeOffsetMs = -9223372036854775807L;
        if (!z6) {
            this.manifestCallback = new ManifestCallback();
            this.manifestLoadErrorThrower = new ManifestLoadErrorThrower();
            this.refreshManifestRunnable = new Runnable() { // from class: androidx.media3.exoplayer.dash.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f492a.N0();
                }
            };
            this.simulateManifestRefreshRunnable = new Runnable() { // from class: androidx.media3.exoplayer.dash.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f493a.w0();
                }
            };
            return;
        }
        Assertions.g(true ^ dashManifest.dynamic);
        this.manifestCallback = null;
        this.refreshManifestRunnable = null;
        this.simulateManifestRefreshRunnable = null;
        this.manifestLoadErrorThrower = new LoaderErrorThrower.Placeholder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F0(IOException iOException) {
        Log.d("DashMediaSource", "Failed to resolve time offset.", iOException);
        H0(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G0(long j6) {
        this.elapsedRealtimeOffsetMs = j6;
        H0(true);
    }

    private void H0(boolean z6) {
        long j6;
        long j10;
        for (int i10 = 0; i10 < this.periodsById.size(); i10++) {
            int iKeyAt = this.periodsById.keyAt(i10);
            if (iKeyAt >= this.firstPeriodId) {
                this.periodsById.valueAt(i10).B(this.manifest, iKeyAt - this.firstPeriodId);
            }
        }
        Period periodC = this.manifest.c(0);
        int iD = this.manifest.d() - 1;
        Period periodC2 = this.manifest.c(iD);
        long jF = this.manifest.f(iD);
        long jK0 = Util.K0(Util.e0(this.elapsedRealtimeOffsetMs));
        long jR0 = r0(periodC, this.manifest.f(0), jK0);
        long jQ0 = q0(periodC2, jF, jK0);
        boolean z10 = this.manifest.dynamic && !v0(periodC2);
        if (z10) {
            long j11 = this.manifest.timeShiftBufferDepthMs;
            if (j11 != -9223372036854775807L) {
                jR0 = Math.max(jR0, jQ0 - Util.K0(j11));
            }
        }
        long j12 = jQ0 - jR0;
        DashManifest dashManifest = this.manifest;
        if (dashManifest.dynamic) {
            Assertions.g(dashManifest.availabilityStartTimeMs != -9223372036854775807L);
            long jK1 = (jK0 - Util.K0(this.manifest.availabilityStartTimeMs)) - jR0;
            O0(jK1, j12);
            long jQ1 = this.manifest.availabilityStartTimeMs + Util.q1(jR0);
            long jK2 = jK1 - Util.K0(this.liveConfiguration.targetOffsetMs);
            long jMin = Math.min(this.minLiveStartPositionUs, j12 / 2);
            j6 = jQ1;
            j10 = jK2 < jMin ? jMin : jK2;
        } else {
            j6 = -9223372036854775807L;
            j10 = 0;
        }
        long jK3 = jR0 - Util.K0(periodC.startMs);
        DashManifest dashManifest2 = this.manifest;
        i0(new DashTimeline(dashManifest2.availabilityStartTimeMs, j6, this.elapsedRealtimeOffsetMs, this.firstPeriodId, jK3, j12, j10, dashManifest2, this.mediaItem, dashManifest2.dynamic ? this.liveConfiguration : null));
        if (this.sideloadedManifest) {
            return;
        }
        this.handler.removeCallbacks(this.simulateManifestRefreshRunnable);
        if (z10) {
            this.handler.postDelayed(this.simulateManifestRefreshRunnable, s0(this.manifest, Util.e0(this.elapsedRealtimeOffsetMs)));
        }
        if (this.manifestLoadPending) {
            N0();
            return;
        }
        if (z6) {
            DashManifest dashManifest3 = this.manifest;
            if (dashManifest3.dynamic) {
                long j13 = dashManifest3.minUpdatePeriodMs;
                if (j13 != -9223372036854775807L) {
                    if (j13 == 0) {
                        j13 = 5000;
                    }
                    L0(Math.max(0L, (this.manifestLoadStartTimestampMs + j13) - SystemClock.elapsedRealtime()));
                }
            }
        }
    }

    private void I0(UtcTimingElement utcTimingElement) {
        String str = utcTimingElement.schemeIdUri;
        if (Util.c(str, "urn:mpeg:dash:utc:direct:2014") || Util.c(str, "urn:mpeg:dash:utc:direct:2012")) {
            J0(utcTimingElement);
            return;
        }
        if (Util.c(str, "urn:mpeg:dash:utc:http-iso:2014") || Util.c(str, "urn:mpeg:dash:utc:http-iso:2012")) {
            K0(utcTimingElement, new Iso8601Parser());
            return;
        }
        if (Util.c(str, "urn:mpeg:dash:utc:http-xsdate:2014") || Util.c(str, "urn:mpeg:dash:utc:http-xsdate:2012")) {
            K0(utcTimingElement, new XsDateTimeParser());
        } else if (Util.c(str, "urn:mpeg:dash:utc:ntp:2014") || Util.c(str, "urn:mpeg:dash:utc:ntp:2012")) {
            x0();
        } else {
            F0(new IOException("Unsupported UTC timing scheme"));
        }
    }

    private void J0(UtcTimingElement utcTimingElement) {
        try {
            G0(Util.R0(utcTimingElement.value) - this.manifestLoadEndTimestampMs);
        } catch (ParserException e) {
            F0(e);
        }
    }

    private void K0(UtcTimingElement utcTimingElement, ParsingLoadable.Parser<Long> parser) {
        M0(new ParsingLoadable(this.dataSource, Uri.parse(utcTimingElement.value), 5, parser), new UtcTimestampCallback(), 1);
    }

    private void L0(long j6) {
        this.handler.postDelayed(this.refreshManifestRunnable, j6);
    }

    private <T> void M0(ParsingLoadable<T> parsingLoadable, Loader.Callback<ParsingLoadable<T>> callback, int i10) {
        this.manifestEventDispatcher.y(new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, this.loader.m(parsingLoadable, callback, i10)), parsingLoadable.type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N0() {
        Uri uri;
        this.handler.removeCallbacks(this.refreshManifestRunnable);
        if (this.loader.h()) {
            return;
        }
        if (this.loader.i()) {
            this.manifestLoadPending = true;
            return;
        }
        synchronized (this.manifestUriLock) {
            uri = this.manifestUri;
        }
        this.manifestLoadPending = false;
        M0(new ParsingLoadable(this.dataSource, uri, 4, this.manifestParser), this.manifestCallback, this.loadErrorHandlingPolicy.b(4));
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0039  */
    /* JADX WARN: Code duplicated, block: B:19:0x0046  */
    /* JADX WARN: Code duplicated, block: B:22:0x0056  */
    /* JADX WARN: Code duplicated, block: B:23:0x005b  */
    /* JADX WARN: Code duplicated, block: B:25:0x0061  */
    /* JADX WARN: Code duplicated, block: B:27:0x0067  */
    /* JADX WARN: Code duplicated, block: B:30:0x006f  */
    /* JADX WARN: Code duplicated, block: B:34:0x0079  */
    /* JADX WARN: Code duplicated, block: B:36:0x007f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0085  */
    /* JADX WARN: Code duplicated, block: B:39:0x0087  */
    /* JADX WARN: Code duplicated, block: B:42:0x008e  */
    /* JADX WARN: Code duplicated, block: B:45:0x0094  */
    /* JADX WARN: Code duplicated, block: B:48:0x0099  */
    /* JADX WARN: Code duplicated, block: B:52:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:65:0x00dc  */
    private void O0(long j6, long j10) {
        long j11;
        long jMin;
        long jQ1;
        long j12;
        long jR;
        long j13;
        ServiceDescriptionElement serviceDescriptionElement;
        long j14;
        long jR2;
        float f;
        float f6;
        ServiceDescriptionElement serviceDescriptionElement2;
        ServiceDescriptionElement serviceDescriptionElement3;
        ServiceDescriptionElement serviceDescriptionElement4;
        DashManifest dashManifest;
        ServiceDescriptionElement serviceDescriptionElement5;
        long j15;
        long jQ2 = Util.q1(j6);
        long j16 = this.mediaItem.liveConfiguration.maxOffsetMs;
        if (j16 == -9223372036854775807L) {
            ServiceDescriptionElement serviceDescriptionElement6 = this.manifest.serviceDescription;
            if (serviceDescriptionElement6 != null) {
                long j17 = serviceDescriptionElement6.maxOffsetMs;
                if (j17 != -9223372036854775807L) {
                    jMin = Math.min(jQ2, j17);
                }
                jQ1 = Util.q1(j6 - j10);
                if (jQ1 < 0 && j11 > 0) {
                    jQ1 = 0;
                }
                j12 = this.manifest.minBufferTimeMs;
                if (j12 != -9223372036854775807L) {
                    jQ1 = Math.min(jQ1 + j12, jQ2);
                }
                jR = jQ1;
                j13 = this.mediaItem.liveConfiguration.minOffsetMs;
                if (j13 != -9223372036854775807L) {
                    jR = Util.r(j13, jR, jQ2);
                } else {
                    serviceDescriptionElement = this.manifest.serviceDescription;
                    if (serviceDescriptionElement != null) {
                        j14 = serviceDescriptionElement.minOffsetMs;
                        if (j14 != -9223372036854775807L) {
                            jR = Util.r(j14, jR, jQ2);
                        }
                    }
                }
                if (jR > j11) {
                    j11 = jR;
                }
                jR2 = this.liveConfiguration.targetOffsetMs;
                if (jR2 == -9223372036854775807L) {
                    dashManifest = this.manifest;
                    serviceDescriptionElement5 = dashManifest.serviceDescription;
                    if (serviceDescriptionElement5 != null) {
                        j15 = serviceDescriptionElement5.targetOffsetMs;
                        if (j15 != -9223372036854775807L) {
                            jR2 = j15;
                        } else {
                            jR2 = dashManifest.suggestedPresentationDelayMs;
                            if (jR2 == -9223372036854775807L) {
                                jR2 = this.fallbackTargetLiveOffsetMs;
                            }
                        }
                    } else {
                        jR2 = dashManifest.suggestedPresentationDelayMs;
                        if (jR2 == -9223372036854775807L) {
                            jR2 = this.fallbackTargetLiveOffsetMs;
                        }
                    }
                }
                if (jR2 < jR) {
                    jR2 = jR;
                }
                if (jR2 > j11) {
                    jR2 = Util.r(Util.q1(j6 - Math.min(this.minLiveStartPositionUs, j10 / 2)), jR, j11);
                }
                MediaItem.LiveConfiguration liveConfiguration = this.mediaItem.liveConfiguration;
                f = liveConfiguration.minPlaybackSpeed;
                if (f == -3.4028235E38f) {
                    serviceDescriptionElement4 = this.manifest.serviceDescription;
                    if (serviceDescriptionElement4 != null) {
                        f = serviceDescriptionElement4.minPlaybackSpeed;
                    } else {
                        f = -3.4028235E38f;
                    }
                }
                f6 = liveConfiguration.maxPlaybackSpeed;
                if (f6 == -3.4028235E38f) {
                    serviceDescriptionElement3 = this.manifest.serviceDescription;
                    if (serviceDescriptionElement3 != null) {
                        f6 = serviceDescriptionElement3.maxPlaybackSpeed;
                    } else {
                        f6 = -3.4028235E38f;
                    }
                }
                if (f == -3.4028235E38f && f6 == -3.4028235E38f && ((serviceDescriptionElement2 = this.manifest.serviceDescription) == null || serviceDescriptionElement2.targetOffsetMs == -9223372036854775807L)) {
                    f = 1.0f;
                    f6 = 1.0f;
                }
                this.liveConfiguration = new MediaItem.LiveConfiguration.Builder().k(jR2).i(jR).g(j11).j(f).h(f6).f();
            }
            j11 = jQ2;
            jQ1 = Util.q1(j6 - j10);
            if (jQ1 < 0) {
                jQ1 = 0;
            }
            j12 = this.manifest.minBufferTimeMs;
            if (j12 != -9223372036854775807L) {
                jQ1 = Math.min(jQ1 + j12, jQ2);
            }
            jR = jQ1;
            j13 = this.mediaItem.liveConfiguration.minOffsetMs;
            if (j13 != -9223372036854775807L) {
                jR = Util.r(j13, jR, jQ2);
            } else {
                serviceDescriptionElement = this.manifest.serviceDescription;
                if (serviceDescriptionElement != null) {
                    j14 = serviceDescriptionElement.minOffsetMs;
                    if (j14 != -9223372036854775807L) {
                        jR = Util.r(j14, jR, jQ2);
                    }
                }
            }
            if (jR > j11) {
                j11 = jR;
            }
            jR2 = this.liveConfiguration.targetOffsetMs;
            if (jR2 == -9223372036854775807L) {
                dashManifest = this.manifest;
                serviceDescriptionElement5 = dashManifest.serviceDescription;
                if (serviceDescriptionElement5 != null) {
                    j15 = serviceDescriptionElement5.targetOffsetMs;
                    if (j15 != -9223372036854775807L) {
                        jR2 = j15;
                    } else {
                        jR2 = dashManifest.suggestedPresentationDelayMs;
                        if (jR2 == -9223372036854775807L) {
                            jR2 = this.fallbackTargetLiveOffsetMs;
                        }
                    }
                } else {
                    jR2 = dashManifest.suggestedPresentationDelayMs;
                    if (jR2 == -9223372036854775807L) {
                        jR2 = this.fallbackTargetLiveOffsetMs;
                    }
                }
            }
            if (jR2 < jR) {
                jR2 = jR;
            }
            if (jR2 > j11) {
                jR2 = Util.r(Util.q1(j6 - Math.min(this.minLiveStartPositionUs, j10 / 2)), jR, j11);
            }
            MediaItem.LiveConfiguration liveConfiguration2 = this.mediaItem.liveConfiguration;
            f = liveConfiguration2.minPlaybackSpeed;
            if (f == -3.4028235E38f) {
                serviceDescriptionElement4 = this.manifest.serviceDescription;
                if (serviceDescriptionElement4 != null) {
                    f = serviceDescriptionElement4.minPlaybackSpeed;
                } else {
                    f = -3.4028235E38f;
                }
            }
            f6 = liveConfiguration2.maxPlaybackSpeed;
            if (f6 == -3.4028235E38f) {
                serviceDescriptionElement3 = this.manifest.serviceDescription;
                if (serviceDescriptionElement3 != null) {
                    f6 = serviceDescriptionElement3.maxPlaybackSpeed;
                } else {
                    f6 = -3.4028235E38f;
                }
            }
            if (f == -3.4028235E38f) {
                f = 1.0f;
                f6 = 1.0f;
            }
            this.liveConfiguration = new MediaItem.LiveConfiguration.Builder().k(jR2).i(jR).g(j11).j(f).h(f6).f();
        }
        jMin = Math.min(jQ2, j16);
        j11 = jMin;
        jQ1 = Util.q1(j6 - j10);
        if (jQ1 < 0) {
            jQ1 = 0;
        }
        j12 = this.manifest.minBufferTimeMs;
        if (j12 != -9223372036854775807L) {
            jQ1 = Math.min(jQ1 + j12, jQ2);
        }
        jR = jQ1;
        j13 = this.mediaItem.liveConfiguration.minOffsetMs;
        if (j13 != -9223372036854775807L) {
            jR = Util.r(j13, jR, jQ2);
        } else {
            serviceDescriptionElement = this.manifest.serviceDescription;
            if (serviceDescriptionElement != null) {
                j14 = serviceDescriptionElement.minOffsetMs;
                if (j14 != -9223372036854775807L) {
                    jR = Util.r(j14, jR, jQ2);
                }
            }
        }
        if (jR > j11) {
            j11 = jR;
        }
        jR2 = this.liveConfiguration.targetOffsetMs;
        if (jR2 == -9223372036854775807L) {
            dashManifest = this.manifest;
            serviceDescriptionElement5 = dashManifest.serviceDescription;
            if (serviceDescriptionElement5 != null) {
                j15 = serviceDescriptionElement5.targetOffsetMs;
                if (j15 != -9223372036854775807L) {
                    jR2 = j15;
                } else {
                    jR2 = dashManifest.suggestedPresentationDelayMs;
                    if (jR2 == -9223372036854775807L) {
                        jR2 = this.fallbackTargetLiveOffsetMs;
                    }
                }
            } else {
                jR2 = dashManifest.suggestedPresentationDelayMs;
                if (jR2 == -9223372036854775807L) {
                    jR2 = this.fallbackTargetLiveOffsetMs;
                }
            }
        }
        if (jR2 < jR) {
            jR2 = jR;
        }
        if (jR2 > j11) {
            jR2 = Util.r(Util.q1(j6 - Math.min(this.minLiveStartPositionUs, j10 / 2)), jR, j11);
        }
        MediaItem.LiveConfiguration liveConfiguration3 = this.mediaItem.liveConfiguration;
        f = liveConfiguration3.minPlaybackSpeed;
        if (f == -3.4028235E38f) {
            serviceDescriptionElement4 = this.manifest.serviceDescription;
            if (serviceDescriptionElement4 != null) {
                f = serviceDescriptionElement4.minPlaybackSpeed;
            } else {
                f = -3.4028235E38f;
            }
        }
        f6 = liveConfiguration3.maxPlaybackSpeed;
        if (f6 == -3.4028235E38f) {
            serviceDescriptionElement3 = this.manifest.serviceDescription;
            if (serviceDescriptionElement3 != null) {
                f6 = serviceDescriptionElement3.maxPlaybackSpeed;
            } else {
                f6 = -3.4028235E38f;
            }
        }
        if (f == -3.4028235E38f) {
            f = 1.0f;
            f6 = 1.0f;
        }
        this.liveConfiguration = new MediaItem.LiveConfiguration.Builder().k(jR2).i(jR).g(j11).j(f).h(f6).f();
    }

    private static long q0(Period period, long j6, long j10) {
        long jK0 = Util.K0(period.startMs);
        boolean zU0 = u0(period);
        long jMin = Long.MAX_VALUE;
        for (int i10 = 0; i10 < period.adaptationSets.size(); i10++) {
            AdaptationSet adaptationSet = period.adaptationSets.get(i10);
            List<Representation> list = adaptationSet.representations;
            int i11 = adaptationSet.type;
            boolean z6 = (i11 == 1 || i11 == 2) ? false : true;
            if ((!zU0 || !z6) && !list.isEmpty()) {
                DashSegmentIndex dashSegmentIndexK = list.get(0).k();
                if (dashSegmentIndexK == null) {
                    return jK0 + j6;
                }
                long jI = dashSegmentIndexK.i(j6, j10);
                if (jI == 0) {
                    return jK0;
                }
                long jB = (dashSegmentIndexK.b(j6, j10) + jI) - 1;
                jMin = Math.min(jMin, dashSegmentIndexK.a(jB, j6) + dashSegmentIndexK.getTimeUs(jB) + jK0);
            }
        }
        return jMin;
    }

    private static long r0(Period period, long j6, long j10) {
        long jK0 = Util.K0(period.startMs);
        boolean zU0 = u0(period);
        long jMax = jK0;
        for (int i10 = 0; i10 < period.adaptationSets.size(); i10++) {
            AdaptationSet adaptationSet = period.adaptationSets.get(i10);
            List<Representation> list = adaptationSet.representations;
            int i11 = adaptationSet.type;
            boolean z6 = (i11 == 1 || i11 == 2) ? false : true;
            if ((!zU0 || !z6) && !list.isEmpty()) {
                DashSegmentIndex dashSegmentIndexK = list.get(0).k();
                if (dashSegmentIndexK == null) {
                    return jK0;
                }
                if (dashSegmentIndexK.i(j6, j10) == 0) {
                    return jK0;
                }
                jMax = Math.max(jMax, dashSegmentIndexK.getTimeUs(dashSegmentIndexK.b(j6, j10)) + jK0);
            }
        }
        return jMax;
    }

    private static long s0(DashManifest dashManifest, long j6) {
        DashSegmentIndex dashSegmentIndexK;
        int iD = dashManifest.d() - 1;
        Period periodC = dashManifest.c(iD);
        long jK0 = Util.K0(periodC.startMs);
        long jF = dashManifest.f(iD);
        long jK1 = Util.K0(j6);
        long jK2 = Util.K0(dashManifest.availabilityStartTimeMs);
        long jK3 = Util.K0(5000L);
        for (int i10 = 0; i10 < periodC.adaptationSets.size(); i10++) {
            List<Representation> list = periodC.adaptationSets.get(i10).representations;
            if (!list.isEmpty() && (dashSegmentIndexK = list.get(0).k()) != null) {
                long jC = ((jK2 + jK0) + dashSegmentIndexK.c(jF, jK1)) - jK1;
                if (jC < jK3 - 100000 || (jC > jK3 && jC < jK3 + 100000)) {
                    jK3 = jC;
                }
            }
        }
        return com.google.common.math.c.a(jK3, 1000L, RoundingMode.CEILING);
    }

    private long t0() {
        return Math.min((this.staleManifestReloadAttempt - 1) * 1000, 5000);
    }

    private void x0() {
        SntpClient.j(this.loader, new SntpClient.InitializationCallback() { // from class: androidx.media3.exoplayer.dash.DashMediaSource.1
            @Override // androidx.media3.exoplayer.util.SntpClient.InitializationCallback
            public void a() {
                DashMediaSource.this.G0(SntpClient.h());
            }

            @Override // androidx.media3.exoplayer.util.SntpClient.InitializationCallback
            public void b(IOException iOException) {
                DashMediaSource.this.F0(iOException);
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void A(MediaPeriod mediaPeriod) {
        DashMediaPeriod dashMediaPeriod = (DashMediaPeriod) mediaPeriod;
        dashMediaPeriod.x();
        this.periodsById.remove(dashMediaPeriod.id);
    }

    void B0(ParsingLoadable<DashManifest> parsingLoadable, long j6, long j10) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.d(), parsingLoadable.b(), j6, j10, parsingLoadable.a());
        this.loadErrorHandlingPolicy.a(parsingLoadable.loadTaskId);
        this.manifestEventDispatcher.s(loadEventInfo, parsingLoadable.type);
        DashManifest dashManifestC = parsingLoadable.c();
        DashManifest dashManifest = this.manifest;
        int iD = dashManifest == null ? 0 : dashManifest.d();
        long j11 = dashManifestC.c(0).startMs;
        int i10 = 0;
        while (i10 < iD && this.manifest.c(i10).startMs < j11) {
            i10++;
        }
        if (dashManifestC.dynamic) {
            if (iD - i10 > dashManifestC.d()) {
                Log.i("DashMediaSource", "Loaded out of sync manifest");
            } else {
                long j12 = this.expiredManifestPublishTimeUs;
                if (j12 == -9223372036854775807L || dashManifestC.publishTimeMs * 1000 > j12) {
                    this.staleManifestReloadAttempt = 0;
                } else {
                    Log.i("DashMediaSource", "Loaded stale dynamic manifest: " + dashManifestC.publishTimeMs + ", " + this.expiredManifestPublishTimeUs);
                }
            }
            int i11 = this.staleManifestReloadAttempt;
            this.staleManifestReloadAttempt = i11 + 1;
            if (i11 < this.loadErrorHandlingPolicy.b(parsingLoadable.type)) {
                L0(t0());
                return;
            } else {
                this.manifestFatalError = new DashManifestStaleException();
                return;
            }
        }
        this.manifest = dashManifestC;
        this.manifestLoadPending = dashManifestC.dynamic & this.manifestLoadPending;
        this.manifestLoadStartTimestampMs = j6 - j10;
        this.manifestLoadEndTimestampMs = j6;
        synchronized (this.manifestUriLock) {
            try {
                if (parsingLoadable.dataSpec.uri == this.manifestUri) {
                    Uri uriD = this.manifest.location;
                    if (uriD == null) {
                        uriD = parsingLoadable.d();
                    }
                    this.manifestUri = uriD;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (iD != 0) {
            this.firstPeriodId += i10;
            H0(true);
            return;
        }
        DashManifest dashManifest2 = this.manifest;
        if (!dashManifest2.dynamic) {
            H0(true);
            return;
        }
        UtcTimingElement utcTimingElement = dashManifest2.utcTiming;
        if (utcTimingElement != null) {
            I0(utcTimingElement);
        } else {
            x0();
        }
    }

    Loader.LoadErrorAction C0(ParsingLoadable<DashManifest> parsingLoadable, long j6, long j10, IOException iOException, int i10) {
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

    Loader.LoadErrorAction E0(ParsingLoadable<Long> parsingLoadable, long j6, long j10, IOException iOException) {
        this.manifestEventDispatcher.w(new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.d(), parsingLoadable.b(), j6, j10, parsingLoadable.a()), parsingLoadable.type, iOException, true);
        this.loadErrorHandlingPolicy.a(parsingLoadable.loadTaskId);
        F0(iOException);
        return Loader.DONT_RETRY;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod M(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
        int iIntValue = ((Integer) mediaPeriodId.periodUid).intValue() - this.firstPeriodId;
        MediaSourceEventListener.EventDispatcher eventDispatcherC0 = c0(mediaPeriodId);
        DashMediaPeriod dashMediaPeriod = new DashMediaPeriod(iIntValue + this.firstPeriodId, this.manifest, this.baseUrlExclusionList, iIntValue, this.chunkSourceFactory, this.mediaTransferListener, this.cmcdConfiguration, this.drmSessionManager, a0(mediaPeriodId), this.loadErrorHandlingPolicy, eventDispatcherC0, this.elapsedRealtimeOffsetMs, this.manifestLoadErrorThrower, allocator, this.compositeSequenceableLoaderFactory, this.playerEmsgCallback, f0());
        this.periodsById.put(dashMediaPeriod.id, dashMediaPeriod);
        return dashMediaPeriod;
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void h0(@Nullable TransferListener transferListener) {
        this.mediaTransferListener = transferListener;
        this.drmSessionManager.b(Looper.myLooper(), f0());
        this.drmSessionManager.prepare();
        if (this.sideloadedManifest) {
            H0(false);
            return;
        }
        this.dataSource = this.manifestDataSourceFactory.createDataSource();
        this.loader = new Loader("DashMediaSource");
        this.handler = Util.w();
        N0();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        this.manifestLoadErrorThrower.maybeThrowError();
    }

    void z0() {
        this.handler.removeCallbacks(this.simulateManifestRefreshRunnable);
        N0();
    }
}
