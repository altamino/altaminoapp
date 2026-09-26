package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.Allocator;

/* JADX INFO: loaded from: classes8.dex */
final class MediaPeriodQueue {
    public static final long INITIAL_RENDERER_POSITION_OFFSET_US = 1000000000000L;
    private static final int MAXIMUM_BUFFER_AHEAD_PERIODS = 100;
    private final AnalyticsCollector analyticsCollector;
    private final HandlerWrapper analyticsCollectorHandler;
    private int length;

    @Nullable
    private MediaPeriodHolder loading;
    private long nextWindowSequenceNumber;

    @Nullable
    private Object oldFrontPeriodUid;
    private long oldFrontPeriodWindowSequenceNumber;

    @Nullable
    private MediaPeriodHolder playing;

    @Nullable
    private MediaPeriodHolder reading;
    private int repeatMode;
    private boolean shuffleModeEnabled;
    private final Timeline.Period period = new Timeline.Period();
    private final Timeline.Window window = new Timeline.Window();

    private boolean d(long j6, long j10) {
        return j6 == -9223372036854775807L || j6 == j10;
    }

    @Nullable
    private MediaPeriodInfo k(Timeline timeline, MediaPeriodHolder mediaPeriodHolder, long j6) {
        MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.info;
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.id;
        timeline.l(mediaPeriodId.periodUid, this.period);
        if (!mediaPeriodId.c()) {
            int i10 = mediaPeriodId.nextAdGroupIndex;
            if (i10 != -1 && this.period.u(i10)) {
                return i(timeline, mediaPeriodHolder, j6);
            }
            int iO = this.period.o(mediaPeriodId.nextAdGroupIndex);
            boolean z6 = this.period.v(mediaPeriodId.nextAdGroupIndex) && this.period.k(mediaPeriodId.nextAdGroupIndex, iO) == 3;
            if (iO == this.period.d(mediaPeriodId.nextAdGroupIndex) || z6) {
                return o(timeline, mediaPeriodId.periodUid, p(timeline, mediaPeriodId.periodUid, mediaPeriodId.nextAdGroupIndex), mediaPeriodInfo.durationUs, mediaPeriodId.windowSequenceNumber);
            }
            return n(timeline, mediaPeriodId.periodUid, mediaPeriodId.nextAdGroupIndex, iO, mediaPeriodInfo.durationUs, mediaPeriodId.windowSequenceNumber);
        }
        int i11 = mediaPeriodId.adGroupIndex;
        int iD = this.period.d(i11);
        if (iD == -1) {
            return null;
        }
        int iP = this.period.p(i11, mediaPeriodId.adIndexInAdGroup);
        if (iP < iD) {
            return n(timeline, mediaPeriodId.periodUid, i11, iP, mediaPeriodInfo.requestedContentPositionUs, mediaPeriodId.windowSequenceNumber);
        }
        long jLongValue = mediaPeriodInfo.requestedContentPositionUs;
        if (jLongValue == -9223372036854775807L) {
            Timeline.Window window = this.window;
            Timeline.Period period = this.period;
            Pair<Object, Long> pairO = timeline.o(window, period, period.windowIndex, -9223372036854775807L, Math.max(0L, j6));
            if (pairO == null) {
                return null;
            }
            jLongValue = ((Long) pairO.second).longValue();
        }
        return o(timeline, mediaPeriodId.periodUid, Math.max(p(timeline, mediaPeriodId.periodUid, mediaPeriodId.adGroupIndex), jLongValue), mediaPeriodInfo.requestedContentPositionUs, mediaPeriodId.windowSequenceNumber);
    }

    @Nullable
    private MediaPeriodInfo m(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j6, long j10) {
        timeline.l(mediaPeriodId.periodUid, this.period);
        return mediaPeriodId.c() ? n(timeline, mediaPeriodId.periodUid, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, j6, mediaPeriodId.windowSequenceNumber) : o(timeline, mediaPeriodId.periodUid, j10, j6, mediaPeriodId.windowSequenceNumber);
    }

