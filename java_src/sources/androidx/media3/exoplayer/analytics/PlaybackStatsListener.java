package androidx.media3.exoplayer.analytics;

import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class PlaybackStatsListener implements AnalyticsListener, PlaybackSessionManager.Listener {

    @Nullable
    private Format audioFormat;
    private long bandwidthBytes;
    private long bandwidthTimeMs;

    @Nullable
    private final Callback callback;
    private long discontinuityFromPositionMs;

    @Nullable
    private String discontinuityFromSession;
    private int discontinuityReason;
    private int droppedFrames;
    private PlaybackStats finishedPlaybackStats;
    private final boolean keepHistory;

    @Nullable
    private Exception nonFatalException;
    private final Timeline.Period period;
    private final Map<String, PlaybackStatsTracker> playbackStatsTrackers;
    private final PlaybackSessionManager sessionManager;
    private final Map<String, AnalyticsListener.EventTime> sessionStartEventTimes;

    @Nullable
    private Format videoFormat;
    private VideoSize videoSize;

    public interface Callback {
        void a(AnalyticsListener.EventTime eventTime, PlaybackStats playbackStats);
    }

    private static final class PlaybackStatsTracker {
        private long audioFormatBitrateTimeProduct;
        private final List<PlaybackStats.EventTimeAndFormat> audioFormatHistory;
        private long audioFormatTimeMs;
        private long audioUnderruns;
        private long bandwidthBytes;
        private long bandwidthTimeMs;

        @Nullable
        private Format currentAudioFormat;
        private float currentPlaybackSpeed;
        private int currentPlaybackState;
        private long currentPlaybackStateStartTimeMs;

        @Nullable
        private Format currentVideoFormat;
        private long droppedFrames;
        private int fatalErrorCount;
        private final List<PlaybackStats.EventTimeAndException> fatalErrorHistory;
        private long firstReportedTimeMs;
        private boolean hasBeenReady;
        private boolean hasEnded;
        private boolean hasFatalError;
        private long initialAudioFormatBitrate;
        private long initialVideoFormatBitrate;
        private int initialVideoFormatHeight;
        private final boolean isAd;
        private boolean isForeground;
        private boolean isInterruptedByAd;
        private boolean isJoinTimeInvalid;
        private boolean isSeeking;
        private final boolean keepHistory;
        private long lastAudioFormatStartTimeMs;
        private long lastRebufferStartTimeMs;
        private long lastVideoFormatStartTimeMs;
        private long maxRebufferTimeMs;
        private final List<long[]> mediaTimeHistory;
        private int nonFatalErrorCount;
        private final List<PlaybackStats.EventTimeAndException> nonFatalErrorHistory;
        private int pauseBufferCount;
        private int pauseCount;
        private final long[] playbackStateDurationsMs = new long[16];
        private final List<PlaybackStats.EventTimeAndPlaybackState> playbackStateHistory;
        private int rebufferCount;
        private int seekCount;
        private boolean startedLoading;
        private long videoFormatBitrateTimeMs;
        private long videoFormatBitrateTimeProduct;
        private long videoFormatHeightTimeMs;
        private long videoFormatHeightTimeProduct;
        private final List<PlaybackStats.EventTimeAndFormat> videoFormatHistory;

        private static boolean c(int i10, int i11) {
            return ((i10 != 1 && i10 != 2 && i10 != 14) || i11 == 1 || i11 == 2 || i11 == 14 || i11 == 3 || i11 == 4 || i11 == 9 || i11 == 11) ? false : true;
        }

        private static boolean d(int i10) {
            return i10 == 4 || i10 == 7;
        }

        private static boolean e(int i10) {
            return i10 == 3 || i10 == 4 || i10 == 9;
        }

        private static boolean f(int i10) {
            return i10 == 6 || i10 == 7 || i10 == 10;
        }

        public void m(Player player, AnalyticsListener.EventTime eventTime, boolean z6, long j6, boolean z10, int i10, boolean z11, boolean z12, @Nullable PlaybackException playbackException, @Nullable Exception exc, long j10, long j11, @Nullable Format format, @Nullable Format format2, @Nullable VideoSize videoSize) {
            if (j6 != -9223372036854775807L) {
                k(eventTime.realtimeMs, j6);
                this.isSeeking = true;
            }
            if (player.getPlaybackState() != 2) {
                this.isSeeking = false;
            }
            int playbackState = player.getPlaybackState();
            if (playbackState == 1 || playbackState == 4 || z10) {
                this.isInterruptedByAd = false;
            }
            if (playbackException != null) {
                this.hasFatalError = true;
                this.fatalErrorCount++;
                if (this.keepHistory) {
                    this.fatalErrorHistory.add(new PlaybackStats.EventTimeAndException(eventTime, playbackException));
                }
            } else if (player.d() == null) {
                this.hasFatalError = false;
            }
            if (this.isForeground && !this.isInterruptedByAd) {
                Tracks tracksE = player.e();
                if (!tracksE.d(2)) {
                    l(eventTime, null);
                }
                if (!tracksE.d(1)) {
                    i(eventTime, null);
                }
            }
            if (format != null) {
                l(eventTime, format);
            }
            if (format2 != null) {
                i(eventTime, format2);
            }
            Format format3 = this.currentVideoFormat;
            if (format3 != null && format3.height == -1 && videoSize != null) {
                l(eventTime, format3.b().n0(videoSize.width).S(videoSize.height).G());
            }
            if (z12) {
                this.startedLoading = true;
            }
            if (z11) {
                this.audioUnderruns++;
            }
            this.droppedFrames += (long) i10;
            this.bandwidthTimeMs += j10;
            this.bandwidthBytes += j11;
            if (exc != null) {
                this.nonFatalErrorCount++;
                if (this.keepHistory) {
                    this.nonFatalErrorHistory.add(new PlaybackStats.EventTimeAndException(eventTime, exc));
                }
            }
            int iQ = q(player);
            float f = player.getPlaybackParameters().speed;
            if (this.currentPlaybackState != iQ || this.currentPlaybackSpeed != f) {
                k(eventTime.realtimeMs, z6 ? eventTime.eventPlaybackPositionMs : -9223372036854775807L);
                h(eventTime.realtimeMs);
                g(eventTime.realtimeMs);
            }
            this.currentPlaybackSpeed = f;
            if (this.currentPlaybackState != iQ) {
                r(iQ, eventTime);
            }
        }

        public void o() {
            this.isForeground = true;
        }

        public void p() {
            this.isInterruptedByAd = true;
            this.isSeeking = false;
        }

        private long[] b(long j6) {
            List<long[]> list = this.mediaTimeHistory;
            long[] jArr = list.get(list.size() - 1);
            return new long[]{j6, jArr[1] + ((long) ((j6 - jArr[0]) * this.currentPlaybackSpeed))};
        }

        private void g(long j6) {
            Format format;
            int i10;
            if (this.currentPlaybackState == 3 && (format = this.currentAudioFormat) != null && (i10 = format.bitrate) != -1) {
                long j10 = (long) ((j6 - this.lastAudioFormatStartTimeMs) * this.currentPlaybackSpeed);
                this.audioFormatTimeMs += j10;
                this.audioFormatBitrateTimeProduct += j10 * ((long) i10);
            }
            this.lastAudioFormatStartTimeMs = j6;
        }

        private void h(long j6) {
            Format format;
            if (this.currentPlaybackState == 3 && (format = this.currentVideoFormat) != null) {
                long j10 = (long) ((j6 - this.lastVideoFormatStartTimeMs) * this.currentPlaybackSpeed);
                int i10 = format.height;
                if (i10 != -1) {
                    this.videoFormatHeightTimeMs += j10;
                    this.videoFormatHeightTimeProduct += ((long) i10) * j10;
                }
                int i11 = format.bitrate;
                if (i11 != -1) {
                    this.videoFormatBitrateTimeMs += j10;
                    this.videoFormatBitrateTimeProduct += j10 * ((long) i11);
                }
            }
            this.lastVideoFormatStartTimeMs = j6;
        }

        private void i(AnalyticsListener.EventTime eventTime, @Nullable Format format) {
            int i10;
            if (Util.c(this.currentAudioFormat, format)) {
                return;
            }
            g(eventTime.realtimeMs);
            if (format != null && this.initialAudioFormatBitrate == -1 && (i10 = format.bitrate) != -1) {
                this.initialAudioFormatBitrate = i10;
            }
            this.currentAudioFormat = format;
            if (this.keepHistory) {
                this.audioFormatHistory.add(new PlaybackStats.EventTimeAndFormat(eventTime, format));
            }
        }

        private void j(long j6) {
            if (f(this.currentPlaybackState)) {
                long j10 = j6 - this.lastRebufferStartTimeMs;
                long j11 = this.maxRebufferTimeMs;
                if (j11 == -9223372036854775807L || j10 > j11) {
                    this.maxRebufferTimeMs = j10;
                }
            }
        }

        private void k(long j6, long j10) {
            if (this.keepHistory) {
                if (this.currentPlaybackState != 3) {
                    if (j10 == -9223372036854775807L) {
                        return;
                    }
                    if (!this.mediaTimeHistory.isEmpty()) {
                        List<long[]> list = this.mediaTimeHistory;
                        long j11 = list.get(list.size() - 1)[1];
                        if (j11 != j10) {
                            this.mediaTimeHistory.add(new long[]{j6, j11});
                        }
                    }
                }
                if (j10 != -9223372036854775807L) {
                    this.mediaTimeHistory.add(new long[]{j6, j10});
                } else {
                    if (this.mediaTimeHistory.isEmpty()) {
                        return;
                    }
                    this.mediaTimeHistory.add(b(j6));
                }
            }
        }

        private void l(AnalyticsListener.EventTime eventTime, @Nullable Format format) {
            int i10;
            int i11;
            if (Util.c(this.currentVideoFormat, format)) {
                return;
            }
            h(eventTime.realtimeMs);
            if (format != null) {
                if (this.initialVideoFormatHeight == -1 && (i11 = format.height) != -1) {
                    this.initialVideoFormatHeight = i11;
                }
                if (this.initialVideoFormatBitrate == -1 && (i10 = format.bitrate) != -1) {
                    this.initialVideoFormatBitrate = i10;
                }
            }
            this.currentVideoFormat = format;
            if (this.keepHistory) {
                this.videoFormatHistory.add(new PlaybackStats.EventTimeAndFormat(eventTime, format));
            }
        }

        private void r(int i10, AnalyticsListener.EventTime eventTime) {
            Assertions.a(eventTime.realtimeMs >= this.currentPlaybackStateStartTimeMs);
            long j6 = eventTime.realtimeMs;
            long j10 = j6 - this.currentPlaybackStateStartTimeMs;
            long[] jArr = this.playbackStateDurationsMs;
            int i11 = this.currentPlaybackState;
            jArr[i11] = jArr[i11] + j10;
            if (this.firstReportedTimeMs == -9223372036854775807L) {
                this.firstReportedTimeMs = j6;
            }
            this.isJoinTimeInvalid |= c(i11, i10);
            this.hasBeenReady |= e(i10);
            this.hasEnded |= i10 == 11;
            if (!d(this.currentPlaybackState) && d(i10)) {
                this.pauseCount++;
            }
            if (i10 == 5) {
                this.seekCount++;
            }
            if (!f(this.currentPlaybackState) && f(i10)) {
                this.rebufferCount++;
                this.lastRebufferStartTimeMs = eventTime.realtimeMs;
            }
            if (f(this.currentPlaybackState) && this.currentPlaybackState != 7 && i10 == 7) {
                this.pauseBufferCount++;
            }
            j(eventTime.realtimeMs);
            this.currentPlaybackState = i10;
            this.currentPlaybackStateStartTimeMs = eventTime.realtimeMs;
            if (this.keepHistory) {
                this.playbackStateHistory.add(new PlaybackStats.EventTimeAndPlaybackState(eventTime, i10));
            }
        }

        public PlaybackStats a(boolean z6) {
            long[] jArr;
            List<long[]> list;
            long[] jArr2 = this.playbackStateDurationsMs;
            List<long[]> list2 = this.mediaTimeHistory;
            if (z6) {
                jArr = jArr2;
                list = list2;
            } else {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                long[] jArrCopyOf = Arrays.copyOf(this.playbackStateDurationsMs, 16);
                long jMax = Math.max(0L, jElapsedRealtime - this.currentPlaybackStateStartTimeMs);
                int i10 = this.currentPlaybackState;
                jArrCopyOf[i10] = jArrCopyOf[i10] + jMax;
                j(jElapsedRealtime);
                h(jElapsedRealtime);
                g(jElapsedRealtime);
                ArrayList arrayList = new ArrayList(this.mediaTimeHistory);
                if (this.keepHistory && this.currentPlaybackState == 3) {
                    arrayList.add(b(jElapsedRealtime));
                }
                jArr = jArrCopyOf;
                list = arrayList;
            }
            int i11 = (this.isJoinTimeInvalid || !this.hasBeenReady) ? 1 : 0;
            long j6 = i11 != 0 ? -9223372036854775807L : jArr[2];
            int i12 = jArr[1] > 0 ? 1 : 0;
            List arrayList2 = z6 ? this.videoFormatHistory : new ArrayList(this.videoFormatHistory);
            List arrayList3 = z6 ? this.audioFormatHistory : new ArrayList(this.audioFormatHistory);
            List arrayList4 = z6 ? this.playbackStateHistory : new ArrayList(this.playbackStateHistory);
            long j10 = this.firstReportedTimeMs;
            boolean z10 = this.isForeground;
            int i13 = !this.hasBeenReady ? 1 : 0;
            boolean z11 = this.hasEnded;
            int i14 = i11 ^ 1;
            int i15 = this.pauseCount;
            int i16 = this.pauseBufferCount;
            int i17 = this.seekCount;
            int i18 = this.rebufferCount;
            long j11 = this.maxRebufferTimeMs;
            boolean z12 = this.isAd;
            long[] jArr3 = jArr;
            long j12 = this.videoFormatHeightTimeMs;
            long j13 = this.videoFormatHeightTimeProduct;
            long j14 = this.videoFormatBitrateTimeMs;
            long j15 = this.videoFormatBitrateTimeProduct;
            long j16 = this.audioFormatTimeMs;
            long j17 = this.audioFormatBitrateTimeProduct;
            int i19 = this.initialVideoFormatHeight;
            int i20 = i19 == -1 ? 0 : 1;
            long j18 = this.initialVideoFormatBitrate;
            int i21 = j18 == -1 ? 0 : 1;
            long j19 = this.initialAudioFormatBitrate;
            int i22 = j19 == -1 ? 0 : 1;
            long j20 = this.bandwidthTimeMs;
            long j21 = this.bandwidthBytes;
            long j22 = this.droppedFrames;
            long j23 = this.audioUnderruns;
            int i23 = this.fatalErrorCount;
            return new PlaybackStats(1, jArr3, arrayList4, list, j10, z10 ? 1 : 0, i13, z11 ? 1 : 0, i12, j6, i14, i15, i16, i17, i18, j11, z12 ? 1 : 0, arrayList2, arrayList3, j12, j13, j14, j15, j16, j17, i20, i21, i19, j18, i22, j19, j20, j21, j22, j23, i23 > 0 ? 1 : 0, i23, this.nonFatalErrorCount, this.fatalErrorHistory, this.nonFatalErrorHistory);
        }

        public void n(AnalyticsListener.EventTime eventTime, boolean z6, long j6) {
            int i10 = 11;
            if (this.currentPlaybackState != 11 && !z6) {
                i10 = 15;
            }
            k(eventTime.realtimeMs, j6);
            h(eventTime.realtimeMs);
            g(eventTime.realtimeMs);
            r(i10, eventTime);
        }

        public PlaybackStatsTracker(boolean z6, AnalyticsListener.EventTime eventTime) {
            List<PlaybackStats.EventTimeAndPlaybackState> listEmptyList;
            List<long[]> listEmptyList2;
            List<PlaybackStats.EventTimeAndFormat> listEmptyList3;
            List<PlaybackStats.EventTimeAndFormat> listEmptyList4;
            List<PlaybackStats.EventTimeAndException> listEmptyList5;
            List<PlaybackStats.EventTimeAndException> listEmptyList6;
            this.keepHistory = z6;
            if (z6) {
                listEmptyList = new ArrayList<>();
            } else {
                listEmptyList = Collections.emptyList();
            }
            this.playbackStateHistory = listEmptyList;
            if (z6) {
                listEmptyList2 = new ArrayList<>();
            } else {
                listEmptyList2 = Collections.emptyList();
            }
            this.mediaTimeHistory = listEmptyList2;
            if (z6) {
                listEmptyList3 = new ArrayList<>();
            } else {
                listEmptyList3 = Collections.emptyList();
            }
            this.videoFormatHistory = listEmptyList3;
            if (z6) {
                listEmptyList4 = new ArrayList<>();
            } else {
                listEmptyList4 = Collections.emptyList();
            }
            this.audioFormatHistory = listEmptyList4;
            if (z6) {
                listEmptyList5 = new ArrayList<>();
            } else {
                listEmptyList5 = Collections.emptyList();
            }
            this.fatalErrorHistory = listEmptyList5;
            if (z6) {
                listEmptyList6 = new ArrayList<>();
            } else {
                listEmptyList6 = Collections.emptyList();
            }
            this.nonFatalErrorHistory = listEmptyList6;
            boolean z10 = false;
            this.currentPlaybackState = 0;
            this.currentPlaybackStateStartTimeMs = eventTime.realtimeMs;
            this.firstReportedTimeMs = -9223372036854775807L;
            this.maxRebufferTimeMs = -9223372036854775807L;
            MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
            if (mediaPeriodId != null && mediaPeriodId.c()) {
                z10 = true;
            }
            this.isAd = z10;
            this.initialAudioFormatBitrate = -1L;
            this.initialVideoFormatBitrate = -1L;
            this.initialVideoFormatHeight = -1;
            this.currentPlaybackSpeed = 1.0f;
        }

        private int q(Player player) {
            int playbackState = player.getPlaybackState();
            if (this.isSeeking && this.isForeground) {
                return 5;
            }
            if (this.hasFatalError) {
                return 13;
            }
            if (!this.isForeground) {
                return this.startedLoading ? 1 : 0;
            }
            if (this.isInterruptedByAd) {
                return 14;
            }
            if (playbackState == 4) {
                return 11;
            }
            if (playbackState == 2) {
                int i10 = this.currentPlaybackState;
                if (i10 == 0 || i10 == 1 || i10 == 2 || i10 == 14) {
                    return 2;
                }
                if (!player.getPlayWhenReady()) {
                    return 7;
                }
                if (player.r() != 0) {
                    return 10;
                }
                return 6;
            }
            if (playbackState == 3) {
                if (!player.getPlayWhenReady()) {
                    return 4;
                }
                if (player.r() == 0) {
                    return 3;
                }
                return 9;
            }
            if (playbackState == 1 && this.currentPlaybackState != 0) {
                return 12;
            }
            return this.currentPlaybackState;
        }
    }

    private void C0(AnalyticsListener.Events events) {
        for (int i10 = 0; i10 < events.d(); i10++) {
            int iB = events.b(i10);
            AnalyticsListener.EventTime eventTimeC = events.c(iB);
            if (iB == 0) {
                this.sessionManager.g(eventTimeC);
            } else if (iB == 11) {
                this.sessionManager.d(eventTimeC, this.discontinuityReason);
            } else {
                this.sessionManager.b(eventTimeC);
            }
        }
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void A(AnalyticsListener.EventTime eventTime, String str, long j6) {
        a.h0(this, eventTime, str, j6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void B(AnalyticsListener.EventTime eventTime) {
        a.t(this, eventTime);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void C(AnalyticsListener.EventTime eventTime, Tracks tracks) {
        a.e0(this, eventTime, tracks);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void E(AnalyticsListener.EventTime eventTime, VideoSize videoSize) {
        this.videoSize = videoSize;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void F(AnalyticsListener.EventTime eventTime, long j6) {
        a.X(this, eventTime, j6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void G(AnalyticsListener.EventTime eventTime, long j6, int i10) {
        a.m0(this, eventTime, j6, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void J(AnalyticsListener.EventTime eventTime, DeviceInfo deviceInfo) {
        a.p(this, eventTime, deviceInfo);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void K(AnalyticsListener.EventTime eventTime) {
        a.r(this, eventTime);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void L(AnalyticsListener.EventTime eventTime, Object obj, long j6) {
        a.U(this, eventTime, obj, j6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void M(AnalyticsListener.EventTime eventTime, boolean z6) {
        a.A(this, eventTime, z6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void N(AnalyticsListener.EventTime eventTime, int i10, boolean z6) {
        a.q(this, eventTime, i10, z6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void O(AnalyticsListener.EventTime eventTime, Metadata metadata) {
        a.J(this, eventTime, metadata);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void P(AnalyticsListener.EventTime eventTime, List list) {
        a.o(this, eventTime, list);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void Q(AnalyticsListener.EventTime eventTime, boolean z6) {
        a.a0(this, eventTime, z6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void R(AnalyticsListener.EventTime eventTime, PlaybackException playbackException) {
        a.O(this, eventTime, playbackException);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void S(AnalyticsListener.EventTime eventTime, long j6) {
        a.W(this, eventTime, j6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void T(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        a.k0(this, eventTime, decoderCounters);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void U(AnalyticsListener.EventTime eventTime, Format format) {
        a.n0(this, eventTime, format);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void V(AnalyticsListener.EventTime eventTime, MediaMetadata mediaMetadata) {
        a.I(this, eventTime, mediaMetadata);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void W(AnalyticsListener.EventTime eventTime, AudioAttributes audioAttributes) {
        a.a(this, eventTime, audioAttributes);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void X(AnalyticsListener.EventTime eventTime, int i10) {
        a.c0(this, eventTime, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void Y(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        a.f(this, eventTime, decoderCounters);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void Z(AnalyticsListener.EventTime eventTime) {
        a.Q(this, eventTime);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void b(AnalyticsListener.EventTime eventTime, boolean z6) {
        a.B(this, eventTime, z6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void b0(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        a.l0(this, eventTime, decoderCounters);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void c(AnalyticsListener.EventTime eventTime, int i10) {
        a.T(this, eventTime, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void c0(AnalyticsListener.EventTime eventTime, Exception exc) {
        a.k(this, eventTime, exc);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void d(AnalyticsListener.EventTime eventTime, boolean z6, int i10) {
        a.K(this, eventTime, z6, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void d0(AnalyticsListener.EventTime eventTime, float f) {
        a.q0(this, eventTime, f);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void e(AnalyticsListener.EventTime eventTime, Format format) {
        a.h(this, eventTime, format);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void e0(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z6) {
        this.nonFatalException = iOException;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void f(AnalyticsListener.EventTime eventTime) {
        a.x(this, eventTime);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void f0(AnalyticsListener.EventTime eventTime, long j6) {
        a.j(this, eventTime, j6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void g(AnalyticsListener.EventTime eventTime, int i10, long j6, long j10) {
        this.bandwidthTimeMs = i10;
        this.bandwidthBytes = j6;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void g0(AnalyticsListener.EventTime eventTime, int i10, long j6, long j10) {
        a.l(this, eventTime, i10, j6, j10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void h(AnalyticsListener.EventTime eventTime, Exception exc) {
        a.b(this, eventTime, exc);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void h0(AnalyticsListener.EventTime eventTime, String str, long j6) {
        a.c(this, eventTime, str, j6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void i(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        a.D(this, eventTime, loadEventInfo, mediaLoadData);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void i0(AnalyticsListener.EventTime eventTime, String str) {
        a.e(this, eventTime, str);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void j(AnalyticsListener.EventTime eventTime, String str, long j6, long j10) {
        a.d(this, eventTime, str, j6, j10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void j0(AnalyticsListener.EventTime eventTime, String str) {
        a.j0(this, eventTime, str);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void k(AnalyticsListener.EventTime eventTime, TrackSelectionParameters trackSelectionParameters) {
        a.d0(this, eventTime, trackSelectionParameters);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void k0(AnalyticsListener.EventTime eventTime) {
        a.s(this, eventTime);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void l(AnalyticsListener.EventTime eventTime, Exception exc) {
        this.nonFatalException = exc;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void l0(AnalyticsListener.EventTime eventTime, int i10, int i11, int i12, float f) {
        a.p0(this, eventTime, i10, i11, i12, f);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void m(AnalyticsListener.EventTime eventTime, MediaItem mediaItem, int i10) {
        a.H(this, eventTime, mediaItem, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void m0(AnalyticsListener.EventTime eventTime) {
        a.u(this, eventTime);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void n(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        a.g(this, eventTime, decoderCounters);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void n0(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        a.E(this, eventTime, loadEventInfo, mediaLoadData);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void o(AnalyticsListener.EventTime eventTime, int i10, int i11) {
        a.b0(this, eventTime, i10, i11);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void o0(AnalyticsListener.EventTime eventTime, boolean z6, int i10) {
        a.R(this, eventTime, z6, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void p(AnalyticsListener.EventTime eventTime, int i10) {
        a.v(this, eventTime, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void p0(AnalyticsListener.EventTime eventTime, PlaybackException playbackException) {
        a.P(this, eventTime, playbackException);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void q(AnalyticsListener.EventTime eventTime, Player.Commands commands) {
        a.m(this, eventTime, commands);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void q0(AnalyticsListener.EventTime eventTime) {
        a.Y(this, eventTime);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void r(AnalyticsListener.EventTime eventTime, Exception exc) {
        a.g0(this, eventTime, exc);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void r0(AnalyticsListener.EventTime eventTime, long j6) {
        a.G(this, eventTime, j6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void s(AnalyticsListener.EventTime eventTime, boolean z6) {
        a.Z(this, eventTime, z6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void s0(AnalyticsListener.EventTime eventTime, int i10) {
        a.V(this, eventTime, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void t(AnalyticsListener.EventTime eventTime, int i10) {
        a.M(this, eventTime, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void t0(AnalyticsListener.EventTime eventTime, CueGroup cueGroup) {
        a.n(this, eventTime, cueGroup);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void u(AnalyticsListener.EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
        a.i(this, eventTime, format, decoderReuseEvaluation);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void u0(AnalyticsListener.EventTime eventTime, String str, long j6, long j10) {
        a.i0(this, eventTime, str, j6, j10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void v(AnalyticsListener.EventTime eventTime, PlaybackParameters playbackParameters) {
        a.L(this, eventTime, playbackParameters);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void v0(AnalyticsListener.EventTime eventTime, MediaMetadata mediaMetadata) {
        a.S(this, eventTime, mediaMetadata);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void w(AnalyticsListener.EventTime eventTime, int i10) {
        a.N(this, eventTime, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void x(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
        a.f0(this, eventTime, mediaLoadData);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void x0(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        a.C(this, eventTime, loadEventInfo, mediaLoadData);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void y(AnalyticsListener.EventTime eventTime, boolean z6) {
        a.F(this, eventTime, z6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void z(AnalyticsListener.EventTime eventTime, int i10, long j6) {
        this.droppedFrames = i10;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void z0(AnalyticsListener.EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
        a.o0(this, eventTime, format, decoderReuseEvaluation);
    }

    private Pair<AnalyticsListener.EventTime, Boolean> A0(AnalyticsListener.Events events, String str) {
        MediaSource.MediaPeriodId mediaPeriodId;
        AnalyticsListener.EventTime eventTime = null;
        boolean zF = false;
        for (int i10 = 0; i10 < events.d(); i10++) {
            AnalyticsListener.EventTime eventTimeC = events.c(events.b(i10));
            boolean zF2 = this.sessionManager.f(eventTimeC, str);
            if (eventTime == null || ((zF2 && !zF) || (zF2 == zF && eventTimeC.realtimeMs > eventTime.realtimeMs))) {
                eventTime = eventTimeC;
                zF = zF2;
            }
        }
        Assertions.e(eventTime);
        if (!zF && (mediaPeriodId = eventTime.mediaPeriodId) != null && mediaPeriodId.c()) {
            long jI = eventTime.timeline.l(eventTime.mediaPeriodId.periodUid, this.period).i(eventTime.mediaPeriodId.adGroupIndex);
            if (jI == Long.MIN_VALUE) {
                jI = this.period.durationUs;
            }
            long jR = jI + this.period.r();
            long j6 = eventTime.realtimeMs;
            Timeline timeline = eventTime.timeline;
            int i11 = eventTime.windowIndex;
            MediaSource.MediaPeriodId mediaPeriodId2 = eventTime.mediaPeriodId;
            AnalyticsListener.EventTime eventTime2 = new AnalyticsListener.EventTime(j6, timeline, i11, new MediaSource.MediaPeriodId(mediaPeriodId2.periodUid, mediaPeriodId2.windowSequenceNumber, mediaPeriodId2.adGroupIndex), Util.q1(jR), eventTime.timeline, eventTime.currentWindowIndex, eventTime.currentMediaPeriodId, eventTime.currentPlaybackPositionMs, eventTime.totalBufferedDurationMs);
            zF = this.sessionManager.f(eventTime2, str);
            eventTime = eventTime2;
        }
        return Pair.create(eventTime, Boolean.valueOf(zF));
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager.Listener
    public void D(AnalyticsListener.EventTime eventTime, String str, boolean z6) {
        PlaybackStatsTracker playbackStatsTracker = (PlaybackStatsTracker) Assertions.e(this.playbackStatsTrackers.remove(str));
        AnalyticsListener.EventTime eventTime2 = (AnalyticsListener.EventTime) Assertions.e(this.sessionStartEventTimes.remove(str));
        playbackStatsTracker.n(eventTime, z6, str.equals(this.discontinuityFromSession) ? this.discontinuityFromPositionMs : -9223372036854775807L);
        PlaybackStats playbackStatsA = playbackStatsTracker.a(true);
        this.finishedPlaybackStats = PlaybackStats.a(this.finishedPlaybackStats, playbackStatsA);
        Callback callback = this.callback;
        if (callback != null) {
            callback.a(eventTime2, playbackStatsA);
        }
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void H(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
        int i10 = mediaLoadData.trackType;
        if (i10 == 2 || i10 == 0) {
            this.videoFormat = mediaLoadData.trackFormat;
        } else if (i10 == 1) {
            this.audioFormat = mediaLoadData.trackFormat;
        }
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void I(Player player, AnalyticsListener.Events events) {
        if (events.d() == 0) {
            return;
        }
        C0(events);
        for (String str : this.playbackStatsTrackers.keySet()) {
            Pair<AnalyticsListener.EventTime, Boolean> pairA0 = A0(events, str);
            PlaybackStatsTracker playbackStatsTracker = this.playbackStatsTrackers.get(str);
            boolean zB0 = B0(events, str, 11);
            boolean zB1 = B0(events, str, 1018);
            boolean zB2 = B0(events, str, 1011);
            boolean zB3 = B0(events, str, 1000);
            boolean zB4 = B0(events, str, 10);
            boolean z6 = B0(events, str, 1003) || B0(events, str, 1024);
            boolean zB5 = B0(events, str, 1006);
            boolean zB6 = B0(events, str, 1004);
            playbackStatsTracker.m(player, (AnalyticsListener.EventTime) pairA0.first, ((Boolean) pairA0.second).booleanValue(), str.equals(this.discontinuityFromSession) ? this.discontinuityFromPositionMs : -9223372036854775807L, zB0, zB1 ? this.droppedFrames : 0, zB2, zB3, zB4 ? player.d() : null, z6 ? this.nonFatalException : null, zB5 ? this.bandwidthTimeMs : 0L, zB5 ? this.bandwidthBytes : 0L, zB6 ? this.videoFormat : null, zB6 ? this.audioFormat : null, B0(events, str, 25) ? this.videoSize : null);
        }
        this.videoFormat = null;
        this.audioFormat = null;
        this.discontinuityFromSession = null;
        if (events.a(1028)) {
            this.sessionManager.h(events.c(1028));
        }
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager.Listener
    public void a(AnalyticsListener.EventTime eventTime, String str, String str2) {
        ((PlaybackStatsTracker) Assertions.e(this.playbackStatsTrackers.get(str))).p();
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void a0(AnalyticsListener.EventTime eventTime, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i10) {
        if (this.discontinuityFromSession == null) {
            this.discontinuityFromSession = this.sessionManager.a();
            this.discontinuityFromPositionMs = positionInfo.positionMs;
        }
        this.discontinuityReason = i10;
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager.Listener
    public void w0(AnalyticsListener.EventTime eventTime, String str) {
        this.playbackStatsTrackers.put(str, new PlaybackStatsTracker(this.keepHistory, eventTime));
        this.sessionStartEventTimes.put(str, eventTime);
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager.Listener
    public void y0(AnalyticsListener.EventTime eventTime, String str) {
        ((PlaybackStatsTracker) Assertions.e(this.playbackStatsTrackers.get(str))).o();
    }

    public PlaybackStatsListener(boolean z6, @Nullable Callback callback) {
        this.callback = callback;
        this.keepHistory = z6;
        DefaultPlaybackSessionManager defaultPlaybackSessionManager = new DefaultPlaybackSessionManager();
        this.sessionManager = defaultPlaybackSessionManager;
        this.playbackStatsTrackers = new HashMap();
        this.sessionStartEventTimes = new HashMap();
        this.finishedPlaybackStats = PlaybackStats.EMPTY;
        this.period = new Timeline.Period();
        this.videoSize = VideoSize.UNKNOWN;
        defaultPlaybackSessionManager.c(this);
    }

    private boolean B0(AnalyticsListener.Events events, String str, int i10) {
        if (events.a(i10) && this.sessionManager.f(events.c(i10), str)) {
            return true;
        }
        return false;
    }
}
