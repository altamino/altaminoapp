package androidx.media3.exoplayer.analytics;

import android.os.Looper;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.FlagSet;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.MediaPeriodId;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public class DefaultAnalyticsCollector implements AnalyticsCollector {
    private final Clock clock;
    private final SparseArray<AnalyticsListener.EventTime> eventTimes;
    private HandlerWrapper handler;
    private boolean isSeeking;
    private ListenerSet<AnalyticsListener> listeners;
    private final MediaPeriodQueueTracker mediaPeriodQueueTracker;
    private final Timeline.Period period;
    private Player player;
    private final Timeline.Window window;

    private static final class MediaPeriodQueueTracker {

        @Nullable
        private MediaSource.MediaPeriodId currentPlayerMediaPeriod;
        private com.google.common.collect.a0<MediaSource.MediaPeriodId> mediaPeriodQueue = com.google.common.collect.a0.x();
        private com.google.common.collect.b0<MediaSource.MediaPeriodId, Timeline> mediaPeriodTimelines = com.google.common.collect.b0.m();
        private final Timeline.Period period;
        private MediaSource.MediaPeriodId playingMediaPeriod;
        private MediaSource.MediaPeriodId readingMediaPeriod;

        @Nullable
        public MediaSource.MediaPeriodId d() {
            return this.currentPlayerMediaPeriod;
        }

        @Nullable
        public MediaSource.MediaPeriodId g() {
            return this.playingMediaPeriod;
        }

        @Nullable
        public MediaSource.MediaPeriodId h() {
            return this.readingMediaPeriod;
        }

        private void b(com.google.common.collect.b0.a<MediaSource.MediaPeriodId, Timeline> aVar, @Nullable MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) {
            if (mediaPeriodId == null) {
                return;
            }
            if (timeline.f(mediaPeriodId.periodUid) != -1) {
                aVar.f(mediaPeriodId, timeline);
                return;
            }
            Timeline timeline2 = this.mediaPeriodTimelines.get(mediaPeriodId);
            if (timeline2 != null) {
                aVar.f(mediaPeriodId, timeline2);
            }
        }

        private static boolean i(MediaSource.MediaPeriodId mediaPeriodId, @Nullable Object obj, boolean z6, int i10, int i11, int i12) {
            if (mediaPeriodId.periodUid.equals(obj)) {
                return (z6 && mediaPeriodId.adGroupIndex == i10 && mediaPeriodId.adIndexInAdGroup == i11) || (!z6 && mediaPeriodId.adGroupIndex == -1 && mediaPeriodId.nextAdGroupIndex == i12);
            }
            return false;
        }

        @Nullable
        public MediaSource.MediaPeriodId e() {
            if (this.mediaPeriodQueue.isEmpty()) {
                return null;
            }
            return (MediaSource.MediaPeriodId) com.google.common.collect.h0.e(this.mediaPeriodQueue);
        }

        @Nullable
        public Timeline f(MediaSource.MediaPeriodId mediaPeriodId) {
            return this.mediaPeriodTimelines.get(mediaPeriodId);
        }

        public void j(Player player) {
            this.currentPlayerMediaPeriod = c(player, this.mediaPeriodQueue, this.playingMediaPeriod, this.period);
        }

        public void l(Player player) {
            this.currentPlayerMediaPeriod = c(player, this.mediaPeriodQueue, this.playingMediaPeriod, this.period);
            m(player.getCurrentTimeline());
        }

        public MediaPeriodQueueTracker(Timeline.Period period) {
            this.period = period;
        }

        @Nullable
        private static MediaSource.MediaPeriodId c(Player player, com.google.common.collect.a0<MediaSource.MediaPeriodId> a0Var, @Nullable MediaSource.MediaPeriodId mediaPeriodId, Timeline.Period period) {
            Object objQ;
            int iG;
            Timeline currentTimeline = player.getCurrentTimeline();
            int currentPeriodIndex = player.getCurrentPeriodIndex();
            if (currentTimeline.u()) {
                objQ = null;
            } else {
                objQ = currentTimeline.q(currentPeriodIndex);
            }
            if (!player.isPlayingAd() && !currentTimeline.u()) {
                iG = currentTimeline.j(currentPeriodIndex, period).g(Util.K0(player.getCurrentPosition()) - period.r());
            } else {
                iG = -1;
            }
            for (int i10 = 0; i10 < a0Var.size(); i10++) {
                MediaSource.MediaPeriodId mediaPeriodId2 = a0Var.get(i10);
                if (i(mediaPeriodId2, objQ, player.isPlayingAd(), player.getCurrentAdGroupIndex(), player.getCurrentAdIndexInAdGroup(), iG)) {
                    return mediaPeriodId2;
                }
            }
            if (a0Var.isEmpty() && mediaPeriodId != null) {
                if (i(mediaPeriodId, objQ, player.isPlayingAd(), player.getCurrentAdGroupIndex(), player.getCurrentAdIndexInAdGroup(), iG)) {
                    return mediaPeriodId;
                }
            }
            return null;
        }

        private void m(Timeline timeline) {
            com.google.common.collect.b0.a<MediaSource.MediaPeriodId, Timeline> aVarA = com.google.common.collect.b0.a();
            if (this.mediaPeriodQueue.isEmpty()) {
                b(aVarA, this.playingMediaPeriod, timeline);
                if (!com.google.common.base.k.a(this.readingMediaPeriod, this.playingMediaPeriod)) {
                    b(aVarA, this.readingMediaPeriod, timeline);
                }
                if (!com.google.common.base.k.a(this.currentPlayerMediaPeriod, this.playingMediaPeriod) && !com.google.common.base.k.a(this.currentPlayerMediaPeriod, this.readingMediaPeriod)) {
                    b(aVarA, this.currentPlayerMediaPeriod, timeline);
                }
            } else {
                for (int i10 = 0; i10 < this.mediaPeriodQueue.size(); i10++) {
                    b(aVarA, this.mediaPeriodQueue.get(i10), timeline);
                }
                if (!this.mediaPeriodQueue.contains(this.currentPlayerMediaPeriod)) {
                    b(aVarA, this.currentPlayerMediaPeriod, timeline);
                }
            }
            this.mediaPeriodTimelines = aVarA.c();
        }

        public void k(List<MediaSource.MediaPeriodId> list, @Nullable MediaSource.MediaPeriodId mediaPeriodId, Player player) {
            this.mediaPeriodQueue = com.google.common.collect.a0.t(list);
            if (!list.isEmpty()) {
                this.playingMediaPeriod = list.get(0);
                this.readingMediaPeriod = (MediaSource.MediaPeriodId) Assertions.e(mediaPeriodId);
            }
            if (this.currentPlayerMediaPeriod == null) {
                this.currentPlayerMediaPeriod = c(player, this.mediaPeriodQueue, this.playingMediaPeriod, this.period);
            }
            m(player.getCurrentTimeline());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e1(AnalyticsListener analyticsListener, FlagSet flagSet) {
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public /* synthetic */ void O(int i10, MediaSource.MediaPeriodId mediaPeriodId) {
        androidx.media3.exoplayer.drm.j.a(this, i10, mediaPeriodId);
    }

    @Override // androidx.media3.common.Player.Listener
    public void onCues(final List<Cue> list) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 27, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.o0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).P(eventTimeW0, list);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public void onEvents(Player player, Player.Events events) {
    }

    @Override // androidx.media3.common.Player.Listener
    public void onLoadingChanged(boolean z6) {
    }

    @Override // androidx.media3.common.Player.Listener
    public void onPositionDiscontinuity(int i10) {
    }

    @Override // androidx.media3.common.Player.Listener
    public void onRenderedFirstFrame() {
    }

    private AnalyticsListener.EventTime Y0(@Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        Assertions.e(this.player);
        Timeline timelineF = mediaPeriodId == null ? null : this.mediaPeriodQueueTracker.f(mediaPeriodId);
        if (mediaPeriodId != null && timelineF != null) {
            return X0(timelineF, timelineF.l(mediaPeriodId.periodUid, this.period).windowIndex, mediaPeriodId);
        }
        int iX = this.player.x();
        Timeline currentTimeline = this.player.getCurrentTimeline();
        if (iX >= currentTimeline.t()) {
            currentTimeline = Timeline.EMPTY;
        }
        return X0(currentTimeline, iX, null);
    }

    private AnalyticsListener.EventTime Z0() {
        return Y0(this.mediaPeriodQueueTracker.e());
    }

    private AnalyticsListener.EventTime a1(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        Assertions.e(this.player);
        if (mediaPeriodId != null) {
            return this.mediaPeriodQueueTracker.f(mediaPeriodId) != null ? Y0(mediaPeriodId) : X0(Timeline.EMPTY, i10, mediaPeriodId);
        }
        Timeline currentTimeline = this.player.getCurrentTimeline();
        if (i10 >= currentTimeline.t()) {
            currentTimeline = Timeline.EMPTY;
        }
        return X0(currentTimeline, i10, null);
    }

    private AnalyticsListener.EventTime b1() {
        return Y0(this.mediaPeriodQueueTracker.g());
    }

    private AnalyticsListener.EventTime c1() {
        return Y0(this.mediaPeriodQueueTracker.h());
    }

    private AnalyticsListener.EventTime d1(@Nullable PlaybackException playbackException) {
        MediaPeriodId mediaPeriodId;
        return (!(playbackException instanceof ExoPlaybackException) || (mediaPeriodId = ((ExoPlaybackException) playbackException).mediaPeriodId) == null) ? W0() : Y0(new MediaSource.MediaPeriodId(mediaPeriodId));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s2(Player player, AnalyticsListener analyticsListener, FlagSet flagSet) {
        analyticsListener.I(player, new AnalyticsListener.Events(flagSet, this.eventTimes));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    @CallSuper
    public void G(final Player player, Looper looper) {
        Assertions.g(this.player == null || this.mediaPeriodQueueTracker.mediaPeriodQueue.isEmpty());
        this.player = (Player) Assertions.e(player);
        this.handler = this.clock.createHandler(looper, null);
        this.listeners = this.listeners.e(looper, new ListenerSet.IterationFinishedEvent() { // from class: androidx.media3.exoplayer.analytics.j
            @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
            public final void a(Object obj, FlagSet flagSet) {
                this.f355a.s2(player, (AnalyticsListener) obj, flagSet);
            }
        });
    }

    protected final AnalyticsListener.EventTime W0() {
        return Y0(this.mediaPeriodQueueTracker.d());
    }

    protected final AnalyticsListener.EventTime X0(Timeline timeline, int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        MediaSource.MediaPeriodId mediaPeriodId2 = timeline.u() ? null : mediaPeriodId;
        long jElapsedRealtime = this.clock.elapsedRealtime();
        boolean z6 = timeline.equals(this.player.getCurrentTimeline()) && i10 == this.player.x();
        long jD = 0;
        if (mediaPeriodId2 == null || !mediaPeriodId2.c()) {
            if (z6) {
                jD = this.player.getContentPosition();
            } else if (!timeline.u()) {
                jD = timeline.r(i10, this.window).d();
            }
        } else if (z6 && this.player.getCurrentAdGroupIndex() == mediaPeriodId2.adGroupIndex && this.player.getCurrentAdIndexInAdGroup() == mediaPeriodId2.adIndexInAdGroup) {
            jD = this.player.getCurrentPosition();
        }
        return new AnalyticsListener.EventTime(jElapsedRealtime, timeline, i10, mediaPeriodId2, jD, this.player.getCurrentTimeline(), this.player.x(), this.mediaPeriodQueueTracker.d(), this.player.getCurrentPosition(), this.player.c());
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onPositionDiscontinuity(final Player.PositionInfo positionInfo, final Player.PositionInfo positionInfo2, final int i10) {
        if (i10 == 1) {
            this.isSeeking = false;
        }
        this.mediaPeriodQueueTracker.j((Player) Assertions.e(this.player));
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 11, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.j0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                DefaultAnalyticsCollector.W1(eventTimeW0, i10, positionInfo, positionInfo2, (AnalyticsListener) obj);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onTimelineChanged(Timeline timeline, final int i10) {
        this.mediaPeriodQueueTracker.l((Player) Assertions.e(this.player));
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 0, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.q0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).X(eventTimeW0, i10);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void p() {
        if (this.isSeeking) {
            return;
        }
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        this.isSeeking = true;
        u2(eventTimeW0, -1, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.m
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).q0(eventTimeW0);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    @CallSuper
    public void release() {
        ((HandlerWrapper) Assertions.i(this.handler)).post(new Runnable() { // from class: androidx.media3.exoplayer.analytics.u
            @Override // java.lang.Runnable
            public final void run() {
                this.f423a.t2();
            }
        });
    }

    protected final void u2(AnalyticsListener.EventTime eventTime, int i10, ListenerSet.Event<AnalyticsListener> event) {
        this.eventTimes.put(i10, eventTime);
        this.listeners.l(i10, event);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void v(List<MediaSource.MediaPeriodId> list, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        this.mediaPeriodQueueTracker.k(list, mediaPeriodId, (Player) Assertions.e(this.player));
    }

    public DefaultAnalyticsCollector(Clock clock) {
        this.clock = (Clock) Assertions.e(clock);
        this.listeners = new ListenerSet<>(Util.R(), clock, new ListenerSet.IterationFinishedEvent() { // from class: androidx.media3.exoplayer.analytics.b
            @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
            public final void a(Object obj, FlagSet flagSet) {
                DefaultAnalyticsCollector.e1((AnalyticsListener) obj, flagSet);
            }
        });
        Timeline.Period period = new Timeline.Period();
        this.period = period;
        this.window = new Timeline.Window();
        this.mediaPeriodQueueTracker = new MediaPeriodQueueTracker(period);
        this.eventTimes = new SparseArray<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void A1(AnalyticsListener.EventTime eventTime, int i10, AnalyticsListener analyticsListener) {
        analyticsListener.m0(eventTime);
        analyticsListener.p(eventTime, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void E1(AnalyticsListener.EventTime eventTime, boolean z6, AnalyticsListener analyticsListener) {
        analyticsListener.y(eventTime, z6);
        analyticsListener.M(eventTime, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void W1(AnalyticsListener.EventTime eventTime, int i10, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, AnalyticsListener analyticsListener) {
        analyticsListener.c(eventTime, i10);
        analyticsListener.a0(eventTime, positionInfo, positionInfo2, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i1(AnalyticsListener.EventTime eventTime, String str, long j6, long j10, AnalyticsListener analyticsListener) {
        analyticsListener.h0(eventTime, str, j6);
        analyticsListener.j(eventTime, str, j10, j6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j2(AnalyticsListener.EventTime eventTime, String str, long j6, long j10, AnalyticsListener analyticsListener) {
        analyticsListener.A(eventTime, str, j6);
        analyticsListener.u0(eventTime, str, j10, j6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void m1(AnalyticsListener.EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation, AnalyticsListener analyticsListener) {
        analyticsListener.e(eventTime, format);
        analyticsListener.u(eventTime, format, decoderReuseEvaluation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void o2(AnalyticsListener.EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation, AnalyticsListener analyticsListener) {
        analyticsListener.U(eventTime, format);
        analyticsListener.z0(eventTime, format, decoderReuseEvaluation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void p2(AnalyticsListener.EventTime eventTime, VideoSize videoSize, AnalyticsListener analyticsListener) {
        analyticsListener.E(eventTime, videoSize);
        analyticsListener.l0(eventTime, videoSize.width, videoSize.height, videoSize.unappliedRotationDegrees, videoSize.pixelWidthHeightRatio);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t2() {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 1028, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.p0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).Z(eventTimeW0);
            }
        });
        this.listeners.j();
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public final void B(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
        final AnalyticsListener.EventTime eventTimeA1 = a1(i10, mediaPeriodId);
        u2(eventTimeA1, 1002, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.o
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).x0(eventTimeA1, loadEventInfo, mediaLoadData);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    @CallSuper
    public void C(AnalyticsListener analyticsListener) {
        Assertions.e(analyticsListener);
        this.listeners.c(analyticsListener);
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public final void D(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, final MediaLoadData mediaLoadData) {
        final AnalyticsListener.EventTime eventTimeA1 = a1(i10, mediaPeriodId);
        u2(eventTimeA1, 1004, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.e
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).H(eventTimeA1, mediaLoadData);
            }
        });
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public final void F(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        final AnalyticsListener.EventTime eventTimeA1 = a1(i10, mediaPeriodId);
        u2(eventTimeA1, 1027, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.c
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).f(eventTimeA1);
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public final void I(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, final MediaLoadData mediaLoadData) {
        final AnalyticsListener.EventTime eventTimeA1 = a1(i10, mediaPeriodId);
        u2(eventTimeA1, 1005, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.o1
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).x(eventTimeA1, mediaLoadData);
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public final void L(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
        final AnalyticsListener.EventTime eventTimeA1 = a1(i10, mediaPeriodId);
        u2(eventTimeA1, 1000, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.t0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).n0(eventTimeA1, loadEventInfo, mediaLoadData);
            }
        });
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public final void N(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, final int i11) {
        final AnalyticsListener.EventTime eventTimeA1 = a1(i10, mediaPeriodId);
        u2(eventTimeA1, 1022, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.d
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                DefaultAnalyticsCollector.A1(eventTimeA1, i11, (AnalyticsListener) obj);
            }
        });
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public final void R(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        final AnalyticsListener.EventTime eventTimeA1 = a1(i10, mediaPeriodId);
        u2(eventTimeA1, 1026, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.c1
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).k0(eventTimeA1);
            }
        });
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public final void S(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, final Exception exc) {
        final AnalyticsListener.EventTime eventTimeA1 = a1(i10, mediaPeriodId);
        u2(eventTimeA1, 1024, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.e1
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).l(eventTimeA1, exc);
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public final void V(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
        final AnalyticsListener.EventTime eventTimeA1 = a1(i10, mediaPeriodId);
        u2(eventTimeA1, 1001, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.r
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).i(eventTimeA1, loadEventInfo, mediaLoadData);
            }
        });
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public final void W(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        final AnalyticsListener.EventTime eventTimeA1 = a1(i10, mediaPeriodId);
        u2(eventTimeA1, 1025, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.y
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).B(eventTimeA1);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void a(final Exception exc) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 1014, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.h
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).c0(eventTimeC1, exc);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void b(final String str) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 1019, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.q1
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).j0(eventTimeC1, str);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void c(final String str) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 1012, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.n1
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).i0(eventTimeC1, str);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void d(final Exception exc) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 1029, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.i
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).h(eventTimeC1, exc);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void e(final long j6, final int i10) {
        final AnalyticsListener.EventTime eventTimeB1 = b1();
        u2(eventTimeB1, 1021, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.x
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).G(eventTimeB1, j6, i10);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void f(final long j6) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 1010, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.v
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).f0(eventTimeC1, j6);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void g(final Exception exc) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 1030, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.f
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).r(eventTimeC1, exc);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void h(final Object obj, final long j6) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 26, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.f1
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj2) {
                ((AnalyticsListener) obj2).L(eventTimeC1, obj, j6);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void i(final int i10, final long j6, final long j10) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 1011, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.c0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).g0(eventTimeC1, i10, j6, j10);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void k(final DecoderCounters decoderCounters) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 1007, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.q
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).n(eventTimeC1, decoderCounters);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void l(final DecoderCounters decoderCounters) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 1015, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.n
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).b0(eventTimeC1, decoderCounters);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void m(final Format format, @Nullable final DecoderReuseEvaluation decoderReuseEvaluation) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 1009, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.s
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                DefaultAnalyticsCollector.m1(eventTimeC1, format, decoderReuseEvaluation, (AnalyticsListener) obj);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void n(final DecoderCounters decoderCounters) {
        final AnalyticsListener.EventTime eventTimeB1 = b1();
        u2(eventTimeB1, 1013, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.t
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).Y(eventTimeB1, decoderCounters);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onAudioAttributesChanged(final AudioAttributes audioAttributes) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 20, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.m1
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).W(eventTimeC1, audioAttributes);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void onAudioDecoderInitialized(final String str, final long j6, final long j10) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 1008, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.p
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                DefaultAnalyticsCollector.i1(eventTimeC1, str, j10, j6, (AnalyticsListener) obj);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public void onAvailableCommandsChanged(final Player.Commands commands) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 13, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.k0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).q(eventTimeW0, commands);
            }
        });
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter.EventListener
    public final void onBandwidthSample(final int i10, final long j6, final long j10) {
        final AnalyticsListener.EventTime eventTimeZ0 = Z0();
        u2(eventTimeZ0, 1006, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.g
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).g(eventTimeZ0, i10, j6, j10);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public void onCues(final CueGroup cueGroup) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 27, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.u0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).t0(eventTimeW0, cueGroup);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public void onDeviceInfoChanged(final DeviceInfo deviceInfo) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 29, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.l0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).J(eventTimeW0, deviceInfo);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public void onDeviceVolumeChanged(final int i10, final boolean z6) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 30, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.n0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).N(eventTimeW0, i10, z6);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void onDroppedFrames(final int i10, final long j6) {
        final AnalyticsListener.EventTime eventTimeB1 = b1();
        u2(eventTimeB1, 1018, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.l
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).z(eventTimeB1, i10, j6);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onIsLoadingChanged(final boolean z6) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 3, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.a0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                DefaultAnalyticsCollector.E1(eventTimeW0, z6, (AnalyticsListener) obj);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public void onIsPlayingChanged(final boolean z6) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 7, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.w0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).b(eventTimeW0, z6);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public void onMaxSeekToPreviousPositionChanged(final long j6) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 18, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.h1
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).r0(eventTimeW0, j6);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onMediaItemTransition(@Nullable final MediaItem mediaItem, final int i10) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 1, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.z0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).m(eventTimeW0, mediaItem, i10);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public void onMediaMetadataChanged(final MediaMetadata mediaMetadata) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 14, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.b1
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).V(eventTimeW0, mediaMetadata);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onMetadata(final Metadata metadata) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 28, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.s0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).O(eventTimeW0, metadata);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onPlayWhenReadyChanged(final boolean z6, final int i10) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 5, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.v0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).d(eventTimeW0, z6, i10);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onPlaybackParametersChanged(final PlaybackParameters playbackParameters) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 12, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.e0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).v(eventTimeW0, playbackParameters);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onPlaybackStateChanged(final int i10) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 4, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.y0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).t(eventTimeW0, i10);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onPlaybackSuppressionReasonChanged(final int i10) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 6, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.z
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).w(eventTimeW0, i10);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onPlayerError(final PlaybackException playbackException) {
        final AnalyticsListener.EventTime eventTimeD1 = d1(playbackException);
        u2(eventTimeD1, 10, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.r0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).R(eventTimeD1, playbackException);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public void onPlayerErrorChanged(@Nullable final PlaybackException playbackException) {
        final AnalyticsListener.EventTime eventTimeD1 = d1(playbackException);
        u2(eventTimeD1, 10, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.a1
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).p0(eventTimeD1, playbackException);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onPlayerStateChanged(final boolean z6, final int i10) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, -1, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.b0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).o0(eventTimeW0, z6, i10);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public void onPlaylistMetadataChanged(final MediaMetadata mediaMetadata) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 15, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.k1
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).v0(eventTimeW0, mediaMetadata);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onRepeatModeChanged(final int i10) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 8, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.h0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).s0(eventTimeW0, i10);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public void onSeekBackIncrementChanged(final long j6) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 16, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.j1
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).S(eventTimeW0, j6);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public void onSeekForwardIncrementChanged(final long j6) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 17, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.i1
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).F(eventTimeW0, j6);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onShuffleModeEnabledChanged(final boolean z6) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 9, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.x0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).s(eventTimeW0, z6);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onSkipSilenceEnabledChanged(final boolean z6) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 23, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.l1
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).Q(eventTimeC1, z6);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onSurfaceSizeChanged(final int i10, final int i11) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 24, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.g1
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).o(eventTimeC1, i10, i11);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public void onTrackSelectionParametersChanged(final TrackSelectionParameters trackSelectionParameters) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 19, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.g0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).k(eventTimeW0, trackSelectionParameters);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public void onTracksChanged(final Tracks tracks) {
        final AnalyticsListener.EventTime eventTimeW0 = W0();
        u2(eventTimeW0, 2, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.m0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).C(eventTimeW0, tracks);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void onVideoDecoderInitialized(final String str, final long j6, final long j10) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 1016, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.k
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                DefaultAnalyticsCollector.j2(eventTimeC1, str, j10, j6, (AnalyticsListener) obj);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onVideoSizeChanged(final VideoSize videoSize) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 25, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.d1
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                DefaultAnalyticsCollector.p2(eventTimeC1, videoSize, (AnalyticsListener) obj);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public final void onVolumeChanged(final float f) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 22, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.d0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).d0(eventTimeC1, f);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void t(final Format format, @Nullable final DecoderReuseEvaluation decoderReuseEvaluation) {
        final AnalyticsListener.EventTime eventTimeC1 = c1();
        u2(eventTimeC1, 1017, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.p1
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                DefaultAnalyticsCollector.o2(eventTimeC1, format, decoderReuseEvaluation, (AnalyticsListener) obj);
            }
        });
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void u(final DecoderCounters decoderCounters) {
        final AnalyticsListener.EventTime eventTimeB1 = b1();
        u2(eventTimeB1, 1020, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.w
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).T(eventTimeB1, decoderCounters);
            }
        });
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public final void x(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        final AnalyticsListener.EventTime eventTimeA1 = a1(i10, mediaPeriodId);
        u2(eventTimeA1, 1023, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.f0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).K(eventTimeA1);
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public final void z(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData, final IOException iOException, final boolean z6) {
        final AnalyticsListener.EventTime eventTimeA1 = a1(i10, mediaPeriodId);
        u2(eventTimeA1, 1003, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.analytics.i0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).e0(eventTimeA1, loadEventInfo, mediaLoadData, iOException, z6);
            }
        });
    }
}
