package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.exoplayer.hls.HlsDataSourceFactory;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import com.google.common.collect.h0;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
@UnstableApi
public final class DefaultHlsPlaylistTracker implements HlsPlaylistTracker, Loader.Callback<ParsingLoadable<HlsPlaylist>> {
    public static final double DEFAULT_PLAYLIST_STUCK_TARGET_DURATION_COEFFICIENT = 3.5d;
    public static final HlsPlaylistTracker.Factory FACTORY = new HlsPlaylistTracker.Factory() { // from class: androidx.media3.exoplayer.hls.playlist.a
        @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.Factory
        public final HlsPlaylistTracker a(HlsDataSourceFactory hlsDataSourceFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistParserFactory hlsPlaylistParserFactory) {
            return new DefaultHlsPlaylistTracker(hlsDataSourceFactory, loadErrorHandlingPolicy, hlsPlaylistParserFactory);
        }
    };
    private final HlsDataSourceFactory dataSourceFactory;

    @Nullable
    private MediaSourceEventListener.EventDispatcher eventDispatcher;

    @Nullable
    private Loader initialPlaylistLoader;
    private long initialStartTimeUs;
    private boolean isLive;
    private final CopyOnWriteArrayList<HlsPlaylistTracker.PlaylistEventListener> listeners;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;

    @Nullable
    private HlsMultivariantPlaylist multivariantPlaylist;
    private final HashMap<Uri, MediaPlaylistBundle> playlistBundles;
    private final HlsPlaylistParserFactory playlistParserFactory;

    @Nullable
    private Handler playlistRefreshHandler;
    private final double playlistStuckTargetDurationCoefficient;

    @Nullable
    private HlsMediaPlaylist primaryMediaPlaylistSnapshot;

    @Nullable
    private Uri primaryMediaPlaylistUrl;

    @Nullable
    private HlsPlaylistTracker.PrimaryPlaylistListener primaryPlaylistListener;

    private class FirstPrimaryMediaPlaylistListener implements HlsPlaylistTracker.PlaylistEventListener {
        private FirstPrimaryMediaPlaylistListener() {
        }

        @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
        public void b() {
            DefaultHlsPlaylistTracker.this.listeners.remove(this);
        }

