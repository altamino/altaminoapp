package androidx.media3.exoplayer;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Metadata;
import androidx.media3.common.ParserException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.metadata.MetadataRenderer;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.text.TextRenderer;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
final class ExoPlayerImplInternal implements Handler.Callback, MediaPeriod.Callback, TrackSelector.InvalidationListener, MediaSourceList.MediaSourceListInfoRefreshListener, DefaultMediaClock.PlaybackParametersListener, PlayerMessage.Sender {
    private static final int ACTIVE_INTERVAL_MS = 10;
    private static final int IDLE_INTERVAL_MS = 1000;
    private static final int MSG_ADD_MEDIA_SOURCES = 18;
    private static final int MSG_ATTEMPT_RENDERER_ERROR_RECOVERY = 25;
    private static final int MSG_DO_SOME_WORK = 2;
    private static final int MSG_MOVE_MEDIA_SOURCES = 19;
    private static final int MSG_PERIOD_PREPARED = 8;
    private static final int MSG_PLAYBACK_PARAMETERS_CHANGED_INTERNAL = 16;
    private static final int MSG_PLAYLIST_UPDATE_REQUESTED = 22;
    private static final int MSG_PREPARE = 0;
    private static final int MSG_RELEASE = 7;
    private static final int MSG_REMOVE_MEDIA_SOURCES = 20;
    private static final int MSG_RENDERER_CAPABILITIES_CHANGED = 26;
    private static final int MSG_SEEK_TO = 3;
    private static final int MSG_SEND_MESSAGE = 14;
    private static final int MSG_SEND_MESSAGE_TO_TARGET_THREAD = 15;
    private static final int MSG_SET_FOREGROUND_MODE = 13;
    private static final int MSG_SET_MEDIA_SOURCES = 17;
    private static final int MSG_SET_OFFLOAD_SCHEDULING_ENABLED = 24;
    private static final int MSG_SET_PAUSE_AT_END_OF_WINDOW = 23;
    private static final int MSG_SET_PLAYBACK_PARAMETERS = 4;
    private static final int MSG_SET_PLAY_WHEN_READY = 1;
    private static final int MSG_SET_REPEAT_MODE = 11;
    private static final int MSG_SET_SEEK_PARAMETERS = 5;
    private static final int MSG_SET_SHUFFLE_ENABLED = 12;
    private static final int MSG_SET_SHUFFLE_ORDER = 21;
    private static final int MSG_SOURCE_CONTINUE_LOADING_REQUESTED = 9;
    private static final int MSG_STOP = 6;
    private static final int MSG_TRACK_SELECTION_INVALIDATED = 10;
    private static final long PLAYBACK_BUFFER_EMPTY_THRESHOLD_US = 500000;
    private static final long PLAYBACK_STUCK_AFTER_MS = 4000;
    private static final String TAG = "ExoPlayerImplInternal";
    private final long backBufferDurationUs;
    private final BandwidthMeter bandwidthMeter;
    private final Clock clock;
    private boolean deliverPendingMessageAtStartPositionRequired;
    private final TrackSelectorResult emptyTrackSelectorResult;
    private int enabledRendererCount;
    private boolean foregroundMode;
    private final HandlerWrapper handler;

    @Nullable
    private final HandlerThread internalPlaybackThread;
    private boolean isRebuffering;
    private final LivePlaybackSpeedControl livePlaybackSpeedControl;
    private final LoadControl loadControl;
    private final DefaultMediaClock mediaClock;
    private final MediaSourceList mediaSourceList;
    private int nextPendingMessageIndexHint;
    private boolean offloadSchedulingEnabled;
    private boolean pauseAtEndOfWindow;

    @Nullable
    private SeekPosition pendingInitialSeekPosition;
    private final ArrayList<PendingMessageInfo> pendingMessages;
    private boolean pendingPauseAtEndOfPeriod;

    @Nullable
    private ExoPlaybackException pendingRecoverableRendererError;
    private final Timeline.Period period;
    private PlaybackInfo playbackInfo;
    private PlaybackInfoUpdate playbackInfoUpdate;
    private final PlaybackInfoUpdateListener playbackInfoUpdateListener;
    private final Looper playbackLooper;
    private long playbackMaybeBecameStuckAtMs = -9223372036854775807L;
    private final MediaPeriodQueue queue;
    private final long releaseTimeoutMs;
    private boolean released;
    private final RendererCapabilities[] rendererCapabilities;
    private long rendererPositionUs;
    private final Renderer[] renderers;
    private final Set<Renderer> renderersToReset;
    private int repeatMode;
    private boolean requestForRendererSleep;
    private final boolean retainBackBufferFromKeyframe;
    private SeekParameters seekParameters;
    private long setForegroundModeTimeoutMs;
    private boolean shouldContinueLoading;
    private boolean shuffleModeEnabled;
    private final TrackSelector trackSelector;
    private final Timeline.Window window;

    private static final class MediaSourceListUpdateMessage {
        private final List<MediaSourceList.MediaSourceHolder> mediaSourceHolders;
        private final long positionUs;
        private final ShuffleOrder shuffleOrder;
        private final int windowIndex;

        private MediaSourceListUpdateMessage(List<MediaSourceList.MediaSourceHolder> list, ShuffleOrder shuffleOrder, int i10, long j6) {
            this.mediaSourceHolders = list;
            this.shuffleOrder = shuffleOrder;
            this.windowIndex = i10;
            this.positionUs = j6;
        }
    }

    private static final class PendingMessageInfo implements Comparable<PendingMessageInfo> {
        public final PlayerMessage message;
        public int resolvedPeriodIndex;
        public long resolvedPeriodTimeUs;

        @Nullable
        public Object resolvedPeriodUid;

        public void b(int i10, long j6, Object obj) {
            this.resolvedPeriodIndex = i10;
            this.resolvedPeriodTimeUs = j6;
            this.resolvedPeriodUid = obj;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(PendingMessageInfo pendingMessageInfo) {
            Object obj = this.resolvedPeriodUid;
            if ((obj == null) != (pendingMessageInfo.resolvedPeriodUid == null)) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int i10 = this.resolvedPeriodIndex - pendingMessageInfo.resolvedPeriodIndex;
            return i10 != 0 ? i10 : Util.o(this.resolvedPeriodTimeUs, pendingMessageInfo.resolvedPeriodTimeUs);
        }

        public PendingMessageInfo(PlayerMessage playerMessage) {
            this.message = playerMessage;
        }
    }

    public static final class PlaybackInfoUpdate {
        public int discontinuityReason;
        private boolean hasPendingChange;
        public boolean hasPlayWhenReadyChangeReason;
        public int operationAcks;
        public int playWhenReadyChangeReason;
        public PlaybackInfo playbackInfo;
        public boolean positionDiscontinuity;

        public void b(int i10) {
            this.hasPendingChange |= i10 > 0;
            this.operationAcks += i10;
        }

        public void c(int i10) {
            this.hasPendingChange = true;
            this.hasPlayWhenReadyChangeReason = true;
            this.playWhenReadyChangeReason = i10;
        }

        public void d(PlaybackInfo playbackInfo) {
            this.hasPendingChange |= this.playbackInfo != playbackInfo;
            this.playbackInfo = playbackInfo;
        }

        public void e(int i10) {
            if (this.positionDiscontinuity && this.discontinuityReason != 5) {
                Assertions.a(i10 == 5);
                return;
            }
            this.hasPendingChange = true;
            this.positionDiscontinuity = true;
            this.discontinuityReason = i10;
        }

        public PlaybackInfoUpdate(PlaybackInfo playbackInfo) {
            this.playbackInfo = playbackInfo;
        }
    }

    public interface PlaybackInfoUpdateListener {
        void a(PlaybackInfoUpdate playbackInfoUpdate);
    }

    public ExoPlayerImplInternal(Renderer[] rendererArr, TrackSelector trackSelector, TrackSelectorResult trackSelectorResult, LoadControl loadControl, BandwidthMeter bandwidthMeter, int i10, boolean z6, AnalyticsCollector analyticsCollector, SeekParameters seekParameters, LivePlaybackSpeedControl livePlaybackSpeedControl, long j6, boolean z10, Looper looper, Clock clock, PlaybackInfoUpdateListener playbackInfoUpdateListener, PlayerId playerId, Looper looper2) {
        this.playbackInfoUpdateListener = playbackInfoUpdateListener;
        this.renderers = rendererArr;
        this.trackSelector = trackSelector;
        this.emptyTrackSelectorResult = trackSelectorResult;
        this.loadControl = loadControl;
        this.bandwidthMeter = bandwidthMeter;
        this.repeatMode = i10;
        this.shuffleModeEnabled = z6;
        this.seekParameters = seekParameters;
        this.livePlaybackSpeedControl = livePlaybackSpeedControl;
        this.releaseTimeoutMs = j6;
        this.setForegroundModeTimeoutMs = j6;
        this.pauseAtEndOfWindow = z10;
        this.clock = clock;
        this.backBufferDurationUs = loadControl.getBackBufferDurationUs();
        this.retainBackBufferFromKeyframe = loadControl.retainBackBufferFromKeyframe();
        PlaybackInfo playbackInfoK = PlaybackInfo.k(trackSelectorResult);
        this.playbackInfo = playbackInfoK;
        this.playbackInfoUpdate = new PlaybackInfoUpdate(playbackInfoK);
        this.rendererCapabilities = new RendererCapabilities[rendererArr.length];
        RendererCapabilities.Listener listenerD = trackSelector.d();
        for (int i11 = 0; i11 < rendererArr.length; i11++) {
            rendererArr[i11].h(i11, playerId);
            this.rendererCapabilities[i11] = rendererArr[i11].getCapabilities();
            if (listenerD != null) {
                this.rendererCapabilities[i11].i(listenerD);
            }
        }
        this.mediaClock = new DefaultMediaClock(this, clock);
        this.pendingMessages = new ArrayList<>();
        this.renderersToReset = com.google.common.collect.f1.h();
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        trackSelector.e(this, bandwidthMeter);
        this.deliverPendingMessageAtStartPositionRequired = true;
        HandlerWrapper handlerWrapperCreateHandler = clock.createHandler(looper, null);
        this.queue = new MediaPeriodQueue(analyticsCollector, handlerWrapperCreateHandler);
        this.mediaSourceList = new MediaSourceList(this, analyticsCollector, handlerWrapperCreateHandler, playerId);
        if (looper2 != null) {
            this.internalPlaybackThread = null;
            this.playbackLooper = looper2;
        } else {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
            this.internalPlaybackThread = handlerThread;
            handlerThread.start();
            this.playbackLooper = handlerThread.getLooper();
        }
        this.handler = clock.createHandler(this.playbackLooper, this);
    }

    @CheckResult
    private PlaybackInfo L(MediaSource.MediaPeriodId mediaPeriodId, long j6, long j10, long j11, boolean z6, int i10) {
        List<Metadata> listX;
        TrackGroupArray trackGroupArray;
        TrackSelectorResult trackSelectorResult;
        this.deliverPendingMessageAtStartPositionRequired = (!this.deliverPendingMessageAtStartPositionRequired && j6 == this.playbackInfo.positionUs && mediaPeriodId.equals(this.playbackInfo.periodId)) ? false : true;
        t0();
        PlaybackInfo playbackInfo = this.playbackInfo;
        TrackGroupArray trackGroupArray2 = playbackInfo.trackGroups;
        TrackSelectorResult trackSelectorResult2 = playbackInfo.trackSelectorResult;
        List<Metadata> list = playbackInfo.staticMetadata;
        if (this.mediaSourceList.t()) {
            MediaPeriodHolder mediaPeriodHolderR = this.queue.r();
            TrackGroupArray trackGroupArrayN = mediaPeriodHolderR == null ? TrackGroupArray.EMPTY : mediaPeriodHolderR.n();
            TrackSelectorResult trackSelectorResultO = mediaPeriodHolderR == null ? this.emptyTrackSelectorResult : mediaPeriodHolderR.o();
            com.google.common.collect.a0<Metadata> a0VarV = v(trackSelectorResultO.selections);
            if (mediaPeriodHolderR != null) {
                MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolderR.info;
                if (mediaPeriodInfo.requestedContentPositionUs != j10) {
                    mediaPeriodHolderR.info = mediaPeriodInfo.a(j10);
                }
            }
            trackGroupArray = trackGroupArrayN;
            trackSelectorResult = trackSelectorResultO;
            listX = a0VarV;
        } else if (mediaPeriodId.equals(this.playbackInfo.periodId)) {
            listX = list;
            trackGroupArray = trackGroupArray2;
            trackSelectorResult = trackSelectorResult2;
        } else {
            trackGroupArray = TrackGroupArray.EMPTY;
            trackSelectorResult = this.emptyTrackSelectorResult;
            listX = com.google.common.collect.a0.x();
        }
        if (z6) {
            this.playbackInfoUpdate.e(i10);
        }
        return this.playbackInfo.d(mediaPeriodId, j6, j10, j11, C(), trackGroupArray, trackSelectorResult, listX);
    }

