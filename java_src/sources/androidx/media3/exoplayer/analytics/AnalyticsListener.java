package androidx.media3.exoplayer.analytics;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.FlagSet;
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
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public interface AnalyticsListener {

    @UnstableApi
    public static final int EVENT_AUDIO_ATTRIBUTES_CHANGED = 20;

    @UnstableApi
    public static final int EVENT_AUDIO_CODEC_ERROR = 1029;

    @UnstableApi
    public static final int EVENT_AUDIO_DECODER_INITIALIZED = 1008;

    @UnstableApi
    public static final int EVENT_AUDIO_DECODER_RELEASED = 1012;

    @UnstableApi
    public static final int EVENT_AUDIO_DISABLED = 1013;

    @UnstableApi
    public static final int EVENT_AUDIO_ENABLED = 1007;

    @UnstableApi
    public static final int EVENT_AUDIO_INPUT_FORMAT_CHANGED = 1009;

    @UnstableApi
    public static final int EVENT_AUDIO_POSITION_ADVANCING = 1010;

    @UnstableApi
    public static final int EVENT_AUDIO_SESSION_ID = 21;

    @UnstableApi
    public static final int EVENT_AUDIO_SINK_ERROR = 1014;

    @UnstableApi
    public static final int EVENT_AUDIO_UNDERRUN = 1011;

    @UnstableApi
    public static final int EVENT_AVAILABLE_COMMANDS_CHANGED = 13;

    @UnstableApi
    public static final int EVENT_BANDWIDTH_ESTIMATE = 1006;

    @UnstableApi
    public static final int EVENT_CUES = 27;

    @UnstableApi
    public static final int EVENT_DEVICE_INFO_CHANGED = 29;

    @UnstableApi
    public static final int EVENT_DEVICE_VOLUME_CHANGED = 30;

    @UnstableApi
    public static final int EVENT_DOWNSTREAM_FORMAT_CHANGED = 1004;

    @UnstableApi
    public static final int EVENT_DRM_KEYS_LOADED = 1023;

    @UnstableApi
    public static final int EVENT_DRM_KEYS_REMOVED = 1026;

    @UnstableApi
    public static final int EVENT_DRM_KEYS_RESTORED = 1025;

    @UnstableApi
    public static final int EVENT_DRM_SESSION_ACQUIRED = 1022;

    @UnstableApi
    public static final int EVENT_DRM_SESSION_MANAGER_ERROR = 1024;

    @UnstableApi
    public static final int EVENT_DRM_SESSION_RELEASED = 1027;

    @UnstableApi
    public static final int EVENT_DROPPED_VIDEO_FRAMES = 1018;

    @UnstableApi
    public static final int EVENT_IS_LOADING_CHANGED = 3;

    @UnstableApi
    public static final int EVENT_IS_PLAYING_CHANGED = 7;

    @UnstableApi
    public static final int EVENT_LOAD_CANCELED = 1002;

    @UnstableApi
    public static final int EVENT_LOAD_COMPLETED = 1001;

    @UnstableApi
    public static final int EVENT_LOAD_ERROR = 1003;

    @UnstableApi
    public static final int EVENT_LOAD_STARTED = 1000;

    @UnstableApi
    public static final int EVENT_MAX_SEEK_TO_PREVIOUS_POSITION_CHANGED = 18;

    @UnstableApi
    public static final int EVENT_MEDIA_ITEM_TRANSITION = 1;

    @UnstableApi
    public static final int EVENT_MEDIA_METADATA_CHANGED = 14;

    @UnstableApi
    public static final int EVENT_METADATA = 28;

    @UnstableApi
    public static final int EVENT_PLAYBACK_PARAMETERS_CHANGED = 12;

    @UnstableApi
    public static final int EVENT_PLAYBACK_STATE_CHANGED = 4;

    @UnstableApi
    public static final int EVENT_PLAYBACK_SUPPRESSION_REASON_CHANGED = 6;

    @UnstableApi
    public static final int EVENT_PLAYER_ERROR = 10;

    @UnstableApi
    public static final int EVENT_PLAYER_RELEASED = 1028;

    @UnstableApi
    public static final int EVENT_PLAYLIST_METADATA_CHANGED = 15;

    @UnstableApi
    public static final int EVENT_PLAY_WHEN_READY_CHANGED = 5;

    @UnstableApi
    public static final int EVENT_POSITION_DISCONTINUITY = 11;

    @UnstableApi
    public static final int EVENT_RENDERED_FIRST_FRAME = 26;

    @UnstableApi
    public static final int EVENT_REPEAT_MODE_CHANGED = 8;

    @UnstableApi
    public static final int EVENT_SEEK_BACK_INCREMENT_CHANGED = 16;

    @UnstableApi
    public static final int EVENT_SEEK_FORWARD_INCREMENT_CHANGED = 17;

    @UnstableApi
    public static final int EVENT_SHUFFLE_MODE_ENABLED_CHANGED = 9;

    @UnstableApi
    public static final int EVENT_SKIP_SILENCE_ENABLED_CHANGED = 23;

    @UnstableApi
    public static final int EVENT_SURFACE_SIZE_CHANGED = 24;

    @UnstableApi
    public static final int EVENT_TIMELINE_CHANGED = 0;

    @UnstableApi
    public static final int EVENT_TRACKS_CHANGED = 2;

    @UnstableApi
    public static final int EVENT_TRACK_SELECTION_PARAMETERS_CHANGED = 19;

    @UnstableApi
    public static final int EVENT_UPSTREAM_DISCARDED = 1005;

    @UnstableApi
    public static final int EVENT_VIDEO_CODEC_ERROR = 1030;

    @UnstableApi
    public static final int EVENT_VIDEO_DECODER_INITIALIZED = 1016;

    @UnstableApi
    public static final int EVENT_VIDEO_DECODER_RELEASED = 1019;

    @UnstableApi
    public static final int EVENT_VIDEO_DISABLED = 1020;

    @UnstableApi
    public static final int EVENT_VIDEO_ENABLED = 1015;

    @UnstableApi
    public static final int EVENT_VIDEO_FRAME_PROCESSING_OFFSET = 1021;

    @UnstableApi
    public static final int EVENT_VIDEO_INPUT_FORMAT_CHANGED = 1017;

    @UnstableApi
    public static final int EVENT_VIDEO_SIZE_CHANGED = 25;

    @UnstableApi
    public static final int EVENT_VOLUME_CHANGED = 22;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    @UnstableApi
    public @interface EventFlags {
    }

    @UnstableApi
    public static final class EventTime {

        @Nullable
        public final MediaSource.MediaPeriodId currentMediaPeriodId;
        public final long currentPlaybackPositionMs;
        public final Timeline currentTimeline;
        public final int currentWindowIndex;
        public final long eventPlaybackPositionMs;

        @Nullable
        public final MediaSource.MediaPeriodId mediaPeriodId;
        public final long realtimeMs;
        public final Timeline timeline;
        public final long totalBufferedDurationMs;
        public final int windowIndex;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || EventTime.class != obj.getClass()) {
                return false;
            }
            EventTime eventTime = (EventTime) obj;
            return this.realtimeMs == eventTime.realtimeMs && this.windowIndex == eventTime.windowIndex && this.eventPlaybackPositionMs == eventTime.eventPlaybackPositionMs && this.currentWindowIndex == eventTime.currentWindowIndex && this.currentPlaybackPositionMs == eventTime.currentPlaybackPositionMs && this.totalBufferedDurationMs == eventTime.totalBufferedDurationMs && com.google.common.base.k.a(this.timeline, eventTime.timeline) && com.google.common.base.k.a(this.mediaPeriodId, eventTime.mediaPeriodId) && com.google.common.base.k.a(this.currentTimeline, eventTime.currentTimeline) && com.google.common.base.k.a(this.currentMediaPeriodId, eventTime.currentMediaPeriodId);
        }

        public int hashCode() {
            return com.google.common.base.k.b(Long.valueOf(this.realtimeMs), this.timeline, Integer.valueOf(this.windowIndex), this.mediaPeriodId, Long.valueOf(this.eventPlaybackPositionMs), this.currentTimeline, Integer.valueOf(this.currentWindowIndex), this.currentMediaPeriodId, Long.valueOf(this.currentPlaybackPositionMs), Long.valueOf(this.totalBufferedDurationMs));
        }

        public EventTime(long j6, Timeline timeline, int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, long j10, Timeline timeline2, int i11, @Nullable MediaSource.MediaPeriodId mediaPeriodId2, long j11, long j12) {
            this.realtimeMs = j6;
            this.timeline = timeline;
            this.windowIndex = i10;
            this.mediaPeriodId = mediaPeriodId;
            this.eventPlaybackPositionMs = j10;
            this.currentTimeline = timeline2;
            this.currentWindowIndex = i11;
            this.currentMediaPeriodId = mediaPeriodId2;
            this.currentPlaybackPositionMs = j11;
            this.totalBufferedDurationMs = j12;
        }
    }

    @UnstableApi
    public static final class Events {
        private final SparseArray<EventTime> eventTimes;
        private final FlagSet flags;

        public boolean a(int i10) {
            return this.flags.a(i10);
        }

        public int b(int i10) {
            return this.flags.c(i10);
        }

        public EventTime c(int i10) {
            return (EventTime) Assertions.e(this.eventTimes.get(i10));
        }

        public int d() {
            return this.flags.d();
        }

        public Events(FlagSet flagSet, SparseArray<EventTime> sparseArray) {
            this.flags = flagSet;
            SparseArray<EventTime> sparseArray2 = new SparseArray<>(flagSet.d());
            for (int i10 = 0; i10 < flagSet.d(); i10++) {
                int iC = flagSet.c(i10);
                sparseArray2.append(iC, (EventTime) Assertions.e(sparseArray.get(iC)));
            }
            this.eventTimes = sparseArray2;
        }
    }

    @UnstableApi
    @Deprecated
    void A(EventTime eventTime, String str, long j6);

    @UnstableApi
    void B(EventTime eventTime);

    @UnstableApi
    void C(EventTime eventTime, Tracks tracks);

    @UnstableApi
    void E(EventTime eventTime, VideoSize videoSize);

    @UnstableApi
    void F(EventTime eventTime, long j6);

    @UnstableApi
    void G(EventTime eventTime, long j6, int i10);

    @UnstableApi
    void H(EventTime eventTime, MediaLoadData mediaLoadData);

    @UnstableApi
    void I(Player player, Events events);

    @UnstableApi
    void J(EventTime eventTime, DeviceInfo deviceInfo);

    @UnstableApi
    void K(EventTime eventTime);

    @UnstableApi
    void L(EventTime eventTime, Object obj, long j6);

    @UnstableApi
    void M(EventTime eventTime, boolean z6);

    @UnstableApi
    void N(EventTime eventTime, int i10, boolean z6);

    @UnstableApi
    void O(EventTime eventTime, Metadata metadata);

    @UnstableApi
    @Deprecated
    void P(EventTime eventTime, List<Cue> list);

    @UnstableApi
    void Q(EventTime eventTime, boolean z6);

    @UnstableApi
    void R(EventTime eventTime, PlaybackException playbackException);

    @UnstableApi
    void S(EventTime eventTime, long j6);

    @UnstableApi
    void T(EventTime eventTime, DecoderCounters decoderCounters);

    @UnstableApi
    @Deprecated
    void U(EventTime eventTime, Format format);

    @UnstableApi
    void V(EventTime eventTime, MediaMetadata mediaMetadata);

    @UnstableApi
    void W(EventTime eventTime, AudioAttributes audioAttributes);

    @UnstableApi
    void X(EventTime eventTime, int i10);

    @UnstableApi
    void Y(EventTime eventTime, DecoderCounters decoderCounters);

    @UnstableApi
    void Z(EventTime eventTime);

    @UnstableApi
    void a0(EventTime eventTime, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i10);

    @UnstableApi
    void b(EventTime eventTime, boolean z6);

    @UnstableApi
    void b0(EventTime eventTime, DecoderCounters decoderCounters);

    @UnstableApi
    @Deprecated
    void c(EventTime eventTime, int i10);

    @UnstableApi
    void c0(EventTime eventTime, Exception exc);

    @UnstableApi
    void d(EventTime eventTime, boolean z6, int i10);

    @UnstableApi
    void d0(EventTime eventTime, float f);

    @UnstableApi
    @Deprecated
    void e(EventTime eventTime, Format format);

    @UnstableApi
    void e0(EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z6);

    @UnstableApi
    void f(EventTime eventTime);

    @UnstableApi
    void f0(EventTime eventTime, long j6);

    @UnstableApi
    void g(EventTime eventTime, int i10, long j6, long j10);

    @UnstableApi
    void g0(EventTime eventTime, int i10, long j6, long j10);

    @UnstableApi
    void h(EventTime eventTime, Exception exc);

    @UnstableApi
    @Deprecated
    void h0(EventTime eventTime, String str, long j6);

    @UnstableApi
    void i(EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    @UnstableApi
    void i0(EventTime eventTime, String str);

    @UnstableApi
    void j(EventTime eventTime, String str, long j6, long j10);

    @UnstableApi
    void j0(EventTime eventTime, String str);

    @UnstableApi
    void k(EventTime eventTime, TrackSelectionParameters trackSelectionParameters);

    @UnstableApi
    void k0(EventTime eventTime);

    @UnstableApi
    void l(EventTime eventTime, Exception exc);

    @UnstableApi
    @Deprecated
    void l0(EventTime eventTime, int i10, int i11, int i12, float f);

    @UnstableApi
    void m(EventTime eventTime, @Nullable MediaItem mediaItem, int i10);

    @UnstableApi
    @Deprecated
    void m0(EventTime eventTime);

    @UnstableApi
    void n(EventTime eventTime, DecoderCounters decoderCounters);

    @UnstableApi
    void n0(EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    @UnstableApi
    void o(EventTime eventTime, int i10, int i11);

    @UnstableApi
    @Deprecated
    void o0(EventTime eventTime, boolean z6, int i10);

    @UnstableApi
    void p(EventTime eventTime, int i10);

    @UnstableApi
    void p0(EventTime eventTime, @Nullable PlaybackException playbackException);

    @UnstableApi
    void q(EventTime eventTime, Player.Commands commands);

    @UnstableApi
    @Deprecated
    void q0(EventTime eventTime);

    @UnstableApi
    void r(EventTime eventTime, Exception exc);

    @UnstableApi
    void r0(EventTime eventTime, long j6);

    @UnstableApi
    void s(EventTime eventTime, boolean z6);

    @UnstableApi
    void s0(EventTime eventTime, int i10);

    @UnstableApi
    void t(EventTime eventTime, int i10);

    @UnstableApi
    void t0(EventTime eventTime, CueGroup cueGroup);

    @UnstableApi
    void u(EventTime eventTime, Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation);

    @UnstableApi
    void u0(EventTime eventTime, String str, long j6, long j10);

    @UnstableApi
    void v(EventTime eventTime, PlaybackParameters playbackParameters);

    @UnstableApi
    void v0(EventTime eventTime, MediaMetadata mediaMetadata);

    @UnstableApi
    void w(EventTime eventTime, int i10);

    @UnstableApi
    void x(EventTime eventTime, MediaLoadData mediaLoadData);

    @UnstableApi
    void x0(EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    @UnstableApi
    @Deprecated
    void y(EventTime eventTime, boolean z6);

    @UnstableApi
    void z(EventTime eventTime, int i10, long j6);

    @UnstableApi
    void z0(EventTime eventTime, Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation);
}