        @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
        public boolean d(Uri uri, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z6) {
            MediaPlaylistBundle mediaPlaylistBundle;
            if (DefaultHlsPlaylistTracker.this.primaryMediaPlaylistSnapshot == null) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                List<HlsMultivariantPlaylist.Variant> list = ((HlsMultivariantPlaylist) Util.j(DefaultHlsPlaylistTracker.this.multivariantPlaylist)).variants;
                int i10 = 0;
                for (int i11 = 0; i11 < list.size(); i11++) {
                    MediaPlaylistBundle mediaPlaylistBundle2 = (MediaPlaylistBundle) DefaultHlsPlaylistTracker.this.playlistBundles.get(list.get(i11).url);
                    if (mediaPlaylistBundle2 != null && jElapsedRealtime < mediaPlaylistBundle2.excludeUntilMs) {
                        i10++;
                    }
                }
                LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionC = DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.c(new LoadErrorHandlingPolicy.FallbackOptions(1, 0, DefaultHlsPlaylistTracker.this.multivariantPlaylist.variants.size(), i10), loadErrorInfo);
                if (fallbackSelectionC != null && fallbackSelectionC.type == 2 && (mediaPlaylistBundle = (MediaPlaylistBundle) DefaultHlsPlaylistTracker.this.playlistBundles.get(uri)) != null) {
                    mediaPlaylistBundle.h(fallbackSelectionC.exclusionDurationMs);
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class MediaPlaylistBundle implements Loader.Callback<ParsingLoadable<HlsPlaylist>> {
        private static final String BLOCK_MSN_PARAM = "_HLS_msn";
        private static final String BLOCK_PART_PARAM = "_HLS_part";
        private static final String SKIP_PARAM = "_HLS_skip";
        private long earliestNextLoadTimeMs;
        private long excludeUntilMs;
        private long lastSnapshotChangeMs;
        private long lastSnapshotLoadMs;
        private boolean loadPending;
        private final DataSource mediaPlaylistDataSource;
        private final Loader mediaPlaylistLoader = new Loader("DefaultHlsPlaylistTracker:MediaPlaylist");

        @Nullable
        private IOException playlistError;

        @Nullable
        private HlsMediaPlaylist playlistSnapshot;
        private final Uri playlistUrl;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void l(Uri uri) {
            this.loadPending = false;
            n(uri);
        }

        @Nullable
        public HlsMediaPlaylist j() {
            return this.playlistSnapshot;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public void H(ParsingLoadable<HlsPlaylist> parsingLoadable, long j6, long j10, boolean z6) {
            LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.d(), parsingLoadable.b(), j6, j10, parsingLoadable.a());
            DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.a(parsingLoadable.loadTaskId);
            DefaultHlsPlaylistTracker.this.eventDispatcher.p(loadEventInfo, 4);
        }

        public MediaPlaylistBundle(Uri uri) {
            this.playlistUrl = uri;
            this.mediaPlaylistDataSource = DefaultHlsPlaylistTracker.this.dataSourceFactory.a(4);
        }

        private Uri i() {
            HlsMediaPlaylist hlsMediaPlaylist = this.playlistSnapshot;
            if (hlsMediaPlaylist != null) {
                HlsMediaPlaylist.ServerControl serverControl = hlsMediaPlaylist.serverControl;
                if (serverControl.skipUntilUs != -9223372036854775807L || serverControl.canBlockReload) {
                    Uri.Builder builderBuildUpon = this.playlistUrl.buildUpon();
                    HlsMediaPlaylist hlsMediaPlaylist2 = this.playlistSnapshot;
                    if (hlsMediaPlaylist2.serverControl.canBlockReload) {
                        builderBuildUpon.appendQueryParameter(BLOCK_MSN_PARAM, String.valueOf(hlsMediaPlaylist2.mediaSequence + ((long) hlsMediaPlaylist2.segments.size())));
                        HlsMediaPlaylist hlsMediaPlaylist3 = this.playlistSnapshot;
                        if (hlsMediaPlaylist3.partTargetDurationUs != -9223372036854775807L) {
                            List<HlsMediaPlaylist.Part> list = hlsMediaPlaylist3.trailingParts;
                            int size = list.size();
                            if (!list.isEmpty() && ((HlsMediaPlaylist.Part) h0.e(list)).isPreload) {
                                size--;
                            }
                            builderBuildUpon.appendQueryParameter(BLOCK_PART_PARAM, String.valueOf(size));
                        }
                    }
                    HlsMediaPlaylist.ServerControl serverControl2 = this.playlistSnapshot.serverControl;
                    if (serverControl2.skipUntilUs != -9223372036854775807L) {
                        builderBuildUpon.appendQueryParameter(SKIP_PARAM, serverControl2.canSkipDateRanges ? "v2" : "YES");
                    }
                    return builderBuildUpon.build();
                }
            }
            return this.playlistUrl;
        }

        private void n(Uri uri) {
            ParsingLoadable parsingLoadable = new ParsingLoadable(this.mediaPlaylistDataSource, uri, 4, DefaultHlsPlaylistTracker.this.playlistParserFactory.b(DefaultHlsPlaylistTracker.this.multivariantPlaylist, this.playlistSnapshot));
            DefaultHlsPlaylistTracker.this.eventDispatcher.y(new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, this.mediaPlaylistLoader.m(parsingLoadable, this, DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.b(parsingLoadable.type))), parsingLoadable.type);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void o(final Uri uri) {
            this.excludeUntilMs = 0L;
            if (this.loadPending || this.mediaPlaylistLoader.i() || this.mediaPlaylistLoader.h()) {
                return;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime >= this.earliestNextLoadTimeMs) {
                n(uri);
            } else {
                this.loadPending = true;
                DefaultHlsPlaylistTracker.this.playlistRefreshHandler.postDelayed(new Runnable() { // from class: androidx.media3.exoplayer.hls.playlist.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f531a.l(uri);
                    }
                }, this.earliestNextLoadTimeMs - jElapsedRealtime);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t(HlsMediaPlaylist hlsMediaPlaylist, LoadEventInfo loadEventInfo) {
            boolean z6;
            long j6;
            HlsMediaPlaylist hlsMediaPlaylist2 = this.playlistSnapshot;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.lastSnapshotLoadMs = jElapsedRealtime;
            HlsMediaPlaylist hlsMediaPlaylistE = DefaultHlsPlaylistTracker.this.E(hlsMediaPlaylist2, hlsMediaPlaylist);
            this.playlistSnapshot = hlsMediaPlaylistE;
            IOException playlistStuckException = null;
            if (hlsMediaPlaylistE != hlsMediaPlaylist2) {
                this.playlistError = null;
                this.lastSnapshotChangeMs = jElapsedRealtime;
                DefaultHlsPlaylistTracker.this.Q(this.playlistUrl, hlsMediaPlaylistE);
            } else if (!hlsMediaPlaylistE.hasEndTag) {
                long size = hlsMediaPlaylist.mediaSequence + ((long) hlsMediaPlaylist.segments.size());
                HlsMediaPlaylist hlsMediaPlaylist3 = this.playlistSnapshot;
                if (size < hlsMediaPlaylist3.mediaSequence) {
                    playlistStuckException = new HlsPlaylistTracker.PlaylistResetException(this.playlistUrl);
                    z6 = true;
                } else {
                    z6 = false;
                    if (jElapsedRealtime - this.lastSnapshotChangeMs > Util.q1(hlsMediaPlaylist3.targetDurationUs) * DefaultHlsPlaylistTracker.this.playlistStuckTargetDurationCoefficient) {
                        playlistStuckException = new HlsPlaylistTracker.PlaylistStuckException(this.playlistUrl);
                    }
                }
                if (playlistStuckException != null) {
                    this.playlistError = playlistStuckException;
                    DefaultHlsPlaylistTracker.this.M(this.playlistUrl, new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(4), playlistStuckException, 1), z6);
                }
            }
            HlsMediaPlaylist hlsMediaPlaylist4 = this.playlistSnapshot;
            if (hlsMediaPlaylist4.serverControl.canBlockReload) {
                j6 = 0;
            } else {
                j6 = hlsMediaPlaylist4 != hlsMediaPlaylist2 ? hlsMediaPlaylist4.targetDurationUs : hlsMediaPlaylist4.targetDurationUs / 2;
            }
            this.earliestNextLoadTimeMs = jElapsedRealtime + Util.q1(j6);
            if ((this.playlistSnapshot.partTargetDurationUs != -9223372036854775807L || this.playlistUrl.equals(DefaultHlsPlaylistTracker.this.primaryMediaPlaylistUrl)) && !this.playlistSnapshot.hasEndTag) {
                o(i());
            }
        }

        public boolean k() {
            int i10;
            if (this.playlistSnapshot == null) {
                return false;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long jMax = Math.max(30000L, Util.q1(this.playlistSnapshot.durationUs));
            HlsMediaPlaylist hlsMediaPlaylist = this.playlistSnapshot;
            return hlsMediaPlaylist.hasEndTag || (i10 = hlsMediaPlaylist.playlistType) == 2 || i10 == 1 || this.lastSnapshotLoadMs + jMax > jElapsedRealtime;
        }

        public void m() {
            o(this.playlistUrl);
        }

        public void p() throws IOException {
            this.mediaPlaylistLoader.maybeThrowError();
            IOException iOException = this.playlistError;
            if (iOException != null) {
                throw iOException;
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void Y(ParsingLoadable<HlsPlaylist> parsingLoadable, long j6, long j10) {
            HlsPlaylist hlsPlaylistC = parsingLoadable.c();
            LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.d(), parsingLoadable.b(), j6, j10, parsingLoadable.a());
            if (hlsPlaylistC instanceof HlsMediaPlaylist) {
                t((HlsMediaPlaylist) hlsPlaylistC, loadEventInfo);
                DefaultHlsPlaylistTracker.this.eventDispatcher.s(loadEventInfo, 4);
            } else {
                this.playlistError = ParserException.c("Loaded playlist has unexpected type.", null);
                DefaultHlsPlaylistTracker.this.eventDispatcher.w(loadEventInfo, 4, this.playlistError, true);
            }
            DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.a(parsingLoadable.loadTaskId);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public Loader.LoadErrorAction w(ParsingLoadable<HlsPlaylist> parsingLoadable, long j6, long j10, IOException iOException, int i10) {
            Loader.LoadErrorAction loadErrorActionG;
            LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.d(), parsingLoadable.b(), j6, j10, parsingLoadable.a());
            boolean z6 = iOException instanceof HlsPlaylistParser.DeltaUpdateException;
            if ((parsingLoadable.d().getQueryParameter(BLOCK_MSN_PARAM) != null) || z6) {
                int i11 = iOException instanceof HttpDataSource.InvalidResponseCodeException ? ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode : Integer.MAX_VALUE;
                if (z6 || i11 == 400 || i11 == 503) {
                    this.earliestNextLoadTimeMs = SystemClock.elapsedRealtime();
                    m();
                    ((MediaSourceEventListener.EventDispatcher) Util.j(DefaultHlsPlaylistTracker.this.eventDispatcher)).w(loadEventInfo, parsingLoadable.type, iOException, true);
                    return Loader.DONT_RETRY;
                }
            }
            LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo = new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(parsingLoadable.type), iOException, i10);
            if (DefaultHlsPlaylistTracker.this.M(this.playlistUrl, loadErrorInfo, false)) {
                long jD = DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.d(loadErrorInfo);
                loadErrorActionG = jD != -9223372036854775807L ? Loader.g(false, jD) : Loader.DONT_RETRY_FATAL;
            } else {
                loadErrorActionG = Loader.DONT_RETRY;
            }
            boolean z10 = !loadErrorActionG.c();
            DefaultHlsPlaylistTracker.this.eventDispatcher.w(loadEventInfo, parsingLoadable.type, iOException, z10);
            if (z10) {
                DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.a(parsingLoadable.loadTaskId);
            }
            return loadErrorActionG;
        }

        public void u() {
            this.mediaPlaylistLoader.k();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean h(long j6) {
            this.excludeUntilMs = SystemClock.elapsedRealtime() + j6;
            if (this.playlistUrl.equals(DefaultHlsPlaylistTracker.this.primaryMediaPlaylistUrl) && !DefaultHlsPlaylistTracker.this.K()) {
                return true;
            }
            return false;
        }
    }

    public DefaultHlsPlaylistTracker(HlsDataSourceFactory hlsDataSourceFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistParserFactory hlsPlaylistParserFactory) {
        this(hlsDataSourceFactory, loadErrorHandlingPolicy, hlsPlaylistParserFactory, 3.5d);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public void H(ParsingLoadable<HlsPlaylist> parsingLoadable, long j6, long j10, boolean z6) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.d(), parsingLoadable.b(), j6, j10, parsingLoadable.a());
        this.loadErrorHandlingPolicy.a(parsingLoadable.loadTaskId);
        this.eventDispatcher.p(loadEventInfo, 4);
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public long a() {
        return this.initialStartTimeUs;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    @Nullable
    public HlsMultivariantPlaylist f() {
        return this.multivariantPlaylist;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public boolean i() {
        return this.isLive;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void stop() {
        this.primaryMediaPlaylistUrl = null;
        this.primaryMediaPlaylistSnapshot = null;
        this.multivariantPlaylist = null;
        this.initialStartTimeUs = -9223372036854775807L;
        this.initialPlaylistLoader.k();
        this.initialPlaylistLoader = null;
        Iterator<MediaPlaylistBundle> it = this.playlistBundles.values().iterator();
        while (it.hasNext()) {
            it.next().u();
        }
        this.playlistRefreshHandler.removeCallbacksAndMessages(null);
        this.playlistRefreshHandler = null;
        this.playlistBundles.clear();
    }

    public DefaultHlsPlaylistTracker(HlsDataSourceFactory hlsDataSourceFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistParserFactory hlsPlaylistParserFactory, double d) {
        this.dataSourceFactory = hlsDataSourceFactory;
        this.playlistParserFactory = hlsPlaylistParserFactory;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.playlistStuckTargetDurationCoefficient = d;
        this.listeners = new CopyOnWriteArrayList<>();
        this.playlistBundles = new HashMap<>();
        this.initialStartTimeUs = -9223372036854775807L;
    }

    private static HlsMediaPlaylist.Segment D(HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        int i10 = (int) (hlsMediaPlaylist2.mediaSequence - hlsMediaPlaylist.mediaSequence);
        List<HlsMediaPlaylist.Segment> list = hlsMediaPlaylist.segments;
        if (i10 < list.size()) {
            return list.get(i10);
        }
        return null;
    }

    private int F(@Nullable HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        HlsMediaPlaylist.Segment segmentD;
        if (hlsMediaPlaylist2.hasDiscontinuitySequence) {
            return hlsMediaPlaylist2.discontinuitySequence;
        }
        HlsMediaPlaylist hlsMediaPlaylist3 = this.primaryMediaPlaylistSnapshot;
        int i10 = hlsMediaPlaylist3 != null ? hlsMediaPlaylist3.discontinuitySequence : 0;
        return (hlsMediaPlaylist == null || (segmentD = D(hlsMediaPlaylist, hlsMediaPlaylist2)) == null) ? i10 : (hlsMediaPlaylist.discontinuitySequence + segmentD.relativeDiscontinuitySequence) - hlsMediaPlaylist2.segments.get(0).relativeDiscontinuitySequence;
    }

    private long G(@Nullable HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        if (hlsMediaPlaylist2.hasProgramDateTime) {
            return hlsMediaPlaylist2.startTimeUs;
        }
        HlsMediaPlaylist hlsMediaPlaylist3 = this.primaryMediaPlaylistSnapshot;
        long j6 = hlsMediaPlaylist3 != null ? hlsMediaPlaylist3.startTimeUs : 0L;
        if (hlsMediaPlaylist == null) {
            return j6;
        }
        int size = hlsMediaPlaylist.segments.size();
        HlsMediaPlaylist.Segment segmentD = D(hlsMediaPlaylist, hlsMediaPlaylist2);
        if (segmentD != null) {
            return hlsMediaPlaylist.startTimeUs + segmentD.relativeStartTimeUs;
        }
        return ((long) size) == hlsMediaPlaylist2.mediaSequence - hlsMediaPlaylist.mediaSequence ? hlsMediaPlaylist.d() : j6;
    }

    private Uri I(Uri uri) {
        HlsMediaPlaylist.RenditionReport renditionReport;
        HlsMediaPlaylist hlsMediaPlaylist = this.primaryMediaPlaylistSnapshot;
        if (hlsMediaPlaylist == null || !hlsMediaPlaylist.serverControl.canBlockReload || (renditionReport = hlsMediaPlaylist.renditionReports.get(uri)) == null) {
            return uri;
        }
        Uri.Builder builderBuildUpon = uri.buildUpon();
        builderBuildUpon.appendQueryParameter("_HLS_msn", String.valueOf(renditionReport.lastMediaSequence));
        int i10 = renditionReport.lastPartIndex;
        if (i10 != -1) {
            builderBuildUpon.appendQueryParameter("_HLS_part", String.valueOf(i10));
        }
        return builderBuildUpon.build();
    }

    private boolean J(Uri uri) {
        List<HlsMultivariantPlaylist.Variant> list = this.multivariantPlaylist.variants;
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (uri.equals(list.get(i10).url)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean K() {
        List<HlsMultivariantPlaylist.Variant> list = this.multivariantPlaylist.variants;
        int size = list.size();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        for (int i10 = 0; i10 < size; i10++) {
            MediaPlaylistBundle mediaPlaylistBundle = (MediaPlaylistBundle) Assertions.e(this.playlistBundles.get(list.get(i10).url));
            if (jElapsedRealtime > mediaPlaylistBundle.excludeUntilMs) {
                Uri uri = mediaPlaylistBundle.playlistUrl;
                this.primaryMediaPlaylistUrl = uri;
                mediaPlaylistBundle.o(I(uri));
                return true;
            }
        }
        return false;
    }

    private void L(Uri uri) {
        if (uri.equals(this.primaryMediaPlaylistUrl) || !J(uri)) {
            return;
        }
        HlsMediaPlaylist hlsMediaPlaylist = this.primaryMediaPlaylistSnapshot;
        if (hlsMediaPlaylist == null || !hlsMediaPlaylist.hasEndTag) {
            this.primaryMediaPlaylistUrl = uri;
            MediaPlaylistBundle mediaPlaylistBundle = this.playlistBundles.get(uri);
            HlsMediaPlaylist hlsMediaPlaylist2 = mediaPlaylistBundle.playlistSnapshot;
            if (hlsMediaPlaylist2 == null || !hlsMediaPlaylist2.hasEndTag) {
                mediaPlaylistBundle.o(I(uri));
            } else {
                this.primaryMediaPlaylistSnapshot = hlsMediaPlaylist2;
                this.primaryPlaylistListener.K(hlsMediaPlaylist2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean M(Uri uri, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z6) {
        Iterator<HlsPlaylistTracker.PlaylistEventListener> it = this.listeners.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= !it.next().d(uri, loadErrorInfo, z6);
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q(Uri uri, HlsMediaPlaylist hlsMediaPlaylist) {
        if (uri.equals(this.primaryMediaPlaylistUrl)) {
            if (this.primaryMediaPlaylistSnapshot == null) {
                this.isLive = !hlsMediaPlaylist.hasEndTag;
                this.initialStartTimeUs = hlsMediaPlaylist.startTimeUs;
            }
            this.primaryMediaPlaylistSnapshot = hlsMediaPlaylist;
            this.primaryPlaylistListener.K(hlsMediaPlaylist);
        }
        Iterator<HlsPlaylistTracker.PlaylistEventListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public void Y(ParsingLoadable<HlsPlaylist> parsingLoadable, long j6, long j10) {
        HlsPlaylist hlsPlaylistC = parsingLoadable.c();
        boolean z6 = hlsPlaylistC instanceof HlsMediaPlaylist;
        HlsMultivariantPlaylist hlsMultivariantPlaylistD = z6 ? HlsMultivariantPlaylist.d(hlsPlaylistC.baseUri) : (HlsMultivariantPlaylist) hlsPlaylistC;
        this.multivariantPlaylist = hlsMultivariantPlaylistD;
        this.primaryMediaPlaylistUrl = hlsMultivariantPlaylistD.variants.get(0).url;
        this.listeners.add(new FirstPrimaryMediaPlaylistListener());
        C(hlsMultivariantPlaylistD.mediaPlaylistUrls);
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.d(), parsingLoadable.b(), j6, j10, parsingLoadable.a());
        MediaPlaylistBundle mediaPlaylistBundle = this.playlistBundles.get(this.primaryMediaPlaylistUrl);
        if (z6) {
            mediaPlaylistBundle.t((HlsMediaPlaylist) hlsPlaylistC, loadEventInfo);
        } else {
            mediaPlaylistBundle.m();
        }
        this.loadErrorHandlingPolicy.a(parsingLoadable.loadTaskId);
        this.eventDispatcher.s(loadEventInfo, 4);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public Loader.LoadErrorAction w(ParsingLoadable<HlsPlaylist> parsingLoadable, long j6, long j10, IOException iOException, int i10) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.d(), parsingLoadable.b(), j6, j10, parsingLoadable.a());
        long jD = this.loadErrorHandlingPolicy.d(new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(parsingLoadable.type), iOException, i10));
        boolean z6 = jD == -9223372036854775807L;
        this.eventDispatcher.w(loadEventInfo, parsingLoadable.type, iOException, z6);
        if (z6) {
            this.loadErrorHandlingPolicy.a(parsingLoadable.loadTaskId);
        }
        return z6 ? Loader.DONT_RETRY_FATAL : Loader.g(false, jD);
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void b(HlsPlaylistTracker.PlaylistEventListener playlistEventListener) {
        this.listeners.remove(playlistEventListener);
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void e(Uri uri) throws IOException {
        this.playlistBundles.get(uri).p();
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void g(Uri uri) {
        this.playlistBundles.get(uri).m();
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public boolean h(Uri uri) {
        return this.playlistBundles.get(uri).k();
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public boolean j(Uri uri, long j6) {
        MediaPlaylistBundle mediaPlaylistBundle = this.playlistBundles.get(uri);
        if (mediaPlaylistBundle != null) {
            return !mediaPlaylistBundle.h(j6);
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void k() throws IOException {
        Loader loader = this.initialPlaylistLoader;
        if (loader != null) {
            loader.maybeThrowError();
        }
        Uri uri = this.primaryMediaPlaylistUrl;
        if (uri != null) {
            e(uri);
        }
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    @Nullable
    public HlsMediaPlaylist l(Uri uri, boolean z6) {
        HlsMediaPlaylist hlsMediaPlaylistJ = this.playlistBundles.get(uri).j();
        if (hlsMediaPlaylistJ != null && z6) {
            L(uri);
        }
        return hlsMediaPlaylistJ;
    }

    private void C(List<Uri> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Uri uri = list.get(i10);
            this.playlistBundles.put(uri, new MediaPlaylistBundle(uri));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HlsMediaPlaylist E(@Nullable HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        if (!hlsMediaPlaylist2.e(hlsMediaPlaylist)) {
            if (hlsMediaPlaylist2.hasEndTag) {
                return hlsMediaPlaylist.c();
            }
            return hlsMediaPlaylist;
        }
        return hlsMediaPlaylist2.b(G(hlsMediaPlaylist, hlsMediaPlaylist2), F(hlsMediaPlaylist, hlsMediaPlaylist2));
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void c(HlsPlaylistTracker.PlaylistEventListener playlistEventListener) {
        Assertions.e(playlistEventListener);
        this.listeners.add(playlistEventListener);
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void d(Uri uri, MediaSourceEventListener.EventDispatcher eventDispatcher, HlsPlaylistTracker.PrimaryPlaylistListener primaryPlaylistListener) {
        boolean z6;
        this.playlistRefreshHandler = Util.w();
        this.eventDispatcher = eventDispatcher;
        this.primaryPlaylistListener = primaryPlaylistListener;
        ParsingLoadable parsingLoadable = new ParsingLoadable(this.dataSourceFactory.a(4), uri, 4, this.playlistParserFactory.a());
        if (this.initialPlaylistLoader == null) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.g(z6);
        Loader loader = new Loader("DefaultHlsPlaylistTracker:MultivariantPlaylist");
        this.initialPlaylistLoader = loader;
        eventDispatcher.y(new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, loader.m(parsingLoadable, this, this.loadErrorHandlingPolicy.b(parsingLoadable.type))), parsingLoadable.type);
    }
}