    private static boolean O(boolean z6, MediaSource.MediaPeriodId mediaPeriodId, long j6, MediaSource.MediaPeriodId mediaPeriodId2, Timeline.Period period, long j10) {
        if (z6 || j6 != j10 || !mediaPeriodId.periodUid.equals(mediaPeriodId2.periodUid)) {
            return false;
        }
        if (mediaPeriodId.c() && period.v(mediaPeriodId.adGroupIndex)) {
            return (period.k(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup) == 4 || period.k(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup) == 2) ? false : true;
        }
        return mediaPeriodId2.c() && period.v(mediaPeriodId2.adGroupIndex);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0045  */
    private void Z() throws ExoPlaybackException {
        boolean z6;
        boolean z10 = false;
        while (e1()) {
            if (z10) {
                W();
            }
            MediaPeriodHolder mediaPeriodHolder = (MediaPeriodHolder) Assertions.e(this.queue.b());
            if (this.playbackInfo.periodId.periodUid.equals(mediaPeriodHolder.info.id.periodUid)) {
                MediaSource.MediaPeriodId mediaPeriodId = this.playbackInfo.periodId;
                if (mediaPeriodId.adGroupIndex == -1) {
                    MediaSource.MediaPeriodId mediaPeriodId2 = mediaPeriodHolder.info.id;
                    if (mediaPeriodId2.adGroupIndex != -1 || mediaPeriodId.nextAdGroupIndex == mediaPeriodId2.nextAdGroupIndex) {
                        z6 = false;
                    } else {
                        z6 = true;
                    }
                } else {
                    z6 = false;
                }
            } else {
                z6 = false;
            }
            MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.info;
            MediaSource.MediaPeriodId mediaPeriodId3 = mediaPeriodInfo.id;
            long j6 = mediaPeriodInfo.startPositionUs;
            this.playbackInfo = L(mediaPeriodId3, j6, mediaPeriodInfo.requestedContentPositionUs, j6, !z6, 0);
            t0();
            q1();
            z10 = true;
        }
    }

    private void Z0(SeekParameters seekParameters) {
        this.seekParameters = seekParameters;
    }

    private void j1() throws ExoPlaybackException {
        this.isRebuffering = false;
        this.mediaClock.f();
        for (Renderer renderer : this.renderers) {
            if (Q(renderer)) {
                renderer.start();
            }
        }
    }

    private void l0() {
        s0(true, false, true, false);
        m0();
        this.loadControl.onReleased();
        d1(1);
        HandlerThread handlerThread = this.internalPlaybackThread;
        if (handlerThread != null) {
            handlerThread.quit();
        }
        synchronized (this) {
            this.released = true;
            notifyAll();
        }
    }

    private void l1(boolean z6, boolean z10) {
        s0(z6 || !this.foregroundMode, false, true, false);
        this.playbackInfoUpdate.b(z10 ? 1 : 0);
        this.loadControl.onStopped();
        d1(1);
    }

    private void m0() {
        for (int i10 = 0; i10 < this.renderers.length; i10++) {
            this.rendererCapabilities[i10].e();
            this.renderers[i10].release();
        }
    }

    private synchronized void t1(com.google.common.base.u<Boolean> uVar, long j6) {
        long jElapsedRealtime = this.clock.elapsedRealtime() + j6;
        boolean z6 = false;
        while (!uVar.get().booleanValue() && j6 > 0) {
            try {
                this.clock.a();
                wait(j6);
            } catch (InterruptedException unused) {
                z6 = true;
            }
            j6 = jElapsedRealtime - this.clock.elapsedRealtime();
        }
        if (z6) {
            Thread.currentThread().interrupt();
        }
    }

    private static boolean w0(PendingMessageInfo pendingMessageInfo, Timeline timeline, Timeline timeline2, int i10, boolean z6, Timeline.Window window, Timeline.Period period) {
        Object obj = pendingMessageInfo.resolvedPeriodUid;
        if (obj == null) {
            Pair<Object, Long> pairZ0 = z0(timeline, new SeekPosition(pendingMessageInfo.message.h(), pendingMessageInfo.message.d(), pendingMessageInfo.message.f() == Long.MIN_VALUE ? -9223372036854775807L : Util.K0(pendingMessageInfo.message.f())), false, i10, z6, window, period);
            if (pairZ0 == null) {
                return false;
            }
            pendingMessageInfo.b(timeline.f(pairZ0.first), ((Long) pairZ0.second).longValue(), pairZ0.first);
            if (pendingMessageInfo.message.f() == Long.MIN_VALUE) {
                v0(timeline, pendingMessageInfo, window, period);
            }
            return true;
        }
        int iF = timeline.f(obj);
        if (iF == -1) {
            return false;
        }
        if (pendingMessageInfo.message.f() == Long.MIN_VALUE) {
            v0(timeline, pendingMessageInfo, window, period);
            return true;
        }
        pendingMessageInfo.resolvedPeriodIndex = iF;
        timeline2.l(pendingMessageInfo.resolvedPeriodUid, period);
        if (period.isPlaceholder && timeline2.r(period.windowIndex, window).firstPeriodIndex == timeline2.f(pendingMessageInfo.resolvedPeriodUid)) {
            Pair<Object, Long> pairN = timeline.n(window, period, timeline.l(pendingMessageInfo.resolvedPeriodUid, period).windowIndex, pendingMessageInfo.resolvedPeriodTimeUs + period.r());
            pendingMessageInfo.b(timeline.f(pairN.first), ((Long) pairN.second).longValue(), pairN.first);
        }
        return true;
    }

    private static Format[] x(ExoTrackSelection exoTrackSelection) {
        int length = exoTrackSelection != null ? exoTrackSelection.length() : 0;
        Format[] formatArr = new Format[length];
        for (int i10 = 0; i10 < length; i10++) {
            formatArr[i10] = exoTrackSelection.getFormat(i10);
        }
        return formatArr;
    }

    @Nullable
    private static Pair<Object, Long> z0(Timeline timeline, SeekPosition seekPosition, boolean z6, int i10, boolean z10, Timeline.Window window, Timeline.Period period) {
        Object objA0;
        Timeline timeline2 = seekPosition.timeline;
        if (timeline.u()) {
            return null;
        }
        Timeline timeline3 = timeline2.u() ? timeline : timeline2;
        try {
            Pair<Object, Long> pairN = timeline3.n(window, period, seekPosition.windowIndex, seekPosition.windowPositionUs);
            if (timeline.equals(timeline3)) {
                return pairN;
            }
            if (timeline.f(pairN.first) != -1) {
                return (timeline3.l(pairN.first, period).isPlaceholder && timeline3.r(period.windowIndex, window).firstPeriodIndex == timeline3.f(pairN.first)) ? timeline.n(window, period, timeline.l(pairN.first, period).windowIndex, seekPosition.windowPositionUs) : pairN;
            }
            if (z6 && (objA0 = A0(window, period, i10, z10, pairN.first, timeline3, timeline)) != null) {
                return timeline.n(window, period, timeline.l(objA0, period).windowIndex, -9223372036854775807L);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    public Looper B() {
        return this.playbackLooper;
    }

    public synchronized boolean M0(boolean z6) {
        if (!this.released && this.playbackLooper.getThread().isAlive()) {
            if (z6) {
                this.handler.obtainMessage(13, 1, 0).a();
                return true;
            }
            final AtomicBoolean atomicBoolean = new AtomicBoolean();
            this.handler.obtainMessage(13, 0, 0, atomicBoolean).a();
            t1(new com.google.common.base.u() { // from class: androidx.media3.exoplayer.r1
                @Override // com.google.common.base.u
                public final Object get() {
                    return Boolean.valueOf(atomicBoolean.get());
                }
            }, this.setForegroundModeTimeoutMs);
            return atomicBoolean.get();
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.PlayerMessage.Sender
    public synchronized void c(PlayerMessage playerMessage) {
        if (!this.released && this.playbackLooper.getThread().isAlive()) {
            this.handler.obtainMessage(14, playerMessage).a();
            return;
        }
        Log.i(TAG, "Ignoring messages sent after release.");
        playerMessage.k(false);
    }

    public synchronized boolean k0() {
        if (!this.released && this.playbackLooper.getThread().isAlive()) {
            this.handler.sendEmptyMessage(7);
            t1(new com.google.common.base.u() { // from class: androidx.media3.exoplayer.q1
                @Override // com.google.common.base.u
                public final Object get() {
                    return this.f579a.T();
                }
            }, this.releaseTimeoutMs);
            return this.released;
        }
        return true;
    }

    public void u(long j6) {
        this.setForegroundModeTimeoutMs = j6;
    }

    private static class MoveMediaItemsMessage {
        public final int fromIndex;
        public final int newFromIndex;
        public final ShuffleOrder shuffleOrder;
        public final int toIndex;

        public MoveMediaItemsMessage(int i10, int i11, int i12, ShuffleOrder shuffleOrder) {
            this.fromIndex = i10;
            this.toIndex = i11;
            this.newFromIndex = i12;
            this.shuffleOrder = shuffleOrder;
        }
    }

    private static final class PositionUpdateForPlaylistChange {
        public final boolean endPlayback;
        public final boolean forceBufferingState;
        public final MediaSource.MediaPeriodId periodId;
        public final long periodPositionUs;
        public final long requestedContentPositionUs;
        public final boolean setTargetLiveOffset;

        public PositionUpdateForPlaylistChange(MediaSource.MediaPeriodId mediaPeriodId, long j6, long j10, boolean z6, boolean z10, boolean z11) {
            this.periodId = mediaPeriodId;
            this.periodPositionUs = j6;
            this.requestedContentPositionUs = j10;
            this.forceBufferingState = z6;
            this.endPlayback = z10;
            this.setTargetLiveOffset = z11;
        }
    }

    private static final class SeekPosition {
        public final Timeline timeline;
        public final int windowIndex;
        public final long windowPositionUs;

        public SeekPosition(Timeline timeline, int i10, long j6) {
            this.timeline = timeline;
            this.windowIndex = i10;
            this.windowPositionUs = j6;
        }
    }

    private void B0(long j6, long j10) {
        this.handler.sendEmptyMessageAtTime(2, j6 + j10);
    }

    private long C() {
        return D(this.playbackInfo.bufferedPositionUs);
    }

    private long D(long j6) {
        MediaPeriodHolder mediaPeriodHolderL = this.queue.l();
        if (mediaPeriodHolderL == null) {
            return 0L;
        }
        return Math.max(0L, j6 - mediaPeriodHolderL.y(this.rendererPositionUs));
    }

    private void D0(boolean z6) throws ExoPlaybackException {
        MediaSource.MediaPeriodId mediaPeriodId = this.queue.r().info.id;
        long jG0 = G0(mediaPeriodId, this.playbackInfo.positionUs, true, false);
        if (jG0 != this.playbackInfo.positionUs) {
            PlaybackInfo playbackInfo = this.playbackInfo;
            this.playbackInfo = L(mediaPeriodId, jG0, playbackInfo.requestedContentPositionUs, playbackInfo.discontinuityStartPositionUs, z6, 5);
        }
    }

    private void E(MediaPeriod mediaPeriod) {
        if (this.queue.y(mediaPeriod)) {
            this.queue.C(this.rendererPositionUs);
            V();
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00ac A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b6 A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00bc A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00c5 A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00cf A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:53:0x0114  */
    /* JADX WARN: Code duplicated, block: B:56:0x011b  */
    /* JADX WARN: Code duplicated, block: B:57:0x011d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0127  */
    private void E0(SeekPosition seekPosition) throws Throwable {
        long jLongValue;
        long j6;
        boolean z6;
        MediaSource.MediaPeriodId mediaPeriodId;
        long j10;
        long j11;
        long j12;
        long jA;
        boolean z10;
        long jF0;
        long j13;
        MediaPeriodHolder mediaPeriodHolderR;
        PlaybackInfo playbackInfo;
        int i10;
        this.playbackInfoUpdate.b(1);
        Pair<Object, Long> pairZ0 = z0(this.playbackInfo.timeline, seekPosition, true, this.repeatMode, this.shuffleModeEnabled, this.window, this.period);
        try {
            if (pairZ0 != null) {
                Object obj = pairZ0.first;
                jLongValue = ((Long) pairZ0.second).longValue();
                long j14 = seekPosition.windowPositionUs == -9223372036854775807L ? -9223372036854775807L : jLongValue;
                MediaSource.MediaPeriodId mediaPeriodIdF = this.queue.F(this.playbackInfo.timeline, obj, jLongValue);
                if (mediaPeriodIdF.c()) {
                    this.playbackInfo.timeline.l(mediaPeriodIdF.periodUid, this.period);
                    j10 = this.period.o(mediaPeriodIdF.adGroupIndex) == mediaPeriodIdF.adIndexInAdGroup ? this.period.j() : 0L;
                    j11 = j14;
                    mediaPeriodId = mediaPeriodIdF;
                    z6 = true;
                } else {
                    j6 = j14;
                    z6 = seekPosition.windowPositionUs == -9223372036854775807L;
                    mediaPeriodId = mediaPeriodIdF;
                }
                if (this.playbackInfo.timeline.u()) {
                    if (pairZ0 == null) {
                        if (this.playbackInfo.playbackState != 1) {
                            d1(4);
                        }
                        s0(false, true, false, true);
                    } else {
                        if (mediaPeriodId.equals(this.playbackInfo.periodId)) {
                            mediaPeriodHolderR = this.queue.r();
                            if (mediaPeriodHolderR == null && mediaPeriodHolderR.prepared && j10 != 0) {
                                jA = mediaPeriodHolderR.mediaPeriod.a(j10, this.seekParameters);
                            } else {
                                jA = j10;
                            }
                            if (Util.q1(jA) == Util.q1(this.playbackInfo.positionUs) && ((i10 = (playbackInfo = this.playbackInfo).playbackState) == 2 || i10 == 3)) {
                                long j15 = playbackInfo.positionUs;
                                this.playbackInfo = L(mediaPeriodId, j15, j11, j15, z6, 2);
                                return;
                            }
                        } else {
                            jA = j10;
                        }
                        if (this.playbackInfo.playbackState == 4) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        jF0 = F0(mediaPeriodId, jA, z10);
                        z6 |= j10 != jF0;
                        try {
                            PlaybackInfo playbackInfo2 = this.playbackInfo;
                            Timeline timeline = playbackInfo2.timeline;
                            r1(timeline, mediaPeriodId, timeline, playbackInfo2.periodId, j11, true);
                            j13 = jF0;
                        } catch (Throwable th) {
                            th = th;
                            j12 = jF0;
                            this.playbackInfo = L(mediaPeriodId, j12, j11, j12, z6, 2);
                            throw th;
                        }
                    }
                    this.playbackInfo = L(mediaPeriodId, j13, j11, j13, z6, 2);
                    return;
                }
                this.pendingInitialSeekPosition = seekPosition;
                j13 = j10;
                this.playbackInfo = L(mediaPeriodId, j13, j11, j13, z6, 2);
                return;
            }
            Pair<MediaSource.MediaPeriodId, Long> pairA = A(this.playbackInfo.timeline);
            mediaPeriodId = (MediaSource.MediaPeriodId) pairA.first;
            jLongValue = ((Long) pairA.second).longValue();
            z6 = !this.playbackInfo.timeline.u();
            j6 = -9223372036854775807L;
            if (this.playbackInfo.timeline.u()) {
                if (pairZ0 == null) {
                    if (this.playbackInfo.playbackState != 1) {
                        d1(4);
                    }
                    s0(false, true, false, true);
                } else {
                    if (mediaPeriodId.equals(this.playbackInfo.periodId)) {
                        mediaPeriodHolderR = this.queue.r();
                        if (mediaPeriodHolderR == null) {
                            jA = j10;
                        } else {
                            jA = j10;
                        }
                        if (Util.q1(jA) == Util.q1(this.playbackInfo.positionUs)) {
                            long j16 = playbackInfo.positionUs;
                            this.playbackInfo = L(mediaPeriodId, j16, j11, j16, z6, 2);
                            return;
                        }
                    } else {
                        jA = j10;
                    }
                    if (this.playbackInfo.playbackState == 4) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    jF0 = F0(mediaPeriodId, jA, z10);
                    z6 |= j10 != jF0;
                    PlaybackInfo playbackInfo3 = this.playbackInfo;
                    Timeline timeline2 = playbackInfo3.timeline;
                    r1(timeline2, mediaPeriodId, timeline2, playbackInfo3.periodId, j11, true);
                    j13 = jF0;
                }
                this.playbackInfo = L(mediaPeriodId, j13, j11, j13, z6, 2);
                return;
            }
            this.pendingInitialSeekPosition = seekPosition;
            j13 = j10;
            this.playbackInfo = L(mediaPeriodId, j13, j11, j13, z6, 2);
            return;
        } catch (Throwable th2) {
            th = th2;
            j12 = j10;
        }
        j10 = jLongValue;
        j11 = j6;
    }

    private long F0(MediaSource.MediaPeriodId mediaPeriodId, long j6, boolean z6) throws ExoPlaybackException {
        return G0(mediaPeriodId, j6, this.queue.r() != this.queue.s(), z6);
    }

    private void G(boolean z6) {
        MediaPeriodHolder mediaPeriodHolderL = this.queue.l();
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodHolderL == null ? this.playbackInfo.periodId : mediaPeriodHolderL.info.id;
        boolean z10 = !this.playbackInfo.loadingMediaPeriodId.equals(mediaPeriodId);
        if (z10) {
            this.playbackInfo = this.playbackInfo.c(mediaPeriodId);
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        playbackInfo.bufferedPositionUs = mediaPeriodHolderL == null ? playbackInfo.positionUs : mediaPeriodHolderL.i();
        this.playbackInfo.totalBufferedDurationUs = C();
        if ((z10 || z6) && mediaPeriodHolderL != null && mediaPeriodHolderL.prepared) {
            o1(mediaPeriodHolderL.info.id, mediaPeriodHolderL.n(), mediaPeriodHolderL.o());
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:52:0x00da  */
    /* JADX WARN: Code duplicated, block: B:53:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:60:0x00fe A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:66:0x0113  */
    /* JADX WARN: Code duplicated, block: B:69:0x011f  */
    /* JADX WARN: Code duplicated, block: B:70:0x0122  */
    /* JADX WARN: Code duplicated, block: B:74:0x014a  */
    /* JADX WARN: Code duplicated, block: B:79:0x015b  */
    /* JADX WARN: Code duplicated, block: B:84:0x0178  */
    /* JADX WARN: Code duplicated, block: B:86:0x0182 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:92:0x0197  */
    /* JADX WARN: Code duplicated, block: B:95:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:96:0x01a6  */
    /* JADX WARN: Not initialized variable reg: 25, insn: 0x007c: MOVE (r5 I:??[long, double]) = (r25 I:??[long, double]) (LINE:126), block:B:27:0x007b */
    private void H(Timeline timeline, boolean z6) throws Throwable {
        int i10;
        long j6;
        Object obj;
        boolean z10;
        int i11;
        long j10;
        long j11;
        long jF0;
        long j12;
        Object obj2;
        boolean z11;
        int i12;
        PositionUpdateForPlaylistChange positionUpdateForPlaylistChangeY0 = y0(timeline, this.playbackInfo, this.pendingInitialSeekPosition, this.queue, this.repeatMode, this.shuffleModeEnabled, this.window, this.period);
        MediaSource.MediaPeriodId mediaPeriodId = positionUpdateForPlaylistChangeY0.periodId;
        long j13 = positionUpdateForPlaylistChangeY0.requestedContentPositionUs;
        boolean z12 = positionUpdateForPlaylistChangeY0.forceBufferingState;
        long j14 = positionUpdateForPlaylistChangeY0.periodPositionUs;
        int i13 = 1;
        boolean z13 = (this.playbackInfo.periodId.equals(mediaPeriodId) && j14 == this.playbackInfo.positionUs) ? false : true;
        try {
            if (positionUpdateForPlaylistChangeY0.endPlayback) {
                if (this.playbackInfo.playbackState != 1) {
                    d1(4);
                }
                s0(false, false, false, true);
            }
            try {
                if (z13) {
                    i10 = 4;
                    j11 = j14;
                    i13 = -1;
                    if (timeline.u()) {
                        jF0 = j11;
                    } else {
                        try {
                            for (MediaPeriodHolder mediaPeriodHolderR = this.queue.r(); mediaPeriodHolderR != null; mediaPeriodHolderR = mediaPeriodHolderR.j()) {
                                if (mediaPeriodHolderR.info.id.equals(mediaPeriodId)) {
                                    mediaPeriodHolderR.info = this.queue.t(timeline, mediaPeriodHolderR.info);
                                    mediaPeriodHolderR.A();
                                }
                            }
                            j14 = j11;
                            try {
                                jF0 = F0(mediaPeriodId, j14, z12);
                            } catch (Throwable th) {
                                th = th;
                                PlaybackInfo playbackInfo = this.playbackInfo;
                                j6 = j14;
                                r1(timeline, mediaPeriodId, playbackInfo.timeline, playbackInfo.periodId, positionUpdateForPlaylistChangeY0.setTargetLiveOffset ? j14 : -9223372036854775807L, false);
                                if (z13) {
                                    PlaybackInfo playbackInfo2 = this.playbackInfo;
                                    obj = playbackInfo2.periodId.periodUid;
                                    Timeline timeline2 = playbackInfo2.timeline;
                                    if (z13) {
                                        z10 = false;
                                    } else {
                                        z10 = false;
                                    }
                                    long j15 = this.playbackInfo.discontinuityStartPositionUs;
                                    if (timeline.f(obj) == i13) {
                                        i11 = i10;
                                    } else {
                                        i11 = 3;
                                    }
                                    this.playbackInfo = L(mediaPeriodId, j6, j13, j15, z10, i11);
                                } else {
                                    PlaybackInfo playbackInfo3 = this.playbackInfo;
                                    obj = playbackInfo3.periodId.periodUid;
                                    Timeline timeline3 = playbackInfo3.timeline;
                                    if (z13) {
                                        z10 = false;
                                    } else {
                                        z10 = false;
                                    }
                                    long j16 = this.playbackInfo.discontinuityStartPositionUs;
                                    if (timeline.f(obj) == i13) {
                                        i11 = i10;
                                    } else {
                                        i11 = 3;
                                    }
                                    this.playbackInfo = L(mediaPeriodId, j6, j13, j16, z10, i11);
                                }
                                t0();
                                x0(timeline, this.playbackInfo.timeline);
                                this.playbackInfo = this.playbackInfo.j(timeline);
                                if (!timeline.u()) {
                                    this.pendingInitialSeekPosition = 0;
                                }
                                G(false);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            j14 = j11;
                        }
                    }
                    PlaybackInfo playbackInfo4 = this.playbackInfo;
                    Timeline timeline4 = playbackInfo4.timeline;
                    MediaSource.MediaPeriodId mediaPeriodId2 = playbackInfo4.periodId;
                    if (positionUpdateForPlaylistChangeY0.setTargetLiveOffset) {
                        j12 = jF0;
                    } else {
                        j12 = -9223372036854775807L;
                    }
                    r1(timeline, mediaPeriodId, timeline4, mediaPeriodId2, j12, false);
                    if (z13) {
                        PlaybackInfo playbackInfo5 = this.playbackInfo;
                        obj2 = playbackInfo5.periodId.periodUid;
                        Timeline timeline5 = playbackInfo5.timeline;
                        if (z13) {
                            z11 = false;
                        } else {
                            z11 = false;
                        }
                        long j17 = this.playbackInfo.discontinuityStartPositionUs;
                        if (timeline.f(obj2) == i13) {
                            i12 = i10;
                        } else {
                            i12 = 3;
                        }
                        this.playbackInfo = L(mediaPeriodId, jF0, j13, j17, z11, i12);
                    } else {
                        PlaybackInfo playbackInfo6 = this.playbackInfo;
                        obj2 = playbackInfo6.periodId.periodUid;
                        Timeline timeline6 = playbackInfo6.timeline;
                        if (z13) {
                            z11 = false;
                        } else {
                            z11 = false;
                        }
                        long j18 = this.playbackInfo.discontinuityStartPositionUs;
                        if (timeline.f(obj2) == i13) {
                            i12 = i10;
                        } else {
                            i12 = 3;
                        }
                        this.playbackInfo = L(mediaPeriodId, jF0, j13, j18, z11, i12);
                    }
                    t0();
                    x0(timeline, this.playbackInfo.timeline);
                    this.playbackInfo = this.playbackInfo.j(timeline);
                    if (!timeline.u()) {
                        this.pendingInitialSeekPosition = null;
                    }
                    G(false);
                }
                try {
                    try {
                        i13 = -1;
                        i10 = 4;
                        j11 = j14;
                        if (!this.queue.J(timeline, this.rendererPositionUs, z())) {
                            D0(false);
                        }
                        jF0 = j11;
                        PlaybackInfo playbackInfo7 = this.playbackInfo;
                        Timeline timeline7 = playbackInfo7.timeline;
                        MediaSource.MediaPeriodId mediaPeriodId3 = playbackInfo7.periodId;
                        if (positionUpdateForPlaylistChangeY0.setTargetLiveOffset) {
                            j12 = jF0;
                        } else {
                            j12 = -9223372036854775807L;
                        }
                        r1(timeline, mediaPeriodId, timeline7, mediaPeriodId3, j12, false);
                        if (z13 || j13 != this.playbackInfo.requestedContentPositionUs) {
                            PlaybackInfo playbackInfo8 = this.playbackInfo;
                            obj2 = playbackInfo8.periodId.periodUid;
                            Timeline timeline8 = playbackInfo8.timeline;
                            if (z13 || !z6 || timeline8.u() || timeline8.l(obj2, this.period).isPlaceholder) {
                                z11 = false;
                            } else {
                                z11 = true;
                            }
                            long j19 = this.playbackInfo.discontinuityStartPositionUs;
                            if (timeline.f(obj2) == i13) {
                                i12 = i10;
                            } else {
                                i12 = 3;
                            }
                            this.playbackInfo = L(mediaPeriodId, jF0, j13, j19, z11, i12);
                        }
                        t0();
                        x0(timeline, this.playbackInfo.timeline);
                        this.playbackInfo = this.playbackInfo.j(timeline);
                        if (!timeline.u()) {
                            this.pendingInitialSeekPosition = null;
                        }
                        G(false);
                    } catch (Throwable th3) {
                        th = th3;
                        i13 = -1;
                        i10 = 4;
                        PlaybackInfo playbackInfo9 = this.playbackInfo;
                        j6 = j14;
                        r1(timeline, mediaPeriodId, playbackInfo9.timeline, playbackInfo9.periodId, positionUpdateForPlaylistChangeY0.setTargetLiveOffset ? j14 : -9223372036854775807L, false);
                        if (z13 || j13 != this.playbackInfo.requestedContentPositionUs) {
                            PlaybackInfo playbackInfo10 = this.playbackInfo;
                            obj = playbackInfo10.periodId.periodUid;
                            Timeline timeline9 = playbackInfo10.timeline;
                            if (z13 || !z6 || timeline9.u() || timeline9.l(obj, this.period).isPlaceholder) {
                                z10 = false;
                            } else {
                                z10 = true;
                            }
                            long j110 = this.playbackInfo.discontinuityStartPositionUs;
                            if (timeline.f(obj) == i13) {
                                i11 = i10;
                            } else {
                                i11 = 3;
                            }
                            this.playbackInfo = L(mediaPeriodId, j6, j13, j110, z10, i11);
                        }
                        t0();
                        x0(timeline, this.playbackInfo.timeline);
                        this.playbackInfo = this.playbackInfo.j(timeline);
                        if (!timeline.u()) {
                            this.pendingInitialSeekPosition = 0;
                        }
                        G(false);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    i10 = 4;
                    i13 = -1;
                }
            } catch (Throwable th5) {
                th = th5;
                j14 = j10;
            }
        } catch (Throwable th6) {
            th = th6;
            i10 = 4;
            i13 = -1;
        }
    }

    private void I(MediaPeriod mediaPeriod) throws ExoPlaybackException {
        if (this.queue.y(mediaPeriod)) {
            MediaPeriodHolder mediaPeriodHolderL = this.queue.l();
            mediaPeriodHolderL.p(this.mediaClock.getPlaybackParameters().speed, this.playbackInfo.timeline);
            o1(mediaPeriodHolderL.info.id, mediaPeriodHolderL.n(), mediaPeriodHolderL.o());
            if (mediaPeriodHolderL == this.queue.r()) {
                u0(mediaPeriodHolderL.info.startPositionUs);
                r();
                PlaybackInfo playbackInfo = this.playbackInfo;
                MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.periodId;
                long j6 = mediaPeriodHolderL.info.startPositionUs;
                this.playbackInfo = L(mediaPeriodId, j6, playbackInfo.requestedContentPositionUs, j6, false, 5);
            }
            V();
        }
    }

    private void J(PlaybackParameters playbackParameters, float f, boolean z6, boolean z10) throws ExoPlaybackException {
        if (z6) {
            if (z10) {
                this.playbackInfoUpdate.b(1);
            }
            this.playbackInfo = this.playbackInfo.g(playbackParameters);
        }
        s1(playbackParameters.speed);
        for (Renderer renderer : this.renderers) {
            if (renderer != null) {
                renderer.d(f, playbackParameters.speed);
            }
        }
    }

    private void K(PlaybackParameters playbackParameters, boolean z6) throws ExoPlaybackException {
        J(playbackParameters, playbackParameters.speed, true, z6);
    }

    private void K0(long j6) {
        for (Renderer renderer : this.renderers) {
            if (renderer.getStream() != null) {
                L0(renderer, j6);
            }
        }
    }

    private boolean N() {
        MediaPeriodHolder mediaPeriodHolderS = this.queue.s();
        if (!mediaPeriodHolderS.prepared) {
            return false;
        }
        int i10 = 0;
        while (true) {
            Renderer[] rendererArr = this.renderers;
            if (i10 >= rendererArr.length) {
                return true;
            }
            Renderer renderer = rendererArr[i10];
            SampleStream sampleStream = mediaPeriodHolderS.sampleStreams[i10];
            if (renderer.getStream() != sampleStream || (sampleStream != null && !renderer.hasReadStreamToEnd() && !M(renderer, mediaPeriodHolderS))) {
                return false;
            }
            i10++;
        }
    }

    private void N0(boolean z6, @Nullable AtomicBoolean atomicBoolean) {
        if (this.foregroundMode != z6) {
            this.foregroundMode = z6;
            if (!z6) {
                for (Renderer renderer : this.renderers) {
                    if (!Q(renderer) && this.renderersToReset.remove(renderer)) {
                        renderer.reset();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    private void O0(PlaybackParameters playbackParameters) {
        this.handler.removeMessages(16);
        this.mediaClock.b(playbackParameters);
    }

    private boolean P() {
        MediaPeriodHolder mediaPeriodHolderL = this.queue.l();
        return (mediaPeriodHolderL == null || mediaPeriodHolderL.k() == Long.MIN_VALUE) ? false : true;
    }

    private void P0(MediaSourceListUpdateMessage mediaSourceListUpdateMessage) throws Throwable {
        this.playbackInfoUpdate.b(1);
        if (mediaSourceListUpdateMessage.windowIndex != -1) {
            this.pendingInitialSeekPosition = new SeekPosition(new PlaylistTimeline(mediaSourceListUpdateMessage.mediaSourceHolders, mediaSourceListUpdateMessage.shuffleOrder), mediaSourceListUpdateMessage.windowIndex, mediaSourceListUpdateMessage.positionUs);
        }
        H(this.mediaSourceList.D(mediaSourceListUpdateMessage.mediaSourceHolders, mediaSourceListUpdateMessage.shuffleOrder), false);
    }

    private boolean R() {
        MediaPeriodHolder mediaPeriodHolderR = this.queue.r();
        long j6 = mediaPeriodHolderR.info.durationUs;
        return mediaPeriodHolderR.prepared && (j6 == -9223372036854775807L || this.playbackInfo.positionUs < j6 || !g1());
    }

    private void R0(boolean z6) {
        if (z6 == this.offloadSchedulingEnabled) {
            return;
        }
        this.offloadSchedulingEnabled = z6;
        if (z6 || !this.playbackInfo.sleepingForOffload) {
            return;
        }
        this.handler.sendEmptyMessage(2);
    }

    private static boolean S(PlaybackInfo playbackInfo, Timeline.Period period) {
        MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.periodId;
        Timeline timeline = playbackInfo.timeline;
        return timeline.u() || timeline.l(mediaPeriodId.periodUid, period).isPlaceholder;
    }

    private void S0(boolean z6) throws ExoPlaybackException {
        this.pauseAtEndOfWindow = z6;
        t0();
        if (!this.pendingPauseAtEndOfPeriod || this.queue.s() == this.queue.r()) {
            return;
        }
        D0(true);
        G(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean T() {
        return Boolean.valueOf(this.released);
    }

    private void U0(boolean z6, int i10, boolean z10, int i11) throws ExoPlaybackException {
        this.playbackInfoUpdate.b(z10 ? 1 : 0);
        this.playbackInfoUpdate.c(i11);
        this.playbackInfo = this.playbackInfo.e(z6, i10);
        this.isRebuffering = false;
        f0(z6);
        if (!g1()) {
            m1();
            q1();
            return;
        }
        int i12 = this.playbackInfo.playbackState;
        if (i12 == 3) {
            j1();
            this.handler.sendEmptyMessage(2);
        } else if (i12 == 2) {
            this.handler.sendEmptyMessage(2);
        }
    }

    private void W() {
        this.playbackInfoUpdate.d(this.playbackInfo);
        if (this.playbackInfoUpdate.hasPendingChange) {
            this.playbackInfoUpdateListener.a(this.playbackInfoUpdate);
            this.playbackInfoUpdate = new PlaybackInfoUpdate(this.playbackInfo);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0079, code lost:
    
        r3 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void X(long j6, long j10) throws ExoPlaybackException {
        if (this.pendingMessages.isEmpty() || this.playbackInfo.periodId.c()) {
            return;
        }
        if (this.deliverPendingMessageAtStartPositionRequired) {
            j6--;
            this.deliverPendingMessageAtStartPositionRequired = false;
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        int iF = playbackInfo.timeline.f(playbackInfo.periodId.periodUid);
        int iMin = Math.min(this.nextPendingMessageIndexHint, this.pendingMessages.size());
        PendingMessageInfo pendingMessageInfo = iMin > 0 ? this.pendingMessages.get(iMin - 1) : null;
        while (pendingMessageInfo != null) {
            int i10 = pendingMessageInfo.resolvedPeriodIndex;
            if (i10 <= iF && (i10 != iF || pendingMessageInfo.resolvedPeriodTimeUs <= j6)) {
                break;
            }
            int i11 = iMin - 1;
            pendingMessageInfo = i11 > 0 ? this.pendingMessages.get(iMin - 2) : null;
            iMin = i11;
        }
        if (iMin < this.pendingMessages.size()) {
            PendingMessageInfo pendingMessageInfo2 = this.pendingMessages.get(iMin);
            while (pendingMessageInfo2 != null && pendingMessageInfo2.resolvedPeriodUid != null) {
                int i12 = pendingMessageInfo2.resolvedPeriodIndex;
                if (i12 >= iF && (i12 != iF || pendingMessageInfo2.resolvedPeriodTimeUs > j6)) {
                    break;
                }
                iMin++;
                pendingMessageInfo2 = iMin < this.pendingMessages.size() ? this.pendingMessages.get(iMin) : null;
            }
            while (pendingMessageInfo2 != null && pendingMessageInfo2.resolvedPeriodUid != null && pendingMessageInfo2.resolvedPeriodIndex == iF) {
                long j11 = pendingMessageInfo2.resolvedPeriodTimeUs;
                if (j11 <= j6 || j11 > j10) {
                    break;
                }
                try {
                    I0(pendingMessageInfo2.message);
                    if (pendingMessageInfo2.message.b() || pendingMessageInfo2.message.j()) {
                        this.pendingMessages.remove(iMin);
                    } else {
                        iMin++;
                    }
                    pendingMessageInfo2 = iMin < this.pendingMessages.size() ? this.pendingMessages.get(iMin) : null;
                } catch (Throwable th) {
                    if (pendingMessageInfo2.message.b() || pendingMessageInfo2.message.j()) {
                        this.pendingMessages.remove(iMin);
                    }
                    throw th;
                }
            }
            this.nextPendingMessageIndexHint = iMin;
        }
    }

    private void Y() throws ExoPlaybackException {
        MediaPeriodInfo mediaPeriodInfoQ;
        this.queue.C(this.rendererPositionUs);
        if (this.queue.H() && (mediaPeriodInfoQ = this.queue.q(this.rendererPositionUs, this.playbackInfo)) != null) {
            MediaPeriodHolder mediaPeriodHolderG = this.queue.g(this.rendererCapabilities, this.trackSelector, this.loadControl.getAllocator(), this.mediaSourceList, mediaPeriodInfoQ, this.emptyTrackSelectorResult);
            mediaPeriodHolderG.mediaPeriod.e(this, mediaPeriodInfoQ.startPositionUs);
            if (this.queue.r() == mediaPeriodHolderG) {
                u0(mediaPeriodInfoQ.startPositionUs);
            }
            G(false);
        }
        if (!this.shouldContinueLoading) {
            V();
        } else {
            this.shouldContinueLoading = P();
            n1();
        }
    }

    private void Y0(int i10) throws ExoPlaybackException {
        this.repeatMode = i10;
        if (!this.queue.K(this.playbackInfo.timeline, i10)) {
            D0(true);
        }
        G(false);
    }

    private void a0() throws ExoPlaybackException {
        MediaPeriodHolder mediaPeriodHolderS = this.queue.s();
        if (mediaPeriodHolderS == null) {
            return;
        }
        int i10 = 0;
        if (mediaPeriodHolderS.j() != null && !this.pendingPauseAtEndOfPeriod) {
            if (N()) {
                if (mediaPeriodHolderS.j().prepared || this.rendererPositionUs >= mediaPeriodHolderS.j().m()) {
                    TrackSelectorResult trackSelectorResultO = mediaPeriodHolderS.o();
                    MediaPeriodHolder mediaPeriodHolderC = this.queue.c();
                    TrackSelectorResult trackSelectorResultO2 = mediaPeriodHolderC.o();
                    Timeline timeline = this.playbackInfo.timeline;
                    r1(timeline, mediaPeriodHolderC.info.id, timeline, mediaPeriodHolderS.info.id, -9223372036854775807L, false);
                    if (mediaPeriodHolderC.prepared && mediaPeriodHolderC.mediaPeriod.readDiscontinuity() != -9223372036854775807L) {
                        K0(mediaPeriodHolderC.m());
                        return;
                    }
                    for (int i11 = 0; i11 < this.renderers.length; i11++) {
                        boolean zC = trackSelectorResultO.c(i11);
                        boolean zC2 = trackSelectorResultO2.c(i11);
                        if (zC && !this.renderers[i11].isCurrentStreamFinal()) {
                            boolean z6 = this.rendererCapabilities[i11].getTrackType() == -2;
                            RendererConfiguration rendererConfiguration = trackSelectorResultO.rendererConfigurations[i11];
                            RendererConfiguration rendererConfiguration2 = trackSelectorResultO2.rendererConfigurations[i11];
                            if (!zC2 || !rendererConfiguration2.equals(rendererConfiguration) || z6) {
                                L0(this.renderers[i11], mediaPeriodHolderC.m());
                            }
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (!mediaPeriodHolderS.info.isFinal && !this.pendingPauseAtEndOfPeriod) {
            return;
        }
        while (true) {
            Renderer[] rendererArr = this.renderers;
            if (i10 >= rendererArr.length) {
                return;
            }
            Renderer renderer = rendererArr[i10];
            SampleStream sampleStream = mediaPeriodHolderS.sampleStreams[i10];
            if (sampleStream != null && renderer.getStream() == sampleStream && renderer.hasReadStreamToEnd()) {
                long j6 = mediaPeriodHolderS.info.durationUs;
                L0(renderer, (j6 == -9223372036854775807L || j6 == Long.MIN_VALUE) ? -9223372036854775807L : mediaPeriodHolderS.l() + mediaPeriodHolderS.info.durationUs);
            }
            i10++;
        }
    }

    private void b0() throws ExoPlaybackException {
        MediaPeriodHolder mediaPeriodHolderS = this.queue.s();
        if (mediaPeriodHolderS == null || this.queue.r() == mediaPeriodHolderS || mediaPeriodHolderS.allRenderersInCorrectState || !p0()) {
            return;
        }
        r();
    }

    private void b1(boolean z6) throws ExoPlaybackException {
        this.shuffleModeEnabled = z6;
        if (!this.queue.L(this.playbackInfo.timeline, z6)) {
            D0(true);
        }
        G(false);
    }

    private void c0() throws Throwable {
        H(this.mediaSourceList.i(), true);
    }

    private void c1(ShuffleOrder shuffleOrder) throws Throwable {
        this.playbackInfoUpdate.b(1);
        H(this.mediaSourceList.E(shuffleOrder), false);
    }

    private void d0(MoveMediaItemsMessage moveMediaItemsMessage) throws Throwable {
        this.playbackInfoUpdate.b(1);
        H(this.mediaSourceList.w(moveMediaItemsMessage.fromIndex, moveMediaItemsMessage.toIndex, moveMediaItemsMessage.newFromIndex, moveMediaItemsMessage.shuffleOrder), false);
    }

    private void d1(int i10) {
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.playbackState != i10) {
            if (i10 != 2) {
                this.playbackMaybeBecameStuckAtMs = -9223372036854775807L;
            }
            this.playbackInfo = playbackInfo.h(i10);
        }
    }

    private void e0() {
        for (MediaPeriodHolder mediaPeriodHolderR = this.queue.r(); mediaPeriodHolderR != null; mediaPeriodHolderR = mediaPeriodHolderR.j()) {
            for (ExoTrackSelection exoTrackSelection : mediaPeriodHolderR.o().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.a();
                }
            }
        }
    }

    private void f0(boolean z6) {
        for (MediaPeriodHolder mediaPeriodHolderR = this.queue.r(); mediaPeriodHolderR != null; mediaPeriodHolderR = mediaPeriodHolderR.j()) {
            for (ExoTrackSelection exoTrackSelection : mediaPeriodHolderR.o().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.c(z6);
                }
            }
        }
    }

    private void g0() {
        for (MediaPeriodHolder mediaPeriodHolderR = this.queue.r(); mediaPeriodHolderR != null; mediaPeriodHolderR = mediaPeriodHolderR.j()) {
            for (ExoTrackSelection exoTrackSelection : mediaPeriodHolderR.o().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.b();
                }
            }
        }
    }

    private boolean g1() {
        PlaybackInfo playbackInfo = this.playbackInfo;
        return playbackInfo.playWhenReady && playbackInfo.playbackSuppressionReason == 0;
    }

    private boolean h1(boolean z6) {
        if (this.enabledRendererCount == 0) {
            return R();
        }
        if (!z6) {
            return false;
        }
        if (!this.playbackInfo.isLoading) {
            return true;
        }
        MediaPeriodHolder mediaPeriodHolderR = this.queue.r();
        long jB = i1(this.playbackInfo.timeline, mediaPeriodHolderR.info.id) ? this.livePlaybackSpeedControl.b() : -9223372036854775807L;
        MediaPeriodHolder mediaPeriodHolderL = this.queue.l();
        return (mediaPeriodHolderL.q() && mediaPeriodHolderL.info.isFinal) || (mediaPeriodHolderL.info.id.c() && !mediaPeriodHolderL.prepared) || this.loadControl.b(this.playbackInfo.timeline, mediaPeriodHolderR.info.id, C(), this.mediaClock.getPlaybackParameters().speed, this.isRebuffering, jB);
    }

    private void j0() {
        this.playbackInfoUpdate.b(1);
        s0(false, false, false, true);
        this.loadControl.onPrepared();
        d1(this.playbackInfo.timeline.u() ? 4 : 2);
        this.mediaSourceList.x(this.bandwidthMeter.d());
        this.handler.sendEmptyMessage(2);
    }

    private void k(MediaSourceListUpdateMessage mediaSourceListUpdateMessage, int i10) throws Throwable {
        this.playbackInfoUpdate.b(1);
        MediaSourceList mediaSourceList = this.mediaSourceList;
        if (i10 == -1) {
            i10 = mediaSourceList.r();
        }
        H(mediaSourceList.f(i10, mediaSourceListUpdateMessage.mediaSourceHolders, mediaSourceListUpdateMessage.shuffleOrder), false);
    }

    private void m1() throws ExoPlaybackException {
        this.mediaClock.g();
        for (Renderer renderer : this.renderers) {
            if (Q(renderer)) {
                t(renderer);
            }
        }
    }

    private void n0(int i10, int i11, ShuffleOrder shuffleOrder) throws Throwable {
        this.playbackInfoUpdate.b(1);
        H(this.mediaSourceList.B(i10, i11, shuffleOrder), false);
    }

    private void n1() {
        MediaPeriodHolder mediaPeriodHolderL = this.queue.l();
        boolean z6 = this.shouldContinueLoading || (mediaPeriodHolderL != null && mediaPeriodHolderL.mediaPeriod.isLoading());
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (z6 != playbackInfo.isLoading) {
            this.playbackInfo = playbackInfo.b(z6);
        }
    }

    private void o1(MediaSource.MediaPeriodId mediaPeriodId, TrackGroupArray trackGroupArray, TrackSelectorResult trackSelectorResult) {
        this.loadControl.c(this.playbackInfo.timeline, mediaPeriodId, this.renderers, trackGroupArray, trackSelectorResult.selections);
    }

    /* JADX WARN: Code duplicated, block: B:114:0x01a2  */
    private void p() throws ExoPlaybackException, IOException {
        boolean z6;
        boolean z10;
        int i10;
        long jUptimeMillis = this.clock.uptimeMillis();
        this.handler.removeMessages(2);
        p1();
        int i11 = this.playbackInfo.playbackState;
        if (i11 == 1 || i11 == 4) {
            return;
        }
        MediaPeriodHolder mediaPeriodHolderR = this.queue.r();
        if (mediaPeriodHolderR == null) {
            B0(jUptimeMillis, 10L);
            return;
        }
        TraceUtil.a("doSomeWork");
        q1();
        if (mediaPeriodHolderR.prepared) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
            mediaPeriodHolderR.mediaPeriod.discardBuffer(this.playbackInfo.positionUs - this.backBufferDurationUs, this.retainBackBufferFromKeyframe);
            z6 = true;
            z10 = true;
            int i12 = 0;
            while (true) {
                Renderer[] rendererArr = this.renderers;
                if (i12 >= rendererArr.length) {
                    break;
                }
                Renderer renderer = rendererArr[i12];
                if (Q(renderer)) {
                    renderer.render(this.rendererPositionUs, jElapsedRealtime);
                    z6 = z6 && renderer.isEnded();
                    boolean z11 = mediaPeriodHolderR.sampleStreams[i12] != renderer.getStream();
                    boolean z12 = z11 || (!z11 && renderer.hasReadStreamToEnd()) || renderer.isReady() || renderer.isEnded();
                    z10 = z10 && z12;
                    if (!z12) {
                        renderer.maybeThrowStreamError();
                    }
                }
                i12++;
            }
        } else {
            mediaPeriodHolderR.mediaPeriod.maybeThrowPrepareError();
            z6 = true;
            z10 = true;
        }
        long j6 = mediaPeriodHolderR.info.durationUs;
        boolean z13 = z6 && mediaPeriodHolderR.prepared && (j6 == -9223372036854775807L || j6 <= this.playbackInfo.positionUs);
        if (z13 && this.pendingPauseAtEndOfPeriod) {
            this.pendingPauseAtEndOfPeriod = false;
            U0(false, this.playbackInfo.playbackSuppressionReason, false, 5);
        }
        if (z13 && mediaPeriodHolderR.info.isFinal) {
            d1(4);
            m1();
        } else if (this.playbackInfo.playbackState == 2 && h1(z10)) {
            d1(3);
            this.pendingRecoverableRendererError = null;
            if (g1()) {
                j1();
            }
        } else if (this.playbackInfo.playbackState == 3 && (this.enabledRendererCount != 0 ? !z10 : !R())) {
            this.isRebuffering = g1();
            d1(2);
            if (this.isRebuffering) {
                g0();
                this.livePlaybackSpeedControl.c();
            }
            m1();
        }
        if (this.playbackInfo.playbackState == 2) {
            int i13 = 0;
            while (true) {
                Renderer[] rendererArr2 = this.renderers;
                if (i13 >= rendererArr2.length) {
                    break;
                }
                if (Q(rendererArr2[i13]) && this.renderers[i13].getStream() == mediaPeriodHolderR.sampleStreams[i13]) {
                    this.renderers[i13].maybeThrowStreamError();
                }
                i13++;
            }
            PlaybackInfo playbackInfo = this.playbackInfo;
            if (playbackInfo.isLoading || playbackInfo.totalBufferedDurationUs >= PLAYBACK_BUFFER_EMPTY_THRESHOLD_US || !P()) {
                this.playbackMaybeBecameStuckAtMs = -9223372036854775807L;
            } else if (this.playbackMaybeBecameStuckAtMs == -9223372036854775807L) {
                this.playbackMaybeBecameStuckAtMs = this.clock.elapsedRealtime();
            } else if (this.clock.elapsedRealtime() - this.playbackMaybeBecameStuckAtMs >= PLAYBACK_STUCK_AFTER_MS) {
                throw new IllegalStateException("Playback stuck buffering and not loading");
            }
        } else {
            this.playbackMaybeBecameStuckAtMs = -9223372036854775807L;
        }
        boolean z14 = g1() && this.playbackInfo.playbackState == 3;
        boolean z15 = this.offloadSchedulingEnabled && this.requestForRendererSleep && z14;
        PlaybackInfo playbackInfo2 = this.playbackInfo;
        if (playbackInfo2.sleepingForOffload != z15) {
            this.playbackInfo = playbackInfo2.i(z15);
        }
        this.requestForRendererSleep = false;
        if (!z15 && (i10 = this.playbackInfo.playbackState) != 4) {
            if (z14 || i10 == 2) {
                B0(jUptimeMillis, 10L);
            } else if (i10 == 3 && this.enabledRendererCount != 0) {
                B0(jUptimeMillis, 1000L);
            }
        }
        TraceUtil.c();
    }

    private boolean p0() throws ExoPlaybackException {
        MediaPeriodHolder mediaPeriodHolderS = this.queue.s();
        TrackSelectorResult trackSelectorResultO = mediaPeriodHolderS.o();
        int i10 = 0;
        boolean z6 = false;
        while (true) {
            Renderer[] rendererArr = this.renderers;
            if (i10 >= rendererArr.length) {
                return !z6;
            }
            Renderer renderer = rendererArr[i10];
            if (Q(renderer)) {
                boolean z10 = renderer.getStream() != mediaPeriodHolderS.sampleStreams[i10];
                if (!trackSelectorResultO.c(i10) || z10) {
                    if (!renderer.isCurrentStreamFinal()) {
                        renderer.f(x(trackSelectorResultO.selections[i10]), mediaPeriodHolderS.sampleStreams[i10], mediaPeriodHolderS.m(), mediaPeriodHolderS.l());
                    } else if (renderer.isEnded()) {
                        o(renderer);
                    } else {
                        z6 = true;
                    }
                }
            }
            i10++;
        }
    }

    private void p1() throws ExoPlaybackException {
        if (this.playbackInfo.timeline.u() || !this.mediaSourceList.t()) {
            return;
        }
        Y();
        a0();
        b0();
        Z();
    }

    private void q(int i10, boolean z6) throws ExoPlaybackException {
        Renderer renderer = this.renderers[i10];
        if (Q(renderer)) {
            return;
        }
        MediaPeriodHolder mediaPeriodHolderS = this.queue.s();
        boolean z10 = mediaPeriodHolderS == this.queue.r();
        TrackSelectorResult trackSelectorResultO = mediaPeriodHolderS.o();
        RendererConfiguration rendererConfiguration = trackSelectorResultO.rendererConfigurations[i10];
        Format[] formatArrX = x(trackSelectorResultO.selections[i10]);
        boolean z11 = g1() && this.playbackInfo.playbackState == 3;
        boolean z12 = !z6 && z11;
        this.enabledRendererCount++;
        this.renderersToReset.add(renderer);
        renderer.g(rendererConfiguration, formatArrX, mediaPeriodHolderS.sampleStreams[i10], this.rendererPositionUs, z12, z10, mediaPeriodHolderS.m(), mediaPeriodHolderS.l());
        renderer.handleMessage(11, new Renderer.WakeupListener() { // from class: androidx.media3.exoplayer.ExoPlayerImplInternal.1
            @Override // androidx.media3.exoplayer.Renderer.WakeupListener
            public void a() {
                ExoPlayerImplInternal.this.requestForRendererSleep = true;
            }

            @Override // androidx.media3.exoplayer.Renderer.WakeupListener
            public void b() {
                ExoPlayerImplInternal.this.handler.sendEmptyMessage(2);
            }
        });
        this.mediaClock.c(renderer);
        if (z11) {
            renderer.start();
        }
    }

    private void q0() throws ExoPlaybackException {
        float f = this.mediaClock.getPlaybackParameters().speed;
        MediaPeriodHolder mediaPeriodHolderS = this.queue.s();
        boolean z6 = true;
        for (MediaPeriodHolder mediaPeriodHolderR = this.queue.r(); mediaPeriodHolderR != null && mediaPeriodHolderR.prepared; mediaPeriodHolderR = mediaPeriodHolderR.j()) {
            TrackSelectorResult trackSelectorResultV = mediaPeriodHolderR.v(f, this.playbackInfo.timeline);
            if (!trackSelectorResultV.a(mediaPeriodHolderR.o())) {
                if (z6) {
                    MediaPeriodHolder mediaPeriodHolderR2 = this.queue.r();
                    boolean zD = this.queue.D(mediaPeriodHolderR2);
                    boolean[] zArr = new boolean[this.renderers.length];
                    long jB = mediaPeriodHolderR2.b(trackSelectorResultV, this.playbackInfo.positionUs, zD, zArr);
                    PlaybackInfo playbackInfo = this.playbackInfo;
                    boolean z10 = (playbackInfo.playbackState == 4 || jB == playbackInfo.positionUs) ? false : true;
                    PlaybackInfo playbackInfo2 = this.playbackInfo;
                    this.playbackInfo = L(playbackInfo2.periodId, jB, playbackInfo2.requestedContentPositionUs, playbackInfo2.discontinuityStartPositionUs, z10, 5);
                    if (z10) {
                        u0(jB);
                    }
                    boolean[] zArr2 = new boolean[this.renderers.length];
                    int i10 = 0;
                    while (true) {
                        Renderer[] rendererArr = this.renderers;
                        if (i10 >= rendererArr.length) {
                            break;
                        }
                        Renderer renderer = rendererArr[i10];
                        boolean zQ = Q(renderer);
                        zArr2[i10] = zQ;
                        SampleStream sampleStream = mediaPeriodHolderR2.sampleStreams[i10];
                        if (zQ) {
                            if (sampleStream != renderer.getStream()) {
                                o(renderer);
                            } else if (zArr[i10]) {
                                renderer.resetPosition(this.rendererPositionUs);
                            }
                        }
                        i10++;
                    }
                    s(zArr2);
                } else {
                    this.queue.D(mediaPeriodHolderR);
                    if (mediaPeriodHolderR.prepared) {
                        mediaPeriodHolderR.a(trackSelectorResultV, Math.max(mediaPeriodHolderR.info.startPositionUs, mediaPeriodHolderR.y(this.rendererPositionUs)), false);
                    }
                }
                G(true);
                if (this.playbackInfo.playbackState != 4) {
                    V();
                    q1();
                    this.handler.sendEmptyMessage(2);
                    return;
                }
                return;
            }
            if (mediaPeriodHolderR == mediaPeriodHolderS) {
                z6 = false;
            }
        }
    }

    private void q1() throws ExoPlaybackException {
        MediaPeriodHolder mediaPeriodHolderR = this.queue.r();
        if (mediaPeriodHolderR == null) {
            return;
        }
        long discontinuity = mediaPeriodHolderR.prepared ? mediaPeriodHolderR.mediaPeriod.readDiscontinuity() : -9223372036854775807L;
        if (discontinuity != -9223372036854775807L) {
            u0(discontinuity);
            if (discontinuity != this.playbackInfo.positionUs) {
                PlaybackInfo playbackInfo = this.playbackInfo;
                this.playbackInfo = L(playbackInfo.periodId, discontinuity, playbackInfo.requestedContentPositionUs, discontinuity, true, 5);
            }
        } else {
            long jH = this.mediaClock.h(mediaPeriodHolderR != this.queue.s());
            this.rendererPositionUs = jH;
            long jY = mediaPeriodHolderR.y(jH);
            X(this.playbackInfo.positionUs, jY);
            this.playbackInfo.o(jY);
        }
        this.playbackInfo.bufferedPositionUs = this.queue.l().i();
        this.playbackInfo.totalBufferedDurationUs = C();
        PlaybackInfo playbackInfo2 = this.playbackInfo;
        if (playbackInfo2.playWhenReady && playbackInfo2.playbackState == 3 && i1(playbackInfo2.timeline, playbackInfo2.periodId) && this.playbackInfo.playbackParameters.speed == 1.0f) {
            float fA = this.livePlaybackSpeedControl.a(w(), C());
            if (this.mediaClock.getPlaybackParameters().speed != fA) {
                O0(this.playbackInfo.playbackParameters.d(fA));
                J(this.playbackInfo.playbackParameters, this.mediaClock.getPlaybackParameters().speed, false, false);
            }
        }
    }

    private void r() throws ExoPlaybackException {
        s(new boolean[this.renderers.length]);
    }

    private void s(boolean[] zArr) throws ExoPlaybackException {
        MediaPeriodHolder mediaPeriodHolderS = this.queue.s();
        TrackSelectorResult trackSelectorResultO = mediaPeriodHolderS.o();
        for (int i10 = 0; i10 < this.renderers.length; i10++) {
            if (!trackSelectorResultO.c(i10) && this.renderersToReset.remove(this.renderers[i10])) {
                this.renderers[i10].reset();
            }
        }
        for (int i11 = 0; i11 < this.renderers.length; i11++) {
            if (trackSelectorResultO.c(i11)) {
                q(i11, zArr[i11]);
            }
        }
        mediaPeriodHolderS.allRenderersInCorrectState = true;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00a5 A[PHI: r4 r5 r7
      0x00a5: PHI (r4v3 androidx.media3.exoplayer.source.MediaSource$MediaPeriodId) = 
      (r4v2 androidx.media3.exoplayer.source.MediaSource$MediaPeriodId)
      (r4v7 androidx.media3.exoplayer.source.MediaSource$MediaPeriodId)
     binds: [B:30:0x0079, B:32:0x009e] A[DONT_GENERATE, DONT_INLINE]
      0x00a5: PHI (r5v2 long) = (r5v1 long), (r5v16 long) binds: [B:30:0x0079, B:32:0x009e] A[DONT_GENERATE, DONT_INLINE]
      0x00a5: PHI (r7v3 long) = (r7v2 long), (r7v6 long) binds: [B:30:0x0079, B:32:0x009e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:45:0x00ed A[PHI: r3
      0x00ed: PHI (r3v3 androidx.media3.common.Timeline) = 
      (r3v2 androidx.media3.common.Timeline)
      (r3v2 androidx.media3.common.Timeline)
      (r3v6 androidx.media3.common.Timeline)
      (r3v6 androidx.media3.common.Timeline)
     binds: [B:37:0x00b2, B:39:0x00b6, B:41:0x00c7, B:43:0x00de] A[DONT_GENERATE, DONT_INLINE]] */
    private void s0(boolean z6, boolean z10, boolean z11, boolean z12) {
        boolean z13;
        Timeline timeline;
        MediaSource.MediaPeriodId mediaPeriodId;
        this.handler.removeMessages(2);
        this.pendingRecoverableRendererError = null;
        this.isRebuffering = false;
        this.mediaClock.g();
        this.rendererPositionUs = 1000000000000L;
        for (Renderer renderer : this.renderers) {
            try {
                o(renderer);
            } catch (ExoPlaybackException | RuntimeException e) {
                Log.d(TAG, "Disable failed.", e);
            }
        }
        if (z6) {
            for (Renderer renderer2 : this.renderers) {
                if (this.renderersToReset.remove(renderer2)) {
                    try {
                        renderer2.reset();
                    } catch (RuntimeException e2) {
                        Log.d(TAG, "Reset failed.", e2);
                    }
                }
            }
        }
        this.enabledRendererCount = 0;
        PlaybackInfo playbackInfo = this.playbackInfo;
        MediaSource.MediaPeriodId mediaPeriodId2 = playbackInfo.periodId;
        long jLongValue = playbackInfo.positionUs;
        long j6 = (this.playbackInfo.periodId.c() || S(this.playbackInfo, this.period)) ? this.playbackInfo.requestedContentPositionUs : this.playbackInfo.positionUs;
        if (z10) {
            this.pendingInitialSeekPosition = null;
            Pair<MediaSource.MediaPeriodId, Long> pairA = A(this.playbackInfo.timeline);
            mediaPeriodId2 = (MediaSource.MediaPeriodId) pairA.first;
            jLongValue = ((Long) pairA.second).longValue();
            j6 = -9223372036854775807L;
            if (mediaPeriodId2.equals(this.playbackInfo.periodId)) {
                z13 = false;
            } else {
                z13 = true;
            }
        } else {
            z13 = false;
        }
        long j10 = jLongValue;
        long j11 = j6;
        this.queue.f();
        this.shouldContinueLoading = false;
        Timeline timelineI = this.playbackInfo.timeline;
        if (z11 && (timelineI instanceof PlaylistTimeline)) {
            timelineI = ((PlaylistTimeline) timelineI).I(this.mediaSourceList.q());
            if (mediaPeriodId2.adGroupIndex != -1) {
                timelineI.l(mediaPeriodId2.periodUid, this.period);
                if (timelineI.r(this.period.windowIndex, this.window).h()) {
                    timeline = timelineI;
                    mediaPeriodId = new MediaSource.MediaPeriodId(mediaPeriodId2.periodUid, mediaPeriodId2.windowSequenceNumber);
                } else {
                    timeline = timelineI;
                    mediaPeriodId = mediaPeriodId2;
                }
            } else {
                timeline = timelineI;
                mediaPeriodId = mediaPeriodId2;
            }
        } else {
            timeline = timelineI;
            mediaPeriodId = mediaPeriodId2;
        }
        PlaybackInfo playbackInfo2 = this.playbackInfo;
        int i10 = playbackInfo2.playbackState;
        ExoPlaybackException exoPlaybackException = z12 ? null : playbackInfo2.playbackError;
        TrackGroupArray trackGroupArray = z13 ? TrackGroupArray.EMPTY : playbackInfo2.trackGroups;
        TrackSelectorResult trackSelectorResult = z13 ? this.emptyTrackSelectorResult : playbackInfo2.trackSelectorResult;
        List listX = z13 ? com.google.common.collect.a0.x() : playbackInfo2.staticMetadata;
        PlaybackInfo playbackInfo3 = this.playbackInfo;
        this.playbackInfo = new PlaybackInfo(timeline, mediaPeriodId, j11, j10, i10, exoPlaybackException, false, trackGroupArray, trackSelectorResult, listX, mediaPeriodId, playbackInfo3.playWhenReady, playbackInfo3.playbackSuppressionReason, playbackInfo3.playbackParameters, j10, 0L, j10, 0L, false);
        if (z11) {
            this.mediaSourceList.z();
        }
    }

    private void s1(float f) {
        for (MediaPeriodHolder mediaPeriodHolderR = this.queue.r(); mediaPeriodHolderR != null; mediaPeriodHolderR = mediaPeriodHolderR.j()) {
            for (ExoTrackSelection exoTrackSelection : mediaPeriodHolderR.o().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.onPlaybackSpeed(f);
                }
            }
        }
    }

    private void t0() {
        MediaPeriodHolder mediaPeriodHolderR = this.queue.r();
        this.pendingPauseAtEndOfPeriod = mediaPeriodHolderR != null && mediaPeriodHolderR.info.isLastInTimelineWindow && this.pauseAtEndOfWindow;
    }

    private void u0(long j6) throws ExoPlaybackException {
        MediaPeriodHolder mediaPeriodHolderR = this.queue.r();
        long jZ = mediaPeriodHolderR == null ? j6 + 1000000000000L : mediaPeriodHolderR.z(j6);
        this.rendererPositionUs = jZ;
        this.mediaClock.d(jZ);
        for (Renderer renderer : this.renderers) {
            if (Q(renderer)) {
                renderer.resetPosition(this.rendererPositionUs);
            }
        }
        e0();
    }

    private com.google.common.collect.a0<Metadata> v(ExoTrackSelection[] exoTrackSelectionArr) {
        com.google.common.collect.a0.a aVar = new com.google.common.collect.a0.a();
        boolean z6 = false;
        for (ExoTrackSelection exoTrackSelection : exoTrackSelectionArr) {
            if (exoTrackSelection != null) {
                Metadata metadata = exoTrackSelection.getFormat(0).metadata;
                if (metadata == null) {
                    aVar.d(new Metadata(new Metadata.Entry[0]));
                } else {
                    aVar.d(metadata);
                    z6 = true;
                }
            }
        }
        return z6 ? aVar.k() : com.google.common.collect.a0.x();
    }

    private static void v0(Timeline timeline, PendingMessageInfo pendingMessageInfo, Timeline.Window window, Timeline.Period period) {
        int i10 = timeline.r(timeline.l(pendingMessageInfo.resolvedPeriodUid, period).windowIndex, window).lastPeriodIndex;
        Object obj = timeline.k(i10, period, true).uid;
        long j6 = period.durationUs;
        pendingMessageInfo.b(i10, j6 != -9223372036854775807L ? j6 - 1 : Long.MAX_VALUE, obj);
    }

    private long w() {
        PlaybackInfo playbackInfo = this.playbackInfo;
        return y(playbackInfo.timeline, playbackInfo.periodId.periodUid, playbackInfo.positionUs);
    }

    private long y(Timeline timeline, Object obj, long j6) {
        timeline.r(timeline.l(obj, this.period).windowIndex, this.window);
        Timeline.Window window = this.window;
        if (window.windowStartTimeMs != -9223372036854775807L && window.h()) {
            Timeline.Window window2 = this.window;
            if (window2.isDynamic) {
                return Util.K0(window2.c() - this.window.windowStartTimeMs) - (j6 + this.period.r());
            }
        }
        return -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0156  */
    /* JADX WARN: Code duplicated, block: B:52:0x0174  */
    /* JADX WARN: Code duplicated, block: B:60:0x018a  */
    /* JADX WARN: Code duplicated, block: B:69:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:73:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:76:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:78:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:80:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:82:0x01da  */
    /* JADX WARN: Code duplicated, block: B:83:0x01df  */
    private static PositionUpdateForPlaylistChange y0(Timeline timeline, PlaybackInfo playbackInfo, @Nullable SeekPosition seekPosition, MediaPeriodQueue mediaPeriodQueue, int i10, boolean z6, Timeline.Window window, Timeline.Period period) {
        MediaSource.MediaPeriodId mediaPeriodId;
        int i11;
        MediaSource.MediaPeriodId mediaPeriodId2;
        int i12;
        long jLongValue;
        boolean z10;
        boolean z11;
        boolean z12;
        int iE;
        int iE2;
        boolean z13;
        long j6;
        MediaSource.MediaPeriodId mediaPeriodIdF;
        int i13;
        boolean z14;
        boolean z15;
        MediaSource.MediaPeriodId mediaPeriodId3;
        int i14;
        int iE3;
        boolean z16;
        boolean z17;
        boolean z18;
        if (timeline.u()) {
            return new PositionUpdateForPlaylistChange(PlaybackInfo.l(), 0L, -9223372036854775807L, false, true, false);
        }
        MediaSource.MediaPeriodId mediaPeriodId4 = playbackInfo.periodId;
        Object obj = mediaPeriodId4.periodUid;
        boolean zS = S(playbackInfo, period);
        long j10 = (playbackInfo.periodId.c() || zS) ? playbackInfo.requestedContentPositionUs : playbackInfo.positionUs;
        if (seekPosition != null) {
            mediaPeriodId = mediaPeriodId4;
            i11 = -1;
            Pair<Object, Long> pairZ0 = z0(timeline, seekPosition, true, i10, z6, window, period);
            if (pairZ0 == null) {
                iE3 = timeline.e(z6);
                jLongValue = j10;
                z16 = false;
                z17 = false;
                z18 = true;
            } else {
                if (seekPosition.windowPositionUs == -9223372036854775807L) {
                    iE3 = timeline.l(pairZ0.first, period).windowIndex;
                    jLongValue = j10;
                    z16 = false;
                } else {
                    obj = pairZ0.first;
                    jLongValue = ((Long) pairZ0.second).longValue();
                    iE3 = -1;
                    z16 = true;
                }
                z17 = playbackInfo.playbackState == 4;
                z18 = false;
            }
            z12 = z16;
            z10 = z17;
            z11 = z18;
            i12 = iE3;
        } else {
            mediaPeriodId = mediaPeriodId4;
            i11 = -1;
            if (!playbackInfo.timeline.u()) {
                if (timeline.f(obj) == -1) {
                    Object objA0 = A0(window, period, i10, z6, obj, playbackInfo.timeline, timeline);
                    if (objA0 == null) {
                        iE2 = timeline.e(z6);
                        z13 = true;
                    } else {
                        iE2 = timeline.l(objA0, period).windowIndex;
                        z13 = false;
                    }
                    i12 = iE2;
                    z11 = z13;
                    jLongValue = j10;
                    z10 = false;
                    z12 = false;
                } else if (j10 == -9223372036854775807L) {
                    iE = timeline.l(obj, period).windowIndex;
                } else if (zS) {
                    mediaPeriodId2 = mediaPeriodId;
                    playbackInfo.timeline.l(mediaPeriodId2.periodUid, period);
                    if (playbackInfo.timeline.r(period.windowIndex, window).firstPeriodIndex == playbackInfo.timeline.f(mediaPeriodId2.periodUid)) {
                        Pair<Object, Long> pairN = timeline.n(window, period, timeline.l(obj, period).windowIndex, j10 + period.r());
                        obj = pairN.first;
                        jLongValue = ((Long) pairN.second).longValue();
                    } else {
                        jLongValue = j10;
                    }
                    i12 = -1;
                    z10 = false;
                    z11 = false;
                    z12 = true;
                } else {
                    mediaPeriodId2 = mediaPeriodId;
                    i12 = -1;
                    jLongValue = j10;
                    z10 = false;
                    z11 = false;
                    z12 = false;
                }
                if (i12 != i11) {
                    Pair<Object, Long> pairN2 = timeline.n(window, period, i12, -9223372036854775807L);
                    obj = pairN2.first;
                    jLongValue = ((Long) pairN2.second).longValue();
                    j6 = -9223372036854775807L;
                } else {
                    j6 = jLongValue;
                }
                mediaPeriodIdF = mediaPeriodQueue.F(timeline, obj, jLongValue);
                i13 = mediaPeriodIdF.nextAdGroupIndex;
                if (i13 != i11 || ((i14 = mediaPeriodId2.nextAdGroupIndex) != i11 && i13 >= i14)) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                z15 = (mediaPeriodId2.periodUid.equals(obj) || mediaPeriodId2.c() || mediaPeriodIdF.c() || !z14) ? false : true;
                mediaPeriodId3 = mediaPeriodId2;
                boolean zO = O(zS, mediaPeriodId2, j10, mediaPeriodIdF, timeline.l(obj, period), j6);
                if (z15 || zO) {
                    mediaPeriodIdF = mediaPeriodId3;
                }
                if (mediaPeriodIdF.c()) {
                    if (mediaPeriodIdF.equals(mediaPeriodId3)) {
                        jLongValue = playbackInfo.positionUs;
                    } else {
                        timeline.l(mediaPeriodIdF.periodUid, period);
                        if (mediaPeriodIdF.adIndexInAdGroup == period.o(mediaPeriodIdF.adGroupIndex)) {
                            jLongValue = period.j();
                        } else {
                            jLongValue = 0;
                        }
                    }
                }
                return new PositionUpdateForPlaylistChange(mediaPeriodIdF, jLongValue, j6, z10, z11, z12);
            }
            iE = timeline.e(z6);
            i12 = iE;
            jLongValue = j10;
            z10 = false;
            z11 = false;
            z12 = false;
        }
        mediaPeriodId2 = mediaPeriodId;
        if (i12 != i11) {
            Pair<Object, Long> pairN3 = timeline.n(window, period, i12, -9223372036854775807L);
            obj = pairN3.first;
            jLongValue = ((Long) pairN3.second).longValue();
            j6 = -9223372036854775807L;
        } else {
            j6 = jLongValue;
        }
        mediaPeriodIdF = mediaPeriodQueue.F(timeline, obj, jLongValue);
        i13 = mediaPeriodIdF.nextAdGroupIndex;
        if (i13 != i11) {
            z14 = true;
        } else {
            z14 = true;
        }
        if (mediaPeriodId2.periodUid.equals(obj)) {
        }
        mediaPeriodId3 = mediaPeriodId2;
        boolean zO2 = O(zS, mediaPeriodId2, j10, mediaPeriodIdF, timeline.l(obj, period), j6);
        if (z15) {
            mediaPeriodIdF = mediaPeriodId3;
        } else {
            mediaPeriodIdF = mediaPeriodId3;
        }
        if (mediaPeriodIdF.c()) {
            if (mediaPeriodIdF.equals(mediaPeriodId3)) {
                jLongValue = playbackInfo.positionUs;
            } else {
                timeline.l(mediaPeriodIdF.periodUid, period);
                if (mediaPeriodIdF.adIndexInAdGroup == period.o(mediaPeriodIdF.adGroupIndex)) {
                    jLongValue = period.j();
                } else {
                    jLongValue = 0;
                }
            }
        }
        return new PositionUpdateForPlaylistChange(mediaPeriodIdF, jLongValue, j6, z10, z11, z12);
    }

    private long z() {
        MediaPeriodHolder mediaPeriodHolderS = this.queue.s();
        if (mediaPeriodHolderS == null) {
            return 0L;
        }
        long jL = mediaPeriodHolderS.l();
        if (!mediaPeriodHolderS.prepared) {
            return jL;
        }
        int i10 = 0;
        while (true) {
            Renderer[] rendererArr = this.renderers;
            if (i10 >= rendererArr.length) {
                return jL;
            }
            if (Q(rendererArr[i10]) && this.renderers[i10].getStream() == mediaPeriodHolderS.sampleStreams[i10]) {
                long jC = this.renderers[i10].c();
                if (jC == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                jL = Math.max(jC, jL);
            }
            i10++;
        }
    }

    public void C0(Timeline timeline, int i10, long j6) {
        this.handler.obtainMessage(3, new SeekPosition(timeline, i10, j6)).a();
    }

    public void Q0(List<MediaSourceList.MediaSourceHolder> list, int i10, long j6, ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(17, new MediaSourceListUpdateMessage(list, shuffleOrder, i10, j6)).a();
    }

    public void T0(boolean z6, int i10) {
        this.handler.obtainMessage(1, z6 ? 1 : 0, i10).a();
    }

    public void V0(PlaybackParameters playbackParameters) {
        this.handler.obtainMessage(4, playbackParameters).a();
    }

    public void X0(int i10) {
        this.handler.obtainMessage(11, i10, 0).a();
    }

    @Override // androidx.media3.exoplayer.MediaSourceList.MediaSourceListInfoRefreshListener
    public void a() {
        this.handler.sendEmptyMessage(22);
    }

    public void a1(boolean z6) {
        this.handler.obtainMessage(12, z6 ? 1 : 0, 0).a();
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector.InvalidationListener
    public void b(Renderer renderer) {
        this.handler.sendEmptyMessage(26);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
    public void d(MediaPeriod mediaPeriod) {
        this.handler.obtainMessage(8, mediaPeriod).a();
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    /* JADX INFO: renamed from: h0, reason: merged with bridge method [inline-methods] */
    public void f(MediaPeriod mediaPeriod) {
        this.handler.obtainMessage(9, mediaPeriod).a();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) throws Throwable {
        MediaPeriodHolder mediaPeriodHolderS;
        int i10;
        int i11 = 1000;
        try {
            switch (message.what) {
                case 0:
                    j0();
                    break;
                case 1:
                    U0(message.arg1 != 0, message.arg2, true, 1);
                    break;
                case 2:
                    p();
                    break;
                case 3:
                    E0((SeekPosition) message.obj);
                    break;
                case 4:
                    W0((PlaybackParameters) message.obj);
                    break;
                case 5:
                    Z0((SeekParameters) message.obj);
                    break;
                case 6:
                    l1(false, true);
                    break;
                case 7:
                    l0();
                    return true;
                case 8:
                    I((MediaPeriod) message.obj);
                    break;
                case 9:
                    E((MediaPeriod) message.obj);
                    break;
                case 10:
                    q0();
                    break;
                case 11:
                    Y0(message.arg1);
                    break;
                case 12:
                    b1(message.arg1 != 0);
                    break;
                case 13:
                    N0(message.arg1 != 0, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    H0((PlayerMessage) message.obj);
                    break;
                case 15:
                    J0((PlayerMessage) message.obj);
                    break;
                case 16:
                    K((PlaybackParameters) message.obj, false);
                    break;
                case 17:
                    P0((MediaSourceListUpdateMessage) message.obj);
                    break;
                case 18:
                    k((MediaSourceListUpdateMessage) message.obj, message.arg1);
                    break;
                case 19:
                    d0((MoveMediaItemsMessage) message.obj);
                    break;
                case 20:
                    n0(message.arg1, message.arg2, (ShuffleOrder) message.obj);
                    break;
                case 21:
                    c1((ShuffleOrder) message.obj);
                    break;
                case 22:
                    c0();
                    break;
                case 23:
                    S0(message.arg1 != 0);
                    break;
                case 24:
                    R0(message.arg1 == 1);
                    break;
                case 25:
                    m();
                    break;
                case 26:
                    r0();
                    break;
                default:
                    return false;
            }
        } catch (ParserException e) {
            int i12 = e.dataType;
            if (i12 == 1) {
                i10 = e.contentIsMalformed ? 3001 : 3003;
            } else {
                if (i12 == 4) {
                    i10 = e.contentIsMalformed ? 3002 : 3004;
                }
                F(e, i11);
            }
            i11 = i10;
            F(e, i11);
        } catch (DataSourceException e2) {
            F(e2, e2.reason);
        } catch (ExoPlaybackException e6) {
            e = e6;
            if (e.type == 1 && (mediaPeriodHolderS = this.queue.s()) != null) {
                e = e.g(mediaPeriodHolderS.info.id);
            }
            if (e.isRecoverable && this.pendingRecoverableRendererError == null) {
                Log.j(TAG, "Recoverable renderer error", e);
                this.pendingRecoverableRendererError = e;
                HandlerWrapper handlerWrapper = this.handler;
                handlerWrapper.c(handlerWrapper.obtainMessage(25, e));
            } else {
                ExoPlaybackException exoPlaybackException = this.pendingRecoverableRendererError;
                if (exoPlaybackException != null) {
                    exoPlaybackException.addSuppressed(e);
                    e = this.pendingRecoverableRendererError;
                }
                Log.d(TAG, "Playback error", e);
                if (e.type == 1 && this.queue.r() != this.queue.s()) {
                    while (this.queue.r() != this.queue.s()) {
                        this.queue.b();
                    }
                    MediaPeriodInfo mediaPeriodInfo = ((MediaPeriodHolder) Assertions.e(this.queue.r())).info;
                    MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.id;
                    long j6 = mediaPeriodInfo.startPositionUs;
                    this.playbackInfo = L(mediaPeriodId, j6, mediaPeriodInfo.requestedContentPositionUs, j6, true, 0);
                }
                l1(true, false);
                this.playbackInfo = this.playbackInfo.f(e);
            }
        } catch (DrmSession.DrmSessionException e7) {
            F(e7, e7.errorCode);
        } catch (BehindLiveWindowException e10) {
            F(e10, 1002);
        } catch (IOException e11) {
            F(e11, 2000);
        } catch (RuntimeException e12) {
            ExoPlaybackException exoPlaybackExceptionK = ExoPlaybackException.k(e12, ((e12 instanceof IllegalStateException) || (e12 instanceof IllegalArgumentException)) ? 1004 : 1000);
            Log.d(TAG, "Playback error", exoPlaybackExceptionK);
            l1(true, false);
            this.playbackInfo = this.playbackInfo.f(exoPlaybackExceptionK);
        }
        W();
        return true;
    }

    public void i0() {
        this.handler.obtainMessage(0).a();
    }

    public void k1() {
        this.handler.obtainMessage(6).a();
    }

    public void l(int i10, List<MediaSourceList.MediaSourceHolder> list, ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(18, i10, 0, new MediaSourceListUpdateMessage(list, shuffleOrder, -1, -9223372036854775807L)).a();
    }

    public void o0(int i10, int i11, ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(20, i10, i11, shuffleOrder).a();
    }

    @Override // androidx.media3.exoplayer.DefaultMediaClock.PlaybackParametersListener
    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        this.handler.obtainMessage(16, playbackParameters).a();
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector.InvalidationListener
    public void onTrackSelectionsInvalidated() {
        this.handler.sendEmptyMessage(10);
    }

    private Pair<MediaSource.MediaPeriodId, Long> A(Timeline timeline) {
        long j6 = 0;
        if (timeline.u()) {
            return Pair.create(PlaybackInfo.l(), 0L);
        }
        Pair<Object, Long> pairN = timeline.n(this.window, this.period, timeline.e(this.shuffleModeEnabled), -9223372036854775807L);
        MediaSource.MediaPeriodId mediaPeriodIdF = this.queue.F(timeline, pairN.first, 0L);
        long jLongValue = ((Long) pairN.second).longValue();
        if (mediaPeriodIdF.c()) {
            timeline.l(mediaPeriodIdF.periodUid, this.period);
            if (mediaPeriodIdF.adIndexInAdGroup == this.period.o(mediaPeriodIdF.adGroupIndex)) {
                j6 = this.period.j();
            }
            jLongValue = j6;
        }
        return Pair.create(mediaPeriodIdF, Long.valueOf(jLongValue));
    }

    @Nullable
    static Object A0(Timeline.Window window, Timeline.Period period, int i10, boolean z6, Object obj, Timeline timeline, Timeline timeline2) {
        int iF = timeline.f(obj);
        int iM = timeline.m();
        int iH = iF;
        int iF2 = -1;
        for (int i11 = 0; i11 < iM && iF2 == -1; i11++) {
            iH = timeline.h(iH, period, window, i10, z6);
            if (iH == -1) {
                break;
            }
            iF2 = timeline2.f(timeline.q(iH));
        }
        if (iF2 == -1) {
            return null;
        }
        return timeline2.q(iF2);
    }

    private void F(IOException iOException, int i10) {
        ExoPlaybackException exoPlaybackExceptionI = ExoPlaybackException.i(iOException, i10);
        MediaPeriodHolder mediaPeriodHolderR = this.queue.r();
        if (mediaPeriodHolderR != null) {
            exoPlaybackExceptionI = exoPlaybackExceptionI.g(mediaPeriodHolderR.info.id);
        }
        Log.d(TAG, "Playback error", exoPlaybackExceptionI);
        l1(false, false);
        this.playbackInfo = this.playbackInfo.f(exoPlaybackExceptionI);
    }

    private long G0(MediaSource.MediaPeriodId mediaPeriodId, long j6, boolean z6, boolean z10) throws ExoPlaybackException {
        m1();
        this.isRebuffering = false;
        if (z10 || this.playbackInfo.playbackState == 3) {
            d1(2);
        }
        MediaPeriodHolder mediaPeriodHolderR = this.queue.r();
        MediaPeriodHolder mediaPeriodHolderJ = mediaPeriodHolderR;
        while (mediaPeriodHolderJ != null && !mediaPeriodId.equals(mediaPeriodHolderJ.info.id)) {
            mediaPeriodHolderJ = mediaPeriodHolderJ.j();
        }
        if (z6 || mediaPeriodHolderR != mediaPeriodHolderJ || (mediaPeriodHolderJ != null && mediaPeriodHolderJ.z(j6) < 0)) {
            for (Renderer renderer : this.renderers) {
                o(renderer);
            }
            if (mediaPeriodHolderJ != null) {
                while (this.queue.r() != mediaPeriodHolderJ) {
                    this.queue.b();
                }
                this.queue.D(mediaPeriodHolderJ);
                mediaPeriodHolderJ.x(1000000000000L);
                r();
            }
        }
        if (mediaPeriodHolderJ != null) {
            this.queue.D(mediaPeriodHolderJ);
            if (!mediaPeriodHolderJ.prepared) {
                mediaPeriodHolderJ.info = mediaPeriodHolderJ.info.b(j6);
            } else if (mediaPeriodHolderJ.hasEnabledTracks) {
                j6 = mediaPeriodHolderJ.mediaPeriod.seekToUs(j6);
                mediaPeriodHolderJ.mediaPeriod.discardBuffer(j6 - this.backBufferDurationUs, this.retainBackBufferFromKeyframe);
            }
            u0(j6);
            V();
        } else {
            this.queue.f();
            u0(j6);
        }
        G(false);
        this.handler.sendEmptyMessage(2);
        return j6;
    }

    private void H0(PlayerMessage playerMessage) throws ExoPlaybackException {
        if (playerMessage.f() == -9223372036854775807L) {
            I0(playerMessage);
            return;
        }
        if (this.playbackInfo.timeline.u()) {
            this.pendingMessages.add(new PendingMessageInfo(playerMessage));
            return;
        }
        PendingMessageInfo pendingMessageInfo = new PendingMessageInfo(playerMessage);
        Timeline timeline = this.playbackInfo.timeline;
        if (w0(pendingMessageInfo, timeline, timeline, this.repeatMode, this.shuffleModeEnabled, this.window, this.period)) {
            this.pendingMessages.add(pendingMessageInfo);
            Collections.sort(this.pendingMessages);
        } else {
            playerMessage.k(false);
        }
    }

    private void I0(PlayerMessage playerMessage) throws ExoPlaybackException {
        if (playerMessage.c() == this.playbackLooper) {
            n(playerMessage);
            int i10 = this.playbackInfo.playbackState;
            if (i10 == 3 || i10 == 2) {
                this.handler.sendEmptyMessage(2);
                return;
            }
            return;
        }
        this.handler.obtainMessage(15, playerMessage).a();
    }

    private void J0(final PlayerMessage playerMessage) {
        Looper looperC = playerMessage.c();
        if (!looperC.getThread().isAlive()) {
            Log.i("TAG", "Trying to send message on a dead thread.");
            playerMessage.k(false);
        } else {
            this.clock.createHandler(looperC, null).post(new Runnable() { // from class: androidx.media3.exoplayer.p1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f576a.U(playerMessage);
                }
            });
        }
    }

    private void L0(Renderer renderer, long j6) {
        renderer.setCurrentStreamFinal();
        if (renderer instanceof TextRenderer) {
            ((TextRenderer) renderer).N(j6);
        }
    }

    private boolean M(Renderer renderer, MediaPeriodHolder mediaPeriodHolder) {
        MediaPeriodHolder mediaPeriodHolderJ = mediaPeriodHolder.j();
        if (mediaPeriodHolder.info.isFollowedByTransitionToSameStream && mediaPeriodHolderJ.prepared && ((renderer instanceof TextRenderer) || (renderer instanceof MetadataRenderer) || renderer.c() >= mediaPeriodHolderJ.m())) {
            return true;
        }
        return false;
    }

    private static boolean Q(Renderer renderer) {
        if (renderer.getState() != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U(PlayerMessage playerMessage) {
        try {
            n(playerMessage);
        } catch (ExoPlaybackException e) {
            Log.d(TAG, "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }

    private void V() {
        boolean zF1 = f1();
        this.shouldContinueLoading = zF1;
        if (zF1) {
            this.queue.l().d(this.rendererPositionUs);
        }
        n1();
    }

    private void W0(PlaybackParameters playbackParameters) throws ExoPlaybackException {
        O0(playbackParameters);
        K(this.mediaClock.getPlaybackParameters(), true);
    }

    private boolean e1() {
        MediaPeriodHolder mediaPeriodHolderR;
        MediaPeriodHolder mediaPeriodHolderJ;
        if (!g1() || this.pendingPauseAtEndOfPeriod || (mediaPeriodHolderR = this.queue.r()) == null || (mediaPeriodHolderJ = mediaPeriodHolderR.j()) == null || this.rendererPositionUs < mediaPeriodHolderJ.m() || !mediaPeriodHolderJ.allRenderersInCorrectState) {
            return false;
        }
        return true;
    }

    private boolean f1() {
        long jY;
        if (!P()) {
            return false;
        }
        MediaPeriodHolder mediaPeriodHolderL = this.queue.l();
        long jD = D(mediaPeriodHolderL.k());
        if (mediaPeriodHolderL == this.queue.r()) {
            jY = mediaPeriodHolderL.y(this.rendererPositionUs);
        } else {
            jY = mediaPeriodHolderL.y(this.rendererPositionUs) - mediaPeriodHolderL.info.startPositionUs;
        }
        long j6 = jY;
        boolean zA = this.loadControl.a(j6, jD, this.mediaClock.getPlaybackParameters().speed);
        if (!zA && jD < PLAYBACK_BUFFER_EMPTY_THRESHOLD_US) {
            if (this.backBufferDurationUs > 0 || this.retainBackBufferFromKeyframe) {
                this.queue.r().mediaPeriod.discardBuffer(this.playbackInfo.positionUs, false);
                return this.loadControl.a(j6, jD, this.mediaClock.getPlaybackParameters().speed);
            }
            return zA;
        }
        return zA;
    }

    private boolean i1(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        if (mediaPeriodId.c() || timeline.u()) {
            return false;
        }
        timeline.r(timeline.l(mediaPeriodId.periodUid, this.period).windowIndex, this.window);
        if (!this.window.h()) {
            return false;
        }
        Timeline.Window window = this.window;
        if (!window.isDynamic || window.windowStartTimeMs == -9223372036854775807L) {
            return false;
        }
        return true;
    }

    private void m() throws ExoPlaybackException {
        r0();
    }

    private void n(PlayerMessage playerMessage) throws ExoPlaybackException {
        if (playerMessage.j()) {
            return;
        }
        try {
            playerMessage.g().handleMessage(playerMessage.i(), playerMessage.e());
        } finally {
            playerMessage.k(true);
        }
    }

    private void o(Renderer renderer) throws ExoPlaybackException {
        if (!Q(renderer)) {
            return;
        }
        this.mediaClock.a(renderer);
        t(renderer);
        renderer.disable();
        this.enabledRendererCount--;
    }

    private void r0() throws ExoPlaybackException {
        q0();
        D0(true);
    }

    private void r1(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline2, MediaSource.MediaPeriodId mediaPeriodId2, long j6, boolean z6) throws ExoPlaybackException {
        Object obj;
        PlaybackParameters playbackParameters;
        if (!i1(timeline, mediaPeriodId)) {
            if (mediaPeriodId.c()) {
                playbackParameters = PlaybackParameters.DEFAULT;
            } else {
                playbackParameters = this.playbackInfo.playbackParameters;
            }
            if (!this.mediaClock.getPlaybackParameters().equals(playbackParameters)) {
                O0(playbackParameters);
                J(this.playbackInfo.playbackParameters, playbackParameters.speed, false, false);
                return;
            }
            return;
        }
        timeline.r(timeline.l(mediaPeriodId.periodUid, this.period).windowIndex, this.window);
        this.livePlaybackSpeedControl.e((MediaItem.LiveConfiguration) Util.j(this.window.liveConfiguration));
        if (j6 != -9223372036854775807L) {
            this.livePlaybackSpeedControl.d(y(timeline, mediaPeriodId.periodUid, j6));
            return;
        }
        Object obj2 = this.window.uid;
        if (!timeline2.u()) {
            obj = timeline2.r(timeline2.l(mediaPeriodId2.periodUid, this.period).windowIndex, this.window).uid;
        } else {
            obj = null;
        }
        if (!Util.c(obj, obj2) || z6) {
            this.livePlaybackSpeedControl.d(-9223372036854775807L);
        }
    }

    private void t(Renderer renderer) {
        if (renderer.getState() == 2) {
            renderer.stop();
        }
    }

    private void x0(Timeline timeline, Timeline timeline2) {
        if (timeline.u() && timeline2.u()) {
            return;
        }
        for (int size = this.pendingMessages.size() - 1; size >= 0; size--) {
            if (!w0(this.pendingMessages.get(size), timeline, timeline2, this.repeatMode, this.shuffleModeEnabled, this.window, this.period)) {
                this.pendingMessages.get(size).message.k(false);
                this.pendingMessages.remove(size);
            }
        }
        Collections.sort(this.pendingMessages);
    }
}