    public boolean D(MediaPeriodHolder mediaPeriodHolder) {
        boolean z6 = false;
        Assertions.g(mediaPeriodHolder != null);
        if (mediaPeriodHolder.equals(this.loading)) {
            return false;
        }
        this.loading = mediaPeriodHolder;
        while (mediaPeriodHolder.j() != null) {
            mediaPeriodHolder = mediaPeriodHolder.j();
            if (mediaPeriodHolder == this.reading) {
                this.reading = this.playing;
                z6 = true;
            }
            mediaPeriodHolder.t();
            this.length--;
        }
        this.loading.w(null);
        B();
        return z6;
    }

    public MediaPeriodHolder g(RendererCapabilities[] rendererCapabilitiesArr, TrackSelector trackSelector, Allocator allocator, MediaSourceList mediaSourceList, MediaPeriodInfo mediaPeriodInfo, TrackSelectorResult trackSelectorResult) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        MediaPeriodHolder mediaPeriodHolder2 = new MediaPeriodHolder(rendererCapabilitiesArr, mediaPeriodHolder == null ? 1000000000000L : (mediaPeriodHolder.l() + this.loading.info.durationUs) - mediaPeriodInfo.startPositionUs, trackSelector, allocator, mediaSourceList, mediaPeriodInfo, trackSelectorResult);
        MediaPeriodHolder mediaPeriodHolder3 = this.loading;
        if (mediaPeriodHolder3 != null) {
            mediaPeriodHolder3.w(mediaPeriodHolder2);
        } else {
            this.playing = mediaPeriodHolder2;
            this.reading = mediaPeriodHolder2;
        }
        this.oldFrontPeriodUid = null;
        this.loading = mediaPeriodHolder2;
        this.length++;
        B();
        return mediaPeriodHolder2;
    }

    @Nullable
    public MediaPeriodHolder l() {
        return this.loading;
    }

    @Nullable
    public MediaPeriodHolder r() {
        return this.playing;
    }

    @Nullable
    public MediaPeriodHolder s() {
        return this.reading;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(com.google.common.collect.a0.a aVar, MediaSource.MediaPeriodId mediaPeriodId) {
        this.analyticsCollector.v(aVar.k(), mediaPeriodId);
    }

    private long G(Timeline timeline, Object obj) {
        int iF;
        int i10 = timeline.l(obj, this.period).windowIndex;
        Object obj2 = this.oldFrontPeriodUid;
        if (obj2 != null && (iF = timeline.f(obj2)) != -1 && timeline.j(iF, this.period).windowIndex == i10) {
            return this.oldFrontPeriodWindowSequenceNumber;
        }
        for (MediaPeriodHolder mediaPeriodHolderJ = this.playing; mediaPeriodHolderJ != null; mediaPeriodHolderJ = mediaPeriodHolderJ.j()) {
            if (mediaPeriodHolderJ.uid.equals(obj)) {
                return mediaPeriodHolderJ.info.id.windowSequenceNumber;
            }
        }
        for (MediaPeriodHolder mediaPeriodHolderJ2 = this.playing; mediaPeriodHolderJ2 != null; mediaPeriodHolderJ2 = mediaPeriodHolderJ2.j()) {
            int iF2 = timeline.f(mediaPeriodHolderJ2.uid);
            if (iF2 != -1 && timeline.j(iF2, this.period).windowIndex == i10) {
                return mediaPeriodHolderJ2.info.id.windowSequenceNumber;
            }
        }
        long j6 = this.nextWindowSequenceNumber;
        this.nextWindowSequenceNumber = 1 + j6;
        if (this.playing == null) {
            this.oldFrontPeriodUid = obj;
            this.oldFrontPeriodWindowSequenceNumber = j6;
        }
        return j6;
    }

    private boolean I(Timeline timeline) {
        MediaPeriodHolder mediaPeriodHolderJ = this.playing;
        if (mediaPeriodHolderJ == null) {
            return true;
        }
        int iF = timeline.f(mediaPeriodHolderJ.uid);
        while (true) {
            iF = timeline.h(iF, this.period, this.window, this.repeatMode, this.shuffleModeEnabled);
            while (mediaPeriodHolderJ.j() != null && !mediaPeriodHolderJ.info.isLastInTimelinePeriod) {
                mediaPeriodHolderJ = mediaPeriodHolderJ.j();
            }
            MediaPeriodHolder mediaPeriodHolderJ2 = mediaPeriodHolderJ.j();
            if (iF == -1 || mediaPeriodHolderJ2 == null || timeline.f(mediaPeriodHolderJ2.uid) != iF) {
                break;
            }
            mediaPeriodHolderJ = mediaPeriodHolderJ2;
        }
        boolean zD = D(mediaPeriodHolderJ);
        mediaPeriodHolderJ.info = t(timeline, mediaPeriodHolderJ.info);
        return !zD;
    }

    private boolean e(MediaPeriodInfo mediaPeriodInfo, MediaPeriodInfo mediaPeriodInfo2) {
        return mediaPeriodInfo.startPositionUs == mediaPeriodInfo2.startPositionUs && mediaPeriodInfo.id.equals(mediaPeriodInfo2.id);
    }

    @Nullable
    private MediaPeriodInfo h(PlaybackInfo playbackInfo) {
        return m(playbackInfo.timeline, playbackInfo.periodId, playbackInfo.requestedContentPositionUs, playbackInfo.positionUs);
    }

    @Nullable
    private MediaPeriodInfo i(Timeline timeline, MediaPeriodHolder mediaPeriodHolder, long j6) {
        long j10;
        long j11;
        Object obj;
        long j12;
        long j13;
        long j14;
        MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.info;
        int iH = timeline.h(timeline.f(mediaPeriodInfo.id.periodUid), this.period, this.window, this.repeatMode, this.shuffleModeEnabled);
        if (iH == -1) {
            return null;
        }
        int i10 = timeline.k(iH, this.period, true).windowIndex;
        Object objE = Assertions.e(this.period.uid);
        long j15 = mediaPeriodInfo.id.windowSequenceNumber;
        if (timeline.r(i10, this.window).firstPeriodIndex == iH) {
            Pair<Object, Long> pairO = timeline.o(this.window, this.period, i10, -9223372036854775807L, Math.max(0L, j6));
            if (pairO == null) {
                return null;
            }
            Object obj2 = pairO.first;
            long jLongValue = ((Long) pairO.second).longValue();
            MediaPeriodHolder mediaPeriodHolderJ = mediaPeriodHolder.j();
            if (mediaPeriodHolderJ == null || !mediaPeriodHolderJ.uid.equals(obj2)) {
                j14 = this.nextWindowSequenceNumber;
                this.nextWindowSequenceNumber = 1 + j14;
            } else {
                j14 = mediaPeriodHolderJ.info.id.windowSequenceNumber;
            }
            j10 = j14;
            j11 = -9223372036854775807L;
            obj = obj2;
            j12 = jLongValue;
        } else {
            j10 = j15;
            j11 = 0;
            obj = objE;
            j12 = 0;
        }
        MediaSource.MediaPeriodId mediaPeriodIdE = E(timeline, obj, j12, j10, this.window, this.period);
        if (j11 == -9223372036854775807L || mediaPeriodInfo.requestedContentPositionUs == -9223372036854775807L) {
            j13 = j12;
        } else {
            boolean zU = u(mediaPeriodInfo.id.periodUid, timeline);
            if (mediaPeriodIdE.c() && zU) {
                j11 = mediaPeriodInfo.requestedContentPositionUs;
            } else if (zU) {
                j13 = mediaPeriodInfo.requestedContentPositionUs;
            }
            j13 = j12;
        }
        return m(timeline, mediaPeriodIdE, j11, j13);
    }

    @Nullable
    private MediaPeriodInfo j(Timeline timeline, MediaPeriodHolder mediaPeriodHolder, long j6) {
        MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.info;
        long jL = (mediaPeriodHolder.l() + mediaPeriodInfo.durationUs) - j6;
        return mediaPeriodInfo.isLastInTimelinePeriod ? i(timeline, mediaPeriodHolder, jL) : k(timeline, mediaPeriodHolder, jL);
    }

    private MediaPeriodInfo n(Timeline timeline, Object obj, int i10, int i11, long j6, long j10) {
        MediaSource.MediaPeriodId mediaPeriodId = new MediaSource.MediaPeriodId(obj, i10, i11, j10);
        long jE = timeline.l(mediaPeriodId.periodUid, this.period).e(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
        long j11 = i11 == this.period.o(i10) ? this.period.j() : 0L;
        return new MediaPeriodInfo(mediaPeriodId, (jE == -9223372036854775807L || j11 < jE) ? j11 : Math.max(0L, jE - 1), j6, -9223372036854775807L, jE, this.period.v(mediaPeriodId.adGroupIndex), false, false, false);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005a  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ba  */
    private MediaPeriodInfo o(Timeline timeline, Object obj, long j6, long j10, long j11) {
        boolean z6;
        long j12;
        long jI;
        long j13;
        long jMax = j6;
        timeline.l(obj, this.period);
        int iG = this.period.g(jMax);
        boolean z10 = iG != -1 && this.period.u(iG);
        if (iG == -1) {
            if (this.period.f() > 0) {
                Timeline.Period period = this.period;
                if (period.v(period.s())) {
                    z6 = true;
                } else {
                    z6 = false;
                }
            } else {
                z6 = false;
            }
        } else if (this.period.v(iG)) {
            long jI2 = this.period.i(iG);
            Timeline.Period period2 = this.period;
            if (jI2 == period2.durationUs && period2.t(iG)) {
                z6 = true;
                iG = -1;
            } else {
                z6 = false;
            }
        } else {
            z6 = false;
        }
        MediaSource.MediaPeriodId mediaPeriodId = new MediaSource.MediaPeriodId(obj, j11, iG);
        boolean zV = v(mediaPeriodId);
        boolean zX = x(timeline, mediaPeriodId);
        boolean zW = w(timeline, mediaPeriodId, zV);
        boolean z11 = (iG == -1 || !this.period.v(iG) || z10) ? false : true;
        if (iG == -1 || z10) {
            if (z6) {
                jI = this.period.durationUs;
            } else {
                j12 = -9223372036854775807L;
            }
            if (j12 != -9223372036854775807L || j12 == Long.MIN_VALUE) {
                j13 = this.period.durationUs;
            } else {
                j13 = j12;
            }
            if (j13 != -9223372036854775807L && jMax >= j13) {
                jMax = Math.max(0L, j13 - ((long) ((zW && z6) ? 0 : 1)));
            }
            return new MediaPeriodInfo(mediaPeriodId, jMax, j10, j12, j13, z11, zV, zX, zW);
        }
        jI = this.period.i(iG);
        j12 = jI;
        if (j12 != -9223372036854775807L) {
            j13 = this.period.durationUs;
        } else {
            j13 = this.period.durationUs;
        }
        if (j13 != -9223372036854775807L) {
            jMax = Math.max(0L, j13 - ((long) ((zW && z6) ? 0 : 1)));
        }
        return new MediaPeriodInfo(mediaPeriodId, jMax, j10, j12, j13, z11, zV, zX, zW);
    }

    private long p(Timeline timeline, Object obj, int i10) {
        timeline.l(obj, this.period);
        long jI = this.period.i(i10);
        return jI == Long.MIN_VALUE ? this.period.durationUs : jI + this.period.l(i10);
    }

    private boolean u(Object obj, Timeline timeline) {
        int iF = timeline.l(obj, this.period).f();
        int iS = this.period.s();
        return iF > 0 && this.period.v(iS) && (iF > 1 || this.period.i(iS) != Long.MIN_VALUE);
    }

    private boolean w(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, boolean z6) {
        int iF = timeline.f(mediaPeriodId.periodUid);
        return !timeline.r(timeline.j(iF, this.period).windowIndex, this.window).isDynamic && timeline.v(iF, this.period, this.window, this.repeatMode, this.shuffleModeEnabled) && z6;
    }

    public void C(long j6) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        if (mediaPeriodHolder != null) {
            mediaPeriodHolder.s(j6);
        }
    }

    public boolean H() {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        return mediaPeriodHolder == null || (!mediaPeriodHolder.info.isFinal && mediaPeriodHolder.q() && this.loading.info.durationUs != -9223372036854775807L && this.length < 100);
    }

    public boolean J(Timeline timeline, long j6, long j10) {
        MediaPeriodInfo mediaPeriodInfoT;
        MediaPeriodHolder mediaPeriodHolderJ = this.playing;
        MediaPeriodHolder mediaPeriodHolder = null;
        while (mediaPeriodHolderJ != null) {
            MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolderJ.info;
            if (mediaPeriodHolder == null) {
                mediaPeriodInfoT = t(timeline, mediaPeriodInfo);
            } else {
                MediaPeriodInfo mediaPeriodInfoJ = j(timeline, mediaPeriodHolder, j6);
                if (mediaPeriodInfoJ == null) {
                    return !D(mediaPeriodHolder);
                }
                if (!e(mediaPeriodInfo, mediaPeriodInfoJ)) {
                    return !D(mediaPeriodHolder);
                }
                mediaPeriodInfoT = mediaPeriodInfoJ;
            }
            mediaPeriodHolderJ.info = mediaPeriodInfoT.a(mediaPeriodInfo.requestedContentPositionUs);
            if (!d(mediaPeriodInfo.durationUs, mediaPeriodInfoT.durationUs)) {
                mediaPeriodHolderJ.A();
                long j11 = mediaPeriodInfoT.durationUs;
                return (D(mediaPeriodHolderJ) || (mediaPeriodHolderJ == this.reading && !mediaPeriodHolderJ.info.isFollowedByTransitionToSameStream && ((j10 > Long.MIN_VALUE ? 1 : (j10 == Long.MIN_VALUE ? 0 : -1)) == 0 || (j10 > ((j11 > (-9223372036854775807L) ? 1 : (j11 == (-9223372036854775807L) ? 0 : -1)) == 0 ? Long.MAX_VALUE : mediaPeriodHolderJ.z(j11)) ? 1 : (j10 == ((j11 > (-9223372036854775807L) ? 1 : (j11 == (-9223372036854775807L) ? 0 : -1)) == 0 ? Long.MAX_VALUE : mediaPeriodHolderJ.z(j11)) ? 0 : -1)) >= 0))) ? false : true;
            }
            mediaPeriodHolder = mediaPeriodHolderJ;
            mediaPeriodHolderJ = mediaPeriodHolderJ.j();
        }
        return true;
    }

    public boolean K(Timeline timeline, int i10) {
        this.repeatMode = i10;
        return I(timeline);
    }

    public boolean L(Timeline timeline, boolean z6) {
        this.shuffleModeEnabled = z6;
        return I(timeline);
    }

    @Nullable
    public MediaPeriodHolder b() {
        MediaPeriodHolder mediaPeriodHolder = this.playing;
        if (mediaPeriodHolder == null) {
            return null;
        }
        if (mediaPeriodHolder == this.reading) {
            this.reading = mediaPeriodHolder.j();
        }
        this.playing.t();
        int i10 = this.length - 1;
        this.length = i10;
        if (i10 == 0) {
            this.loading = null;
            MediaPeriodHolder mediaPeriodHolder2 = this.playing;
            this.oldFrontPeriodUid = mediaPeriodHolder2.uid;
            this.oldFrontPeriodWindowSequenceNumber = mediaPeriodHolder2.info.id.windowSequenceNumber;
        }
        this.playing = this.playing.j();
        B();
        return this.playing;
    }

    public MediaPeriodHolder c() {
        MediaPeriodHolder mediaPeriodHolder = this.reading;
        Assertions.g((mediaPeriodHolder == null || mediaPeriodHolder.j() == null) ? false : true);
        this.reading = this.reading.j();
        B();
        return this.reading;
    }

    public void f() {
        if (this.length == 0) {
            return;
        }
        MediaPeriodHolder mediaPeriodHolderJ = (MediaPeriodHolder) Assertions.i(this.playing);
        this.oldFrontPeriodUid = mediaPeriodHolderJ.uid;
        this.oldFrontPeriodWindowSequenceNumber = mediaPeriodHolderJ.info.id.windowSequenceNumber;
        while (mediaPeriodHolderJ != null) {
            mediaPeriodHolderJ.t();
            mediaPeriodHolderJ = mediaPeriodHolderJ.j();
        }
        this.playing = null;
        this.loading = null;
        this.reading = null;
        this.length = 0;
        B();
    }

    @Nullable
    public MediaPeriodInfo q(long j6, PlaybackInfo playbackInfo) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        return mediaPeriodHolder == null ? h(playbackInfo) : j(playbackInfo.timeline, mediaPeriodHolder, j6);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0062  */
    /* JADX WARN: Code duplicated, block: B:24:0x006c  */
    /* JADX WARN: Code duplicated, block: B:29:0x007a  */
    public MediaPeriodInfo t(Timeline timeline, MediaPeriodInfo mediaPeriodInfo) {
        long jN;
        long j6;
        int i10;
        boolean zV;
        int i11;
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.id;
        boolean zV2 = v(mediaPeriodId);
        boolean zX = x(timeline, mediaPeriodId);
        boolean zW = w(timeline, mediaPeriodId, zV2);
        timeline.l(mediaPeriodInfo.id.periodUid, this.period);
        long jI = (mediaPeriodId.c() || (i11 = mediaPeriodId.nextAdGroupIndex) == -1) ? -9223372036854775807L : this.period.i(i11);
        if (!mediaPeriodId.c()) {
            if (jI == -9223372036854775807L || jI == Long.MIN_VALUE) {
                jN = this.period.n();
            } else {
                j6 = jI;
            }
            if (mediaPeriodId.c()) {
                zV = this.period.v(mediaPeriodId.adGroupIndex);
            } else {
                i10 = mediaPeriodId.nextAdGroupIndex;
                if (i10 == -1 && this.period.v(i10)) {
                    zV = true;
                } else {
                    zV = false;
                }
            }
            return new MediaPeriodInfo(mediaPeriodId, mediaPeriodInfo.startPositionUs, mediaPeriodInfo.requestedContentPositionUs, jI, j6, zV, zV2, zX, zW);
        }
        jN = this.period.e(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
        j6 = jN;
        if (mediaPeriodId.c()) {
            zV = this.period.v(mediaPeriodId.adGroupIndex);
        } else {
            i10 = mediaPeriodId.nextAdGroupIndex;
            if (i10 == -1) {
                zV = false;
            } else {
                zV = false;
            }
        }
        return new MediaPeriodInfo(mediaPeriodId, mediaPeriodInfo.startPositionUs, mediaPeriodInfo.requestedContentPositionUs, jI, j6, zV, zV2, zX, zW);
    }

    public boolean y(MediaPeriod mediaPeriod) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        return mediaPeriodHolder != null && mediaPeriodHolder.mediaPeriod == mediaPeriod;
    }

    public MediaPeriodQueue(AnalyticsCollector analyticsCollector, HandlerWrapper handlerWrapper) {
        this.analyticsCollector = analyticsCollector;
        this.analyticsCollectorHandler = handlerWrapper;
    }

    private void B() {
        final MediaSource.MediaPeriodId mediaPeriodId;
        final com.google.common.collect.a0.a aVarR = com.google.common.collect.a0.r();
        for (MediaPeriodHolder mediaPeriodHolderJ = this.playing; mediaPeriodHolderJ != null; mediaPeriodHolderJ = mediaPeriodHolderJ.j()) {
            aVarR.d(mediaPeriodHolderJ.info.id);
        }
        MediaPeriodHolder mediaPeriodHolder = this.reading;
        if (mediaPeriodHolder == null) {
            mediaPeriodId = null;
        } else {
            mediaPeriodId = mediaPeriodHolder.info.id;
        }
        this.analyticsCollectorHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.s1
            @Override // java.lang.Runnable
            public final void run() {
                this.f585a.A(aVarR, mediaPeriodId);
            }
        });
    }

    private static MediaSource.MediaPeriodId E(Timeline timeline, Object obj, long j6, long j10, Timeline.Window window, Timeline.Period period) {
        timeline.l(obj, period);
        timeline.r(period.windowIndex, window);
        Object objE = obj;
        for (int iF = timeline.f(obj); z(period) && iF <= window.lastPeriodIndex; iF++) {
            timeline.k(iF, period, true);
            objE = Assertions.e(period.uid);
        }
        timeline.l(objE, period);
        int iH = period.h(j6);
        if (iH == -1) {
            return new MediaSource.MediaPeriodId(objE, j10, period.g(j6));
        }
        return new MediaSource.MediaPeriodId(objE, iH, period.o(iH), j10);
    }

    private boolean v(MediaSource.MediaPeriodId mediaPeriodId) {
        if (!mediaPeriodId.c() && mediaPeriodId.nextAdGroupIndex == -1) {
            return true;
        }
        return false;
    }

    private boolean x(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        if (!v(mediaPeriodId)) {
            return false;
        }
        int i10 = timeline.l(mediaPeriodId.periodUid, this.period).windowIndex;
        if (timeline.r(i10, this.window).lastPeriodIndex != timeline.f(mediaPeriodId.periodUid)) {
            return false;
        }
        return true;
    }

    private static boolean z(Timeline.Period period) {
        int i10;
        int iF = period.f();
        if (iF == 0) {
            return false;
        }
        if ((iF == 1 && period.u(0)) || !period.v(period.s())) {
            return false;
        }
        long jL = 0;
        if (period.h(0L) != -1) {
            return false;
        }
        if (period.durationUs == 0) {
            return true;
        }
        if (period.u(iF - 1)) {
            i10 = 2;
        } else {
            i10 = 1;
        }
        int i11 = iF - i10;
        for (int i12 = 0; i12 <= i11; i12++) {
            jL += period.l(i12);
        }
        if (period.durationUs > jL) {
            return false;
        }
        return true;
    }

    public MediaSource.MediaPeriodId F(Timeline timeline, Object obj, long j6) {
        long jG = G(timeline, obj);
        timeline.l(obj, this.period);
        timeline.r(this.period.windowIndex, this.window);
        boolean z6 = false;
        for (int iF = timeline.f(obj); iF >= this.window.firstPeriodIndex; iF--) {
            boolean z10 = true;
            timeline.k(iF, this.period, true);
            if (this.period.f() <= 0) {
                z10 = false;
            }
            z6 |= z10;
            Timeline.Period period = this.period;
            if (period.h(period.durationUs) != -1) {
                obj = Assertions.e(this.period.uid);
            }
            if (z6 && (!z10 || this.period.durationUs != 0)) {
                break;
            }
        }
        return E(timeline, obj, j6, jG, this.window, this.period);
    }
}
