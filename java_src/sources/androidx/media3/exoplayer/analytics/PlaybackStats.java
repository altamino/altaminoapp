package androidx.media3.exoplayer.analytics;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class PlaybackStats {
    public static final PlaybackStats EMPTY = a(new PlaybackStats[0]);
    public static final int PLAYBACK_STATE_ABANDONED = 15;
    public static final int PLAYBACK_STATE_BUFFERING = 6;
    static final int PLAYBACK_STATE_COUNT = 16;
    public static final int PLAYBACK_STATE_ENDED = 11;
    public static final int PLAYBACK_STATE_FAILED = 13;
    public static final int PLAYBACK_STATE_INTERRUPTED_BY_AD = 14;
    public static final int PLAYBACK_STATE_JOINING_BACKGROUND = 1;
    public static final int PLAYBACK_STATE_JOINING_FOREGROUND = 2;
    public static final int PLAYBACK_STATE_NOT_STARTED = 0;
    public static final int PLAYBACK_STATE_PAUSED = 4;
    public static final int PLAYBACK_STATE_PAUSED_BUFFERING = 7;
    public static final int PLAYBACK_STATE_PLAYING = 3;
    public static final int PLAYBACK_STATE_SEEKING = 5;
    public static final int PLAYBACK_STATE_STOPPED = 12;
    public static final int PLAYBACK_STATE_SUPPRESSED = 9;
    public static final int PLAYBACK_STATE_SUPPRESSED_BUFFERING = 10;
    public final int abandonedBeforeReadyCount;
    public final int adPlaybackCount;
    public final List<EventTimeAndFormat> audioFormatHistory;
    public final int backgroundJoiningCount;
    public final int endedCount;
    public final int fatalErrorCount;
    public final List<EventTimeAndException> fatalErrorHistory;
    public final int fatalErrorPlaybackCount;
    public final long firstReportedTimeMs;
    public final int foregroundPlaybackCount;
    public final int initialAudioFormatBitrateCount;
    public final int initialVideoFormatBitrateCount;
    public final int initialVideoFormatHeightCount;
    public final long maxRebufferTimeMs;
    public final List<long[]> mediaTimeHistory;
    public final int nonFatalErrorCount;
    public final List<EventTimeAndException> nonFatalErrorHistory;
    public final int playbackCount;
    private final long[] playbackStateDurationsMs;
    public final List<EventTimeAndPlaybackState> playbackStateHistory;
    public final long totalAudioFormatBitrateTimeProduct;
    public final long totalAudioFormatTimeMs;
    public final long totalAudioUnderruns;
    public final long totalBandwidthBytes;
    public final long totalBandwidthTimeMs;
    public final long totalDroppedFrames;
    public final long totalInitialAudioFormatBitrate;
    public final long totalInitialVideoFormatBitrate;
    public final int totalInitialVideoFormatHeight;
    public final int totalPauseBufferCount;
    public final int totalPauseCount;
    public final int totalRebufferCount;
    public final int totalSeekCount;
    public final long totalValidJoinTimeMs;
    public final long totalVideoFormatBitrateTimeMs;
    public final long totalVideoFormatBitrateTimeProduct;
    public final long totalVideoFormatHeightTimeMs;
    public final long totalVideoFormatHeightTimeProduct;
    public final int validJoinTimeCount;
    public final List<EventTimeAndFormat> videoFormatHistory;

    public static final class EventTimeAndException {
        public final AnalyticsListener.EventTime eventTime;
        public final Exception exception;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || EventTimeAndException.class != obj.getClass()) {
                return false;
            }
            EventTimeAndException eventTimeAndException = (EventTimeAndException) obj;
            if (this.eventTime.equals(eventTimeAndException.eventTime)) {
                return this.exception.equals(eventTimeAndException.exception);
            }
            return false;
        }

        public int hashCode() {
            return (this.eventTime.hashCode() * 31) + this.exception.hashCode();
        }

        public EventTimeAndException(AnalyticsListener.EventTime eventTime, Exception exc) {
            this.eventTime = eventTime;
            this.exception = exc;
        }
    }

    public static final class EventTimeAndFormat {
        public final AnalyticsListener.EventTime eventTime;

        @Nullable
        public final Format format;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || EventTimeAndFormat.class != obj.getClass()) {
                return false;
            }
            EventTimeAndFormat eventTimeAndFormat = (EventTimeAndFormat) obj;
            if (!this.eventTime.equals(eventTimeAndFormat.eventTime)) {
                return false;
            }
            Format format = this.format;
            Format format2 = eventTimeAndFormat.format;
            if (format != null) {
                return format.equals(format2);
            }
            return format2 == null;
        }

        public int hashCode() {
            int iHashCode = this.eventTime.hashCode() * 31;
            Format format = this.format;
            return iHashCode + (format != null ? format.hashCode() : 0);
        }

        public EventTimeAndFormat(AnalyticsListener.EventTime eventTime, @Nullable Format format) {
            this.eventTime = eventTime;
            this.format = format;
        }
    }

    public static final class EventTimeAndPlaybackState {
        public final AnalyticsListener.EventTime eventTime;
        public final int playbackState;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || EventTimeAndPlaybackState.class != obj.getClass()) {
                return false;
            }
            EventTimeAndPlaybackState eventTimeAndPlaybackState = (EventTimeAndPlaybackState) obj;
            if (this.playbackState != eventTimeAndPlaybackState.playbackState) {
                return false;
            }
            return this.eventTime.equals(eventTimeAndPlaybackState.eventTime);
        }

        public int hashCode() {
            return (this.eventTime.hashCode() * 31) + this.playbackState;
        }

        public EventTimeAndPlaybackState(AnalyticsListener.EventTime eventTime, int i10) {
            this.eventTime = eventTime;
            this.playbackState = i10;
        }
    }

    PlaybackStats(int i10, long[] jArr, List<EventTimeAndPlaybackState> list, List<long[]> list2, long j6, int i11, int i12, int i13, int i14, long j10, int i15, int i16, int i17, int i18, int i19, long j11, int i20, List<EventTimeAndFormat> list3, List<EventTimeAndFormat> list4, long j12, long j13, long j14, long j15, long j16, long j17, int i21, int i22, int i23, long j18, int i24, long j19, long j20, long j21, long j22, long j23, int i25, int i26, int i27, List<EventTimeAndException> list5, List<EventTimeAndException> list6) {
        this.playbackCount = i10;
        this.playbackStateDurationsMs = jArr;
        this.playbackStateHistory = Collections.unmodifiableList(list);
        this.mediaTimeHistory = Collections.unmodifiableList(list2);
        this.firstReportedTimeMs = j6;
        this.foregroundPlaybackCount = i11;
        this.abandonedBeforeReadyCount = i12;
        this.endedCount = i13;
        this.backgroundJoiningCount = i14;
        this.totalValidJoinTimeMs = j10;
        this.validJoinTimeCount = i15;
        this.totalPauseCount = i16;
        this.totalPauseBufferCount = i17;
        this.totalSeekCount = i18;
        this.totalRebufferCount = i19;
        this.maxRebufferTimeMs = j11;
        this.adPlaybackCount = i20;
        this.videoFormatHistory = Collections.unmodifiableList(list3);
        this.audioFormatHistory = Collections.unmodifiableList(list4);
        this.totalVideoFormatHeightTimeMs = j12;
        this.totalVideoFormatHeightTimeProduct = j13;
        this.totalVideoFormatBitrateTimeMs = j14;
        this.totalVideoFormatBitrateTimeProduct = j15;
        this.totalAudioFormatTimeMs = j16;
        this.totalAudioFormatBitrateTimeProduct = j17;
        this.initialVideoFormatHeightCount = i21;
        this.initialVideoFormatBitrateCount = i22;
        this.totalInitialVideoFormatHeight = i23;
        this.totalInitialVideoFormatBitrate = j18;
        this.initialAudioFormatBitrateCount = i24;
        this.totalInitialAudioFormatBitrate = j19;
        this.totalBandwidthTimeMs = j20;
        this.totalBandwidthBytes = j21;
        this.totalDroppedFrames = j22;
        this.totalAudioUnderruns = j23;
        this.fatalErrorPlaybackCount = i25;
        this.fatalErrorCount = i26;
        this.nonFatalErrorCount = i27;
        this.fatalErrorHistory = Collections.unmodifiableList(list5);
        this.nonFatalErrorHistory = Collections.unmodifiableList(list6);
    }

    public static PlaybackStats a(PlaybackStats... playbackStatsArr) {
        int i10;
        int i11 = 16;
        long[] jArr = new long[16];
        int length = playbackStatsArr.length;
        long j6 = 0;
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        long j13 = 0;
        long j14 = 0;
        long j15 = 0;
        long j16 = 0;
        long j17 = 0;
        long j18 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = -1;
        long jMax = -9223372036854775807L;
        long jMin = -9223372036854775807L;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        long j19 = -9223372036854775807L;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        long j20 = -1;
        int i27 = 0;
        long j21 = -1;
        int i28 = 0;
        int i29 = 0;
        int i30 = 0;
        while (i12 < length) {
            PlaybackStats playbackStats = playbackStatsArr[i12];
            i13 += playbackStats.playbackCount;
            for (int i31 = 0; i31 < i11; i31++) {
                jArr[i31] = jArr[i31] + playbackStats.playbackStateDurationsMs[i31];
            }
            if (jMin == -9223372036854775807L) {
                jMin = playbackStats.firstReportedTimeMs;
                i10 = length;
            } else {
                i10 = length;
                long j22 = playbackStats.firstReportedTimeMs;
                if (j22 != -9223372036854775807L) {
                    jMin = Math.min(jMin, j22);
                }
            }
            i15 += playbackStats.foregroundPlaybackCount;
            i16 += playbackStats.abandonedBeforeReadyCount;
            i17 += playbackStats.endedCount;
            i18 += playbackStats.backgroundJoiningCount;
            if (j19 == -9223372036854775807L) {
                j19 = playbackStats.totalValidJoinTimeMs;
            } else {
                long j23 = playbackStats.totalValidJoinTimeMs;
                if (j23 != -9223372036854775807L) {
                    j19 += j23;
                }
            }
            i19 += playbackStats.validJoinTimeCount;
            i20 += playbackStats.totalPauseCount;
            i21 += playbackStats.totalPauseBufferCount;
            i22 += playbackStats.totalSeekCount;
            i23 += playbackStats.totalRebufferCount;
            if (jMax == -9223372036854775807L) {
                jMax = playbackStats.maxRebufferTimeMs;
            } else {
                long j24 = playbackStats.maxRebufferTimeMs;
                if (j24 != -9223372036854775807L) {
                    jMax = Math.max(jMax, j24);
                }
            }
            i24 += playbackStats.adPlaybackCount;
            j6 += playbackStats.totalVideoFormatHeightTimeMs;
            j10 += playbackStats.totalVideoFormatHeightTimeProduct;
            j11 += playbackStats.totalVideoFormatBitrateTimeMs;
            j12 += playbackStats.totalVideoFormatBitrateTimeProduct;
            j13 += playbackStats.totalAudioFormatTimeMs;
            j14 += playbackStats.totalAudioFormatBitrateTimeProduct;
            i25 += playbackStats.initialVideoFormatHeightCount;
            i26 += playbackStats.initialVideoFormatBitrateCount;
            if (i14 == -1) {
                i14 = playbackStats.totalInitialVideoFormatHeight;
            } else {
                int i32 = playbackStats.totalInitialVideoFormatHeight;
                if (i32 != -1) {
                    i14 += i32;
                }
            }
            if (j20 == -1) {
                j20 = playbackStats.totalInitialVideoFormatBitrate;
            } else {
                long j25 = playbackStats.totalInitialVideoFormatBitrate;
                if (j25 != -1) {
                    j20 += j25;
                }
            }
            i27 += playbackStats.initialAudioFormatBitrateCount;
            if (j21 == -1) {
                j21 = playbackStats.totalInitialAudioFormatBitrate;
            } else {
                long j26 = playbackStats.totalInitialAudioFormatBitrate;
                if (j26 != -1) {
                    j21 += j26;
                }
            }
            j15 += playbackStats.totalBandwidthTimeMs;
            j16 += playbackStats.totalBandwidthBytes;
            j17 += playbackStats.totalDroppedFrames;
            j18 += playbackStats.totalAudioUnderruns;
            i28 += playbackStats.fatalErrorPlaybackCount;
            i29 += playbackStats.fatalErrorCount;
            i30 += playbackStats.nonFatalErrorCount;
            i12++;
            length = i10;
            i11 = 16;
        }
        return new PlaybackStats(i13, jArr, Collections.emptyList(), Collections.emptyList(), jMin, i15, i16, i17, i18, j19, i19, i20, i21, i22, i23, jMax, i24, Collections.emptyList(), Collections.emptyList(), j6, j10, j11, j12, j13, j14, i25, i26, i14, j20, i27, j21, j15, j16, j17, j18, i28, i29, i30, Collections.emptyList(), Collections.emptyList());
    }
}
