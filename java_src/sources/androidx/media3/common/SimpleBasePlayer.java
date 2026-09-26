package androidx.media3.common;

import android.graphics.Rect;
import android.os.Looper;
import android.util.Pair;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
@UnstableApi
public abstract class SimpleBasePlayer extends BasePlayer {
    private static final long POSITION_DISCONTINUITY_THRESHOLD_MS = 1000;
    private final HandlerWrapper applicationHandler;
    private final Looper applicationLooper;
    private final ListenerSet<Player.Listener> listeners;
    private final HashSet<com.google.common.util.concurrent.k<?>> pendingOperations;
    private final Timeline.Period period;
    private boolean released;
    private State state;

    protected static final class MediaItemData {
        private final MediaMetadata combinedMediaMetadata;
        public final long defaultPositionUs;
        public final long durationUs;
        public final long elapsedRealtimeEpochOffsetMs;
        public final boolean isDynamic;
        public final boolean isPlaceholder;
        public final boolean isSeekable;

        @Nullable
        public final MediaItem.LiveConfiguration liveConfiguration;

        @Nullable
        public final Object manifest;
        public final MediaItem mediaItem;

        @Nullable
        public final MediaMetadata mediaMetadata;
        private final long[] periodPositionInWindowUs;
        public final com.google.common.collect.a0<PeriodData> periods;
        public final long positionInFirstPeriodUs;
        public final long presentationStartTimeMs;
        public final Tracks tracks;
        public final Object uid;
        public final long windowStartTimeMs;

        public static final class Builder {
            private Object uid;
            private Tracks tracks = Tracks.EMPTY;
            private MediaItem mediaItem = MediaItem.EMPTY;

            @Nullable
            private MediaMetadata mediaMetadata = null;

            @Nullable
            private Object manifest = null;

            @Nullable
            private MediaItem.LiveConfiguration liveConfiguration = null;
            private long presentationStartTimeMs = -9223372036854775807L;
            private long windowStartTimeMs = -9223372036854775807L;
            private long elapsedRealtimeEpochOffsetMs = -9223372036854775807L;
            private boolean isSeekable = false;
            private boolean isDynamic = false;
            private long defaultPositionUs = 0;
            private long durationUs = -9223372036854775807L;
            private long positionInFirstPeriodUs = 0;
            private boolean isPlaceholder = false;
            private com.google.common.collect.a0<PeriodData> periods = com.google.common.collect.a0.x();

            public Builder r(boolean z6) {
                this.isDynamic = z6;
                return this;
            }

            public Builder s(boolean z6) {
                this.isPlaceholder = z6;
                return this;
            }

            public Builder t(MediaItem mediaItem) {
                this.mediaItem = mediaItem;
                return this;
            }

            public MediaItemData q() {
                return new MediaItemData(this);
            }

            public Builder(Object obj) {
                this.uid = obj;
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MediaItemData)) {
                return false;
            }
            MediaItemData mediaItemData = (MediaItemData) obj;
            return this.uid.equals(mediaItemData.uid) && this.tracks.equals(mediaItemData.tracks) && this.mediaItem.equals(mediaItemData.mediaItem) && Util.c(this.mediaMetadata, mediaItemData.mediaMetadata) && Util.c(this.manifest, mediaItemData.manifest) && Util.c(this.liveConfiguration, mediaItemData.liveConfiguration) && this.presentationStartTimeMs == mediaItemData.presentationStartTimeMs && this.windowStartTimeMs == mediaItemData.windowStartTimeMs && this.elapsedRealtimeEpochOffsetMs == mediaItemData.elapsedRealtimeEpochOffsetMs && this.isSeekable == mediaItemData.isSeekable && this.isDynamic == mediaItemData.isDynamic && this.defaultPositionUs == mediaItemData.defaultPositionUs && this.durationUs == mediaItemData.durationUs && this.positionInFirstPeriodUs == mediaItemData.positionInFirstPeriodUs && this.isPlaceholder == mediaItemData.isPlaceholder && this.periods.equals(mediaItemData.periods);
        }

        private MediaItemData(Builder builder) {
            int i10 = 0;
            if (builder.liveConfiguration == null) {
                Assertions.b(builder.presentationStartTimeMs == -9223372036854775807L, "presentationStartTimeMs can only be set if liveConfiguration != null");
                Assertions.b(builder.windowStartTimeMs == -9223372036854775807L, "windowStartTimeMs can only be set if liveConfiguration != null");
                Assertions.b(builder.elapsedRealtimeEpochOffsetMs == -9223372036854775807L, "elapsedRealtimeEpochOffsetMs can only be set if liveConfiguration != null");
            } else if (builder.presentationStartTimeMs != -9223372036854775807L && builder.windowStartTimeMs != -9223372036854775807L) {
                Assertions.b(builder.windowStartTimeMs >= builder.presentationStartTimeMs, "windowStartTimeMs can't be less than presentationStartTimeMs");
            }
            int size = builder.periods.size();
            if (builder.durationUs != -9223372036854775807L) {
                Assertions.b(builder.defaultPositionUs <= builder.durationUs, "defaultPositionUs can't be greater than durationUs");
            }
            this.uid = builder.uid;
            this.tracks = builder.tracks;
            this.mediaItem = builder.mediaItem;
            this.mediaMetadata = builder.mediaMetadata;
            this.manifest = builder.manifest;
            this.liveConfiguration = builder.liveConfiguration;
            this.presentationStartTimeMs = builder.presentationStartTimeMs;
            this.windowStartTimeMs = builder.windowStartTimeMs;
            this.elapsedRealtimeEpochOffsetMs = builder.elapsedRealtimeEpochOffsetMs;
            this.isSeekable = builder.isSeekable;
            this.isDynamic = builder.isDynamic;
            this.defaultPositionUs = builder.defaultPositionUs;
            this.durationUs = builder.durationUs;
            long j6 = builder.positionInFirstPeriodUs;
            this.positionInFirstPeriodUs = j6;
            this.isPlaceholder = builder.isPlaceholder;
            com.google.common.collect.a0<PeriodData> a0Var = builder.periods;
            this.periods = a0Var;
            long[] jArr = new long[a0Var.size()];
            this.periodPositionInWindowUs = jArr;
            if (!a0Var.isEmpty()) {
                jArr[0] = -j6;
                while (i10 < size - 1) {
                    long[] jArr2 = this.periodPositionInWindowUs;
                    int i11 = i10 + 1;
                    jArr2[i11] = jArr2[i10] + this.periods.get(i10).durationUs;
                    i10 = i11;
                }
            }
            MediaMetadata mediaMetadata = this.mediaMetadata;
            this.combinedMediaMetadata = mediaMetadata == null ? e(this.mediaItem, this.tracks) : mediaMetadata;
        }

        private static MediaMetadata e(MediaItem mediaItem, Tracks tracks) {
            MediaMetadata.Builder builder = new MediaMetadata.Builder();
            int size = tracks.b().size();
            for (int i10 = 0; i10 < size; i10++) {
                Tracks.Group group = tracks.b().get(i10);
                for (int i11 = 0; i11 < group.length; i11++) {
                    if (group.i(i11)) {
                        Format formatC = group.c(i11);
                        if (formatC.metadata != null) {
                            for (int i12 = 0; i12 < formatC.metadata.h(); i12++) {
                                formatC.metadata.g(i12).k0(builder);
                            }
                        }
                    }
                }
            }
            return builder.J(mediaItem.mediaMetadata).H();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Timeline.Period f(int i10, int i11, Timeline.Period period) {
            if (this.periods.isEmpty()) {
                Object obj = this.uid;
                period.x(obj, obj, i10, this.positionInFirstPeriodUs + this.durationUs, 0L, AdPlaybackState.NONE, this.isPlaceholder);
            } else {
                PeriodData periodData = this.periods.get(i11);
                Object obj2 = periodData.uid;
                period.x(obj2, Pair.create(this.uid, obj2), i10, periodData.durationUs, this.periodPositionInWindowUs[i11], periodData.adPlaybackState, periodData.isPlaceholder);
            }
            return period;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Object g(int i10) {
            if (this.periods.isEmpty()) {
                return this.uid;
            }
            return Pair.create(this.uid, this.periods.get(i10).uid);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Timeline.Window h(int i10, Timeline.Window window) {
            window.i(this.uid, this.mediaItem, this.manifest, this.presentationStartTimeMs, this.windowStartTimeMs, this.elapsedRealtimeEpochOffsetMs, this.isSeekable, this.isDynamic, this.liveConfiguration, this.defaultPositionUs, this.durationUs, i10, (i10 + (this.periods.isEmpty() ? 1 : this.periods.size())) - 1, this.positionInFirstPeriodUs);
            window.isPlaceholder = this.isPlaceholder;
            return window;
        }

        public int hashCode() {
            int iHashCode = (((((217 + this.uid.hashCode()) * 31) + this.tracks.hashCode()) * 31) + this.mediaItem.hashCode()) * 31;
            MediaMetadata mediaMetadata = this.mediaMetadata;
            int iHashCode2 = (iHashCode + (mediaMetadata == null ? 0 : mediaMetadata.hashCode())) * 31;
            Object obj = this.manifest;
            int iHashCode3 = (iHashCode2 + (obj == null ? 0 : obj.hashCode())) * 31;
            MediaItem.LiveConfiguration liveConfiguration = this.liveConfiguration;
            int iHashCode4 = (iHashCode3 + (liveConfiguration != null ? liveConfiguration.hashCode() : 0)) * 31;
            long j6 = this.presentationStartTimeMs;
            int i10 = (iHashCode4 + ((int) (j6 ^ (j6 >>> 32)))) * 31;
            long j10 = this.windowStartTimeMs;
            int i11 = (i10 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            long j11 = this.elapsedRealtimeEpochOffsetMs;
            int i12 = (((((i11 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.isSeekable ? 1 : 0)) * 31) + (this.isDynamic ? 1 : 0)) * 31;
            long j12 = this.defaultPositionUs;
            int i13 = (i12 + ((int) (j12 ^ (j12 >>> 32)))) * 31;
            long j13 = this.durationUs;
            int i14 = (i13 + ((int) (j13 ^ (j13 >>> 32)))) * 31;
            long j14 = this.positionInFirstPeriodUs;
            return ((((i14 + ((int) (j14 ^ (j14 >>> 32)))) * 31) + (this.isPlaceholder ? 1 : 0)) * 31) + this.periods.hashCode();
        }
    }

    protected static final class PeriodData {
        public final AdPlaybackState adPlaybackState;
        public final long durationUs;
        public final boolean isPlaceholder;
        public final Object uid;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PeriodData)) {
                return false;
            }
            PeriodData periodData = (PeriodData) obj;
            return this.uid.equals(periodData.uid) && this.durationUs == periodData.durationUs && this.adPlaybackState.equals(periodData.adPlaybackState) && this.isPlaceholder == periodData.isPlaceholder;
        }

        public static final class Builder {
            private Object uid;
            private long durationUs = 0;
            private AdPlaybackState adPlaybackState = AdPlaybackState.NONE;
            private boolean isPlaceholder = false;

            public Builder(Object obj) {
                this.uid = obj;
            }
        }

        public int hashCode() {
            int iHashCode = (217 + this.uid.hashCode()) * 31;
            long j6 = this.durationUs;
            return ((((iHashCode + ((int) (j6 ^ (j6 >>> 32)))) * 31) + this.adPlaybackState.hashCode()) * 31) + (this.isPlaceholder ? 1 : 0);
        }
    }

    private static final class PlaceholderUid {
        private PlaceholderUid() {
        }
    }

    private static final class PlaylistTimeline extends Timeline {
        private final int[] firstPeriodIndexByWindowIndex;
        private final HashMap<Object, Integer> periodIndexByUid;
        private final com.google.common.collect.a0<MediaItemData> playlist;
        private final int[] windowIndexByPeriodIndex;

        private static int w(MediaItemData mediaItemData) {
            if (mediaItemData.periods.isEmpty()) {
                return 1;
            }
            return mediaItemData.periods.size();
        }

        @Override // androidx.media3.common.Timeline
        public int f(Object obj) {
            Integer num = this.periodIndexByUid.get(obj);
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }

        @Override // androidx.media3.common.Timeline
        public Timeline.Period k(int i10, Timeline.Period period, boolean z6) {
            int i11 = this.windowIndexByPeriodIndex[i10];
            return this.playlist.get(i11).f(i11, i10 - this.firstPeriodIndexByWindowIndex[i11], period);
        }

        @Override // androidx.media3.common.Timeline
        public Timeline.Period l(Object obj, Timeline.Period period) {
            return k(((Integer) Assertions.e(this.periodIndexByUid.get(obj))).intValue(), period, true);
        }

        @Override // androidx.media3.common.Timeline
        public int m() {
            return this.windowIndexByPeriodIndex.length;
        }

        @Override // androidx.media3.common.Timeline
        public Object q(int i10) {
            int i11 = this.windowIndexByPeriodIndex[i10];
            return this.playlist.get(i11).g(i10 - this.firstPeriodIndexByWindowIndex[i11]);
        }

        @Override // androidx.media3.common.Timeline
        public Timeline.Window s(int i10, Timeline.Window window, long j6) {
            return this.playlist.get(i10).h(this.firstPeriodIndexByWindowIndex[i10], window);
        }

        @Override // androidx.media3.common.Timeline
        public int t() {
            return this.playlist.size();
        }

        public PlaylistTimeline(com.google.common.collect.a0<MediaItemData> a0Var) {
            int size = a0Var.size();
            this.playlist = a0Var;
            this.firstPeriodIndexByWindowIndex = new int[size];
            int iW = 0;
            for (int i10 = 0; i10 < size; i10++) {
                MediaItemData mediaItemData = a0Var.get(i10);
                this.firstPeriodIndexByWindowIndex[i10] = iW;
                iW += w(mediaItemData);
            }
            this.windowIndexByPeriodIndex = new int[iW];
            this.periodIndexByUid = new HashMap<>();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                MediaItemData mediaItemData2 = a0Var.get(i12);
                for (int i13 = 0; i13 < w(mediaItemData2); i13++) {
                    this.periodIndexByUid.put(mediaItemData2.g(i13), Integer.valueOf(i11));
                    this.windowIndexByPeriodIndex[i11] = i12;
                    i11++;
                }
            }
        }

        @Override // androidx.media3.common.Timeline
        public int e(boolean z6) {
            return super.e(z6);
        }

        @Override // androidx.media3.common.Timeline
        public int g(boolean z6) {
            return super.g(z6);
        }

        @Override // androidx.media3.common.Timeline
        public int i(int i10, int i11, boolean z6) {
            return super.i(i10, i11, z6);
        }

        @Override // androidx.media3.common.Timeline
        public int p(int i10, int i11, boolean z6) {
            return super.p(i10, i11, z6);
        }
    }

    protected interface PositionSupplier {
        public static final PositionSupplier ZERO = b2.a(0);

        long get();
    }

    protected static final class State {
        public final PositionSupplier adBufferedPositionMsSupplier;
        public final PositionSupplier adPositionMsSupplier;
        public final AudioAttributes audioAttributes;
        public final Player.Commands availableCommands;
        public final PositionSupplier contentBufferedPositionMsSupplier;
        public final PositionSupplier contentPositionMsSupplier;
        public final int currentAdGroupIndex;
        public final int currentAdIndexInAdGroup;
        public final CueGroup currentCues;
        public final int currentMediaItemIndex;
        public final DeviceInfo deviceInfo;

        @IntRange
        public final int deviceVolume;
        public final long discontinuityPositionMs;
        public final boolean hasPositionDiscontinuity;
        public final boolean isDeviceMuted;
        public final boolean isLoading;
        public final long maxSeekToPreviousPositionMs;
        public final boolean newlyRenderedFirstFrame;
        public final boolean playWhenReady;
        public final int playWhenReadyChangeReason;
        public final PlaybackParameters playbackParameters;
        public final int playbackState;
        public final int playbackSuppressionReason;

        @Nullable
        public final PlaybackException playerError;
        public final com.google.common.collect.a0<MediaItemData> playlist;
        public final MediaMetadata playlistMetadata;
        public final int positionDiscontinuityReason;
        public final int repeatMode;
        public final long seekBackIncrementMs;
        public final long seekForwardIncrementMs;
        public final boolean shuffleModeEnabled;
        public final Size surfaceSize;
        public final Metadata timedMetadata;
        public final Timeline timeline;
        public final PositionSupplier totalBufferedDurationMsSupplier;
        public final TrackSelectionParameters trackSelectionParameters;
        public final VideoSize videoSize;

        @FloatRange
        public final float volume;

        public static final class Builder {
            private PositionSupplier adBufferedPositionMsSupplier;

            @Nullable
            private Long adPositionMs;
            private PositionSupplier adPositionMsSupplier;
            private AudioAttributes audioAttributes;
            private Player.Commands availableCommands;
            private PositionSupplier contentBufferedPositionMsSupplier;

            @Nullable
            private Long contentPositionMs;
            private PositionSupplier contentPositionMsSupplier;
            private int currentAdGroupIndex;
            private int currentAdIndexInAdGroup;
            private CueGroup currentCues;
            private int currentMediaItemIndex;
            private DeviceInfo deviceInfo;
            private int deviceVolume;
            private long discontinuityPositionMs;
            private boolean hasPositionDiscontinuity;
            private boolean isDeviceMuted;
            private boolean isLoading;
            private long maxSeekToPreviousPositionMs;
            private boolean newlyRenderedFirstFrame;
            private boolean playWhenReady;
            private int playWhenReadyChangeReason;
            private PlaybackParameters playbackParameters;
            private int playbackState;
            private int playbackSuppressionReason;

            @Nullable
            private PlaybackException playerError;
            private com.google.common.collect.a0<MediaItemData> playlist;
            private MediaMetadata playlistMetadata;
            private int positionDiscontinuityReason;
            private int repeatMode;
            private long seekBackIncrementMs;
            private long seekForwardIncrementMs;
            private boolean shuffleModeEnabled;
            private Size surfaceSize;
            private Metadata timedMetadata;
            private Timeline timeline;
            private PositionSupplier totalBufferedDurationMsSupplier;
            private TrackSelectionParameters trackSelectionParameters;
            private VideoSize videoSize;
            private float volume;

            public Builder P() {
                this.hasPositionDiscontinuity = false;
                return this;
            }

            public Builder Q(PositionSupplier positionSupplier) {
                this.adBufferedPositionMsSupplier = positionSupplier;
                return this;
            }

            public Builder R(PositionSupplier positionSupplier) {
                this.contentBufferedPositionMsSupplier = positionSupplier;
                return this;
            }

            public Builder T(int i10, int i11) {
                Assertions.a((i10 == -1) == (i11 == -1));
                this.currentAdGroupIndex = i10;
                this.currentAdIndexInAdGroup = i11;
                return this;
            }

            public Builder U(int i10) {
                this.currentMediaItemIndex = i10;
                return this;
            }

            public Builder V(boolean z6) {
                this.isLoading = z6;
                return this;
            }

            public Builder W(boolean z6) {
                this.newlyRenderedFirstFrame = z6;
                return this;
            }

            public Builder X(boolean z6, int i10) {
                this.playWhenReady = z6;
                this.playWhenReadyChangeReason = i10;
                return this;
            }

            public Builder Y(PlaybackParameters playbackParameters) {
                this.playbackParameters = playbackParameters;
                return this;
            }

            public Builder Z(int i10) {
                this.playbackState = i10;
                return this;
            }

            public Builder a0(@Nullable PlaybackException playbackException) {
                this.playerError = playbackException;
                return this;
            }

            public Builder c0(int i10) {
                this.repeatMode = i10;
                return this;
            }

            public Builder d0(boolean z6) {
                this.shuffleModeEnabled = z6;
                return this;
            }

            public Builder e0(Size size) {
                this.surfaceSize = size;
                return this;
            }

            public Builder f0(PositionSupplier positionSupplier) {
                this.totalBufferedDurationMsSupplier = positionSupplier;
                return this;
            }

            public Builder g0(TrackSelectionParameters trackSelectionParameters) {
                this.trackSelectionParameters = trackSelectionParameters;
                return this;
            }

            public Builder() {
                this.availableCommands = Player.Commands.EMPTY;
                this.playWhenReady = false;
                this.playWhenReadyChangeReason = 1;
                this.playbackState = 1;
                this.playbackSuppressionReason = 0;
                this.playerError = null;
                this.repeatMode = 0;
                this.shuffleModeEnabled = false;
                this.isLoading = false;
                this.seekBackIncrementMs = 5000L;
                this.seekForwardIncrementMs = 15000L;
                this.maxSeekToPreviousPositionMs = 3000L;
                this.playbackParameters = PlaybackParameters.DEFAULT;
                this.trackSelectionParameters = TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT;
                this.audioAttributes = AudioAttributes.DEFAULT;
                this.volume = 1.0f;
                this.videoSize = VideoSize.UNKNOWN;
                this.currentCues = CueGroup.EMPTY_TIME_ZERO;
                this.deviceInfo = DeviceInfo.UNKNOWN;
                this.deviceVolume = 0;
                this.isDeviceMuted = false;
                this.surfaceSize = Size.UNKNOWN;
                this.newlyRenderedFirstFrame = false;
                this.timedMetadata = new Metadata(-9223372036854775807L, new Metadata.Entry[0]);
                this.playlist = com.google.common.collect.a0.x();
                this.timeline = Timeline.EMPTY;
                this.playlistMetadata = MediaMetadata.EMPTY;
                this.currentMediaItemIndex = -1;
                this.currentAdGroupIndex = -1;
                this.currentAdIndexInAdGroup = -1;
                this.contentPositionMs = null;
                this.contentPositionMsSupplier = b2.a(-9223372036854775807L);
                this.adPositionMs = null;
                PositionSupplier positionSupplier = PositionSupplier.ZERO;
                this.adPositionMsSupplier = positionSupplier;
                this.contentBufferedPositionMsSupplier = b2.a(-9223372036854775807L);
                this.adBufferedPositionMsSupplier = positionSupplier;
                this.totalBufferedDurationMsSupplier = positionSupplier;
                this.hasPositionDiscontinuity = false;
                this.positionDiscontinuityReason = 5;
                this.discontinuityPositionMs = 0L;
            }

            public State O() {
                return new State(this);
            }

            public Builder b0(List<MediaItemData> list) {
                HashSet hashSet = new HashSet();
                for (int i10 = 0; i10 < list.size(); i10++) {
                    Assertions.b(hashSet.add(list.get(i10).uid), "Duplicate MediaItemData UID in playlist");
                }
                this.playlist = com.google.common.collect.a0.t(list);
                this.timeline = new PlaylistTimeline(this.playlist);
                return this;
            }

            public Builder S(long j6) {
                this.contentPositionMs = Long.valueOf(j6);
                return this;
            }

            private Builder(State state) {
                this.availableCommands = state.availableCommands;
                this.playWhenReady = state.playWhenReady;
                this.playWhenReadyChangeReason = state.playWhenReadyChangeReason;
                this.playbackState = state.playbackState;
                this.playbackSuppressionReason = state.playbackSuppressionReason;
                this.playerError = state.playerError;
                this.repeatMode = state.repeatMode;
                this.shuffleModeEnabled = state.shuffleModeEnabled;
                this.isLoading = state.isLoading;
                this.seekBackIncrementMs = state.seekBackIncrementMs;
                this.seekForwardIncrementMs = state.seekForwardIncrementMs;
                this.maxSeekToPreviousPositionMs = state.maxSeekToPreviousPositionMs;
                this.playbackParameters = state.playbackParameters;
                this.trackSelectionParameters = state.trackSelectionParameters;
                this.audioAttributes = state.audioAttributes;
                this.volume = state.volume;
                this.videoSize = state.videoSize;
                this.currentCues = state.currentCues;
                this.deviceInfo = state.deviceInfo;
                this.deviceVolume = state.deviceVolume;
                this.isDeviceMuted = state.isDeviceMuted;
                this.surfaceSize = state.surfaceSize;
                this.newlyRenderedFirstFrame = state.newlyRenderedFirstFrame;
                this.timedMetadata = state.timedMetadata;
                this.playlist = state.playlist;
                this.timeline = state.timeline;
                this.playlistMetadata = state.playlistMetadata;
                this.currentMediaItemIndex = state.currentMediaItemIndex;
                this.currentAdGroupIndex = state.currentAdGroupIndex;
                this.currentAdIndexInAdGroup = state.currentAdIndexInAdGroup;
                this.contentPositionMs = null;
                this.contentPositionMsSupplier = state.contentPositionMsSupplier;
                this.adPositionMs = null;
                this.adPositionMsSupplier = state.adPositionMsSupplier;
                this.contentBufferedPositionMsSupplier = state.contentBufferedPositionMsSupplier;
                this.adBufferedPositionMsSupplier = state.adBufferedPositionMsSupplier;
                this.totalBufferedDurationMsSupplier = state.totalBufferedDurationMsSupplier;
                this.hasPositionDiscontinuity = state.hasPositionDiscontinuity;
                this.positionDiscontinuityReason = state.positionDiscontinuityReason;
                this.discontinuityPositionMs = state.discontinuityPositionMs;
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof State)) {
                return false;
            }
            State state = (State) obj;
            return this.playWhenReady == state.playWhenReady && this.playWhenReadyChangeReason == state.playWhenReadyChangeReason && this.availableCommands.equals(state.availableCommands) && this.playbackState == state.playbackState && this.playbackSuppressionReason == state.playbackSuppressionReason && Util.c(this.playerError, state.playerError) && this.repeatMode == state.repeatMode && this.shuffleModeEnabled == state.shuffleModeEnabled && this.isLoading == state.isLoading && this.seekBackIncrementMs == state.seekBackIncrementMs && this.seekForwardIncrementMs == state.seekForwardIncrementMs && this.maxSeekToPreviousPositionMs == state.maxSeekToPreviousPositionMs && this.playbackParameters.equals(state.playbackParameters) && this.trackSelectionParameters.equals(state.trackSelectionParameters) && this.audioAttributes.equals(state.audioAttributes) && this.volume == state.volume && this.videoSize.equals(state.videoSize) && this.currentCues.equals(state.currentCues) && this.deviceInfo.equals(state.deviceInfo) && this.deviceVolume == state.deviceVolume && this.isDeviceMuted == state.isDeviceMuted && this.surfaceSize.equals(state.surfaceSize) && this.newlyRenderedFirstFrame == state.newlyRenderedFirstFrame && this.timedMetadata.equals(state.timedMetadata) && this.playlist.equals(state.playlist) && this.playlistMetadata.equals(state.playlistMetadata) && this.currentMediaItemIndex == state.currentMediaItemIndex && this.currentAdGroupIndex == state.currentAdGroupIndex && this.currentAdIndexInAdGroup == state.currentAdIndexInAdGroup && this.contentPositionMsSupplier.equals(state.contentPositionMsSupplier) && this.adPositionMsSupplier.equals(state.adPositionMsSupplier) && this.contentBufferedPositionMsSupplier.equals(state.contentBufferedPositionMsSupplier) && this.adBufferedPositionMsSupplier.equals(state.adBufferedPositionMsSupplier) && this.totalBufferedDurationMsSupplier.equals(state.totalBufferedDurationMsSupplier) && this.hasPositionDiscontinuity == state.hasPositionDiscontinuity && this.positionDiscontinuityReason == state.positionDiscontinuityReason && this.discontinuityPositionMs == state.discontinuityPositionMs;
        }

        private State(Builder builder) {
            int i10;
            if (builder.timeline.u()) {
                Assertions.b(builder.playbackState == 1 || builder.playbackState == 4, "Empty playlist only allowed in STATE_IDLE or STATE_ENDED");
                Assertions.b(builder.currentAdGroupIndex == -1 && builder.currentAdIndexInAdGroup == -1, "Ads not allowed if playlist is empty");
            } else {
                int i11 = builder.currentMediaItemIndex;
                if (i11 == -1) {
                    i10 = 0;
                } else {
                    Assertions.b(builder.currentMediaItemIndex < builder.timeline.t(), "currentMediaItemIndex must be less than playlist.size()");
                    i10 = i11;
                }
                if (builder.currentAdGroupIndex != -1) {
                    Timeline.Period period = new Timeline.Period();
                    builder.timeline.j(SimpleBasePlayer.f1(builder.timeline, i10, builder.contentPositionMs != null ? builder.contentPositionMs.longValue() : builder.contentPositionMsSupplier.get(), new Timeline.Window(), period), period);
                    Assertions.b(builder.currentAdGroupIndex < period.f(), "PeriodData has less ad groups than adGroupIndex");
                    int iD = period.d(builder.currentAdGroupIndex);
                    if (iD != -1) {
                        Assertions.b(builder.currentAdIndexInAdGroup < iD, "Ad group has less ads than adIndexInGroupIndex");
                    }
                }
            }
            if (builder.playerError != null) {
                Assertions.b(builder.playbackState == 1, "Player error only allowed in STATE_IDLE");
            }
            if (builder.playbackState == 1 || builder.playbackState == 4) {
                Assertions.b(!builder.isLoading, "isLoading only allowed when not in STATE_IDLE or STATE_ENDED");
            }
            PositionSupplier positionSupplierB = builder.contentPositionMs != null ? (builder.currentAdGroupIndex == -1 && builder.playWhenReady && builder.playbackState == 3 && builder.playbackSuppressionReason == 0 && builder.contentPositionMs.longValue() != -9223372036854775807L) ? b2.b(builder.contentPositionMs.longValue(), builder.playbackParameters.speed) : b2.a(builder.contentPositionMs.longValue()) : builder.contentPositionMsSupplier;
            PositionSupplier positionSupplierB2 = builder.adPositionMs != null ? (builder.currentAdGroupIndex != -1 && builder.playWhenReady && builder.playbackState == 3 && builder.playbackSuppressionReason == 0) ? b2.b(builder.adPositionMs.longValue(), 1.0f) : b2.a(builder.adPositionMs.longValue()) : builder.adPositionMsSupplier;
            this.availableCommands = builder.availableCommands;
            this.playWhenReady = builder.playWhenReady;
            this.playWhenReadyChangeReason = builder.playWhenReadyChangeReason;
            this.playbackState = builder.playbackState;
            this.playbackSuppressionReason = builder.playbackSuppressionReason;
            this.playerError = builder.playerError;
            this.repeatMode = builder.repeatMode;
            this.shuffleModeEnabled = builder.shuffleModeEnabled;
            this.isLoading = builder.isLoading;
            this.seekBackIncrementMs = builder.seekBackIncrementMs;
            this.seekForwardIncrementMs = builder.seekForwardIncrementMs;
            this.maxSeekToPreviousPositionMs = builder.maxSeekToPreviousPositionMs;
            this.playbackParameters = builder.playbackParameters;
            this.trackSelectionParameters = builder.trackSelectionParameters;
            this.audioAttributes = builder.audioAttributes;
            this.volume = builder.volume;
            this.videoSize = builder.videoSize;
            this.currentCues = builder.currentCues;
            this.deviceInfo = builder.deviceInfo;
            this.deviceVolume = builder.deviceVolume;
            this.isDeviceMuted = builder.isDeviceMuted;
            this.surfaceSize = builder.surfaceSize;
            this.newlyRenderedFirstFrame = builder.newlyRenderedFirstFrame;
            this.timedMetadata = builder.timedMetadata;
            this.playlist = builder.playlist;
            this.timeline = builder.timeline;
            this.playlistMetadata = builder.playlistMetadata;
            this.currentMediaItemIndex = builder.currentMediaItemIndex;
            this.currentAdGroupIndex = builder.currentAdGroupIndex;
            this.currentAdIndexInAdGroup = builder.currentAdIndexInAdGroup;
            this.contentPositionMsSupplier = positionSupplierB;
            this.adPositionMsSupplier = positionSupplierB2;
            this.contentBufferedPositionMsSupplier = builder.contentBufferedPositionMsSupplier;
            this.adBufferedPositionMsSupplier = builder.adBufferedPositionMsSupplier;
            this.totalBufferedDurationMsSupplier = builder.totalBufferedDurationMsSupplier;
            this.hasPositionDiscontinuity = builder.hasPositionDiscontinuity;
            this.positionDiscontinuityReason = builder.positionDiscontinuityReason;
            this.discontinuityPositionMs = builder.discontinuityPositionMs;
        }

        public Builder a() {
            return new Builder();
        }

        public int hashCode() {
            int iHashCode = (((((((((217 + this.availableCommands.hashCode()) * 31) + (this.playWhenReady ? 1 : 0)) * 31) + this.playWhenReadyChangeReason) * 31) + this.playbackState) * 31) + this.playbackSuppressionReason) * 31;
            PlaybackException playbackException = this.playerError;
            int iHashCode2 = (((((((iHashCode + (playbackException == null ? 0 : playbackException.hashCode())) * 31) + this.repeatMode) * 31) + (this.shuffleModeEnabled ? 1 : 0)) * 31) + (this.isLoading ? 1 : 0)) * 31;
            long j6 = this.seekBackIncrementMs;
            int i10 = (iHashCode2 + ((int) (j6 ^ (j6 >>> 32)))) * 31;
            long j10 = this.seekForwardIncrementMs;
            int i11 = (i10 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            long j11 = this.maxSeekToPreviousPositionMs;
            int iHashCode3 = (((((((((((((((((((((((((((((((((((((((((((((((((i11 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + this.playbackParameters.hashCode()) * 31) + this.trackSelectionParameters.hashCode()) * 31) + this.audioAttributes.hashCode()) * 31) + Float.floatToRawIntBits(this.volume)) * 31) + this.videoSize.hashCode()) * 31) + this.currentCues.hashCode()) * 31) + this.deviceInfo.hashCode()) * 31) + this.deviceVolume) * 31) + (this.isDeviceMuted ? 1 : 0)) * 31) + this.surfaceSize.hashCode()) * 31) + (this.newlyRenderedFirstFrame ? 1 : 0)) * 31) + this.timedMetadata.hashCode()) * 31) + this.playlist.hashCode()) * 31) + this.playlistMetadata.hashCode()) * 31) + this.currentMediaItemIndex) * 31) + this.currentAdGroupIndex) * 31) + this.currentAdIndexInAdGroup) * 31) + this.contentPositionMsSupplier.hashCode()) * 31) + this.adPositionMsSupplier.hashCode()) * 31) + this.contentBufferedPositionMsSupplier.hashCode()) * 31) + this.adBufferedPositionMsSupplier.hashCode()) * 31) + this.totalBufferedDurationMsSupplier.hashCode()) * 31) + (this.hasPositionDiscontinuity ? 1 : 0)) * 31) + this.positionDiscontinuityReason) * 31;
            long j12 = this.discontinuityPositionMs;
            return iHashCode3 + ((int) (j12 ^ (j12 >>> 32)));
        }
    }

    private void z2(com.google.common.util.concurrent.k<?> kVar, com.google.common.base.u<State> uVar) {
        A2(kVar, uVar, false, false);
    }

    @Override // androidx.media3.common.Player
    public final void clearVideoSurface() {
        V0(null);
    }

    protected State i1(State state) {
        return state;
    }

    protected abstract State m1();

    @Override // androidx.media3.common.Player
    public final Looper s() {
        return this.applicationLooper;
    }

    private static boolean D1(State state) {
        return state.playWhenReady && state.playbackState == 3 && state.playbackSuppressionReason == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ State E1(State state, List list, int i10) {
        ArrayList arrayList = new ArrayList(state.playlist);
        for (int i11 = 0; i11 < list.size(); i11++) {
            arrayList.add(i11 + i10, h1((MediaItem) list.get(i11)));
        }
        return !state.playlist.isEmpty() ? n1(state, arrayList, this.period) : o1(state, arrayList, state.currentMediaItemIndex, state.contentPositionMsSupplier.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ State H1(State state, int i10, int i11) {
        ArrayList arrayList = new ArrayList(state.playlist);
        Util.V0(arrayList, i10, i11);
        return n1(state, arrayList, this.period);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State I1(State state, int i10, long j6) {
        return o1(state, state.playlist, i10, j6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void R1(State state, int i10, Player.Listener listener) {
        listener.onTimelineChanged(state.timeline, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void U1(State state, Player.Listener listener) {
        listener.onPlayerErrorChanged(state.playerError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void V1(State state, Player.Listener listener) {
        listener.onPlayerError((PlaybackException) Util.j(state.playerError));
    }

    private static long W0(State state) {
        return l1(state.contentBufferedPositionMsSupplier.get(), state);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void W1(State state, Player.Listener listener) {
        listener.onTrackSelectionParametersChanged(state.trackSelectionParameters);
    }

    private static long X0(State state) {
        return l1(state.contentPositionMsSupplier.get(), state);
    }

    private static int Y0(State state) {
        int i10 = state.currentMediaItemIndex;
        if (i10 != -1) {
            return i10;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void Z1(State state, Player.Listener listener) {
        listener.onLoadingChanged(state.isLoading);
        listener.onIsLoadingChanged(state.isLoading);
    }

    private static long a1(State state, Object obj, Timeline.Period period) {
        return state.currentAdGroupIndex != -1 ? state.adPositionMsSupplier.get() : X0(state) - state.timeline.l(obj, period).q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a2(State state, Player.Listener listener) {
        listener.onPlayerStateChanged(state.playWhenReady, state.playbackState);
    }

    private static Tracks b1(State state) {
        return state.playlist.isEmpty() ? Tracks.EMPTY : state.playlist.get(Y0(state)).tracks;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b2(State state, Player.Listener listener) {
        listener.onPlaybackStateChanged(state.playbackState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c2(State state, Player.Listener listener) {
        listener.onPlayWhenReadyChanged(state.playWhenReady, state.playWhenReadyChangeReason);
    }

    private static int d1(State state, State state2, int i10, boolean z6, Timeline.Window window) {
        Timeline timeline = state.timeline;
        Timeline timeline2 = state2.timeline;
        if (timeline2.u() && timeline.u()) {
            return -1;
        }
        if (timeline2.u() != timeline.u()) {
            return 3;
        }
        Object obj = state.timeline.r(Y0(state), window).uid;
        Object obj2 = state2.timeline.r(Y0(state2), window).uid;
        if ((obj instanceof PlaceholderUid) && !(obj2 instanceof PlaceholderUid)) {
            return -1;
        }
        if (!obj.equals(obj2)) {
            if (i10 == 0) {
                return 1;
            }
            return i10 == 1 ? 2 : 3;
        }
        if (i10 != 0 || X0(state) <= X0(state2)) {
            return (i10 == 1 && z6) ? 2 : -1;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d2(State state, Player.Listener listener) {
        listener.onPlaybackSuppressionReasonChanged(state.playbackSuppressionReason);
    }

    private static MediaMetadata e1(State state) {
        return state.playlist.isEmpty() ? MediaMetadata.EMPTY : state.playlist.get(Y0(state)).combinedMediaMetadata;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f2(State state, Player.Listener listener) {
        listener.onPlaybackParametersChanged(state.playbackParameters);
    }

    private static long g1(State state, Object obj, Timeline.Period period) {
        state.timeline.l(obj, period);
        int i10 = state.currentAdGroupIndex;
        return Util.q1(i10 == -1 ? period.durationUs : period.e(i10, state.currentAdIndexInAdGroup));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g2(State state, Player.Listener listener) {
        listener.onRepeatModeChanged(state.repeatMode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h2(State state, Player.Listener listener) {
        listener.onShuffleModeEnabledChanged(state.shuffleModeEnabled);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i2(State state, Player.Listener listener) {
        listener.onSeekBackIncrementChanged(state.seekBackIncrementMs);
    }

    private static int j1(State state, State state2, boolean z6, Timeline.Window window, Timeline.Period period) {
        if (state2.hasPositionDiscontinuity) {
            return state2.positionDiscontinuityReason;
        }
        if (z6) {
            return 1;
        }
        if (state.playlist.isEmpty()) {
            return -1;
        }
        if (state2.playlist.isEmpty()) {
            return 4;
        }
        Object objQ = state.timeline.q(Z0(state, window, period));
        Object objQ2 = state2.timeline.q(Z0(state2, window, period));
        if ((objQ instanceof PlaceholderUid) && !(objQ2 instanceof PlaceholderUid)) {
            return -1;
        }
        if (objQ2.equals(objQ) && state.currentAdGroupIndex == state2.currentAdGroupIndex && state.currentAdIndexInAdGroup == state2.currentAdIndexInAdGroup) {
            long jA1 = a1(state, objQ, period);
            if (Math.abs(jA1 - a1(state2, objQ2, period)) < 1000) {
                return -1;
            }
            long jG1 = g1(state, objQ, period);
            return (jG1 == -9223372036854775807L || jA1 < jG1) ? 5 : 0;
        }
        if (state2.timeline.f(objQ) == -1) {
            return 4;
        }
        long jA2 = a1(state, objQ, period);
        long jG2 = g1(state, objQ, period);
        return (jG2 == -9223372036854775807L || jA2 < jG2) ? 3 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j2(State state, Player.Listener listener) {
        listener.onSeekForwardIncrementChanged(state.seekForwardIncrementMs);
    }

    private static Player.PositionInfo k1(State state, boolean z6, Timeline.Window window, Timeline.Period period) {
        Object obj;
        MediaItem mediaItem;
        Object obj2;
        int i10;
        long j6;
        long jX0;
        int iY0 = Y0(state);
        if (state.timeline.u()) {
            obj = null;
            mediaItem = null;
            obj2 = null;
            i10 = -1;
        } else {
            int iZ0 = Z0(state, window, period);
            Object obj3 = state.timeline.k(iZ0, period, true).uid;
            Object obj4 = state.timeline.r(iY0, window).uid;
            i10 = iZ0;
            mediaItem = window.mediaItem;
            obj = obj4;
            obj2 = obj3;
        }
        if (z6) {
            j6 = state.discontinuityPositionMs;
            jX0 = state.currentAdGroupIndex == -1 ? j6 : X0(state);
        } else {
            long jX1 = X0(state);
            j6 = state.currentAdGroupIndex != -1 ? state.adPositionMsSupplier.get() : jX1;
            jX0 = jX1;
        }
        return new Player.PositionInfo(obj, iY0, mediaItem, obj2, i10, j6, jX0, state.currentAdGroupIndex, state.currentAdIndexInAdGroup);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void k2(State state, Player.Listener listener) {
        listener.onMaxSeekToPreviousPositionChanged(state.maxSeekToPreviousPositionMs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void l2(State state, Player.Listener listener) {
        listener.onAudioAttributesChanged(state.audioAttributes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void m2(State state, Player.Listener listener) {
        listener.onVideoSizeChanged(state.videoSize);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void n2(State state, Player.Listener listener) {
        listener.onDeviceInfoChanged(state.deviceInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void o2(State state, Player.Listener listener) {
        listener.onPlaylistMetadataChanged(state.playlistMetadata);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void p2(State state, Player.Listener listener) {
        listener.onSurfaceSizeChanged(state.surfaceSize.b(), state.surfaceSize.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void q2(State state, Player.Listener listener) {
        listener.onVolumeChanged(state.volume);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void r2(State state, Player.Listener listener) {
        listener.onDeviceVolumeChanged(state.deviceVolume, state.isDeviceMuted);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void s2(State state, Player.Listener listener) {
        listener.onCues(state.currentCues.cues);
        listener.onCues(state.currentCues);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void t2(State state, Player.Listener listener) {
        listener.onMetadata(state.timedMetadata);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void u2(State state, Player.Listener listener) {
        listener.onAvailableCommandsChanged(state.availableCommands);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v2(com.google.common.util.concurrent.k kVar) {
        Util.j(this.state);
        this.pendingOperations.remove(kVar);
        if (!this.pendingOperations.isEmpty() || this.released) {
            return;
        }
        y2(m1(), false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w2(Runnable runnable) {
        if (this.applicationHandler.getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.applicationHandler.post(runnable);
        }
    }

    private boolean x2(int i10) {
        return !this.released && this.state.availableCommands.c(i10);
    }

    private void y2(final State state, boolean z6, boolean z10) {
        State state2 = this.state;
        this.state = state;
        if (state.hasPositionDiscontinuity || state.newlyRenderedFirstFrame) {
            this.state = state.a().P().W(false).O();
        }
        boolean z11 = state2.playWhenReady != state.playWhenReady;
        boolean z12 = state2.playbackState != state.playbackState;
        Tracks tracksB1 = b1(state2);
        final Tracks tracksB2 = b1(state);
        MediaMetadata mediaMetadataE1 = e1(state2);
        final MediaMetadata mediaMetadataE2 = e1(state);
        final int iJ1 = j1(state2, state, z6, this.window, this.period);
        boolean z13 = !state2.timeline.equals(state.timeline);
        final int iD1 = d1(state2, state, iJ1, z10, this.window);
        if (z13) {
            final int iQ1 = q1(state2.playlist, state.playlist);
            this.listeners.i(0, new ListenerSet.Event() { // from class: androidx.media3.common.l0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.R1(state, iQ1, (Player.Listener) obj);
                }
            });
        }
        if (iJ1 != -1) {
            final Player.PositionInfo positionInfoK1 = k1(state2, false, this.window, this.period);
            final Player.PositionInfo positionInfoK2 = k1(state, state.hasPositionDiscontinuity, this.window, this.period);
            this.listeners.i(11, new ListenerSet.Event() { // from class: androidx.media3.common.x0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.S1(iJ1, positionInfoK1, positionInfoK2, (Player.Listener) obj);
                }
            });
        }
        if (iD1 != -1) {
            final MediaItem mediaItem = state.timeline.u() ? null : state.playlist.get(Y0(state)).mediaItem;
            this.listeners.i(1, new ListenerSet.Event() { // from class: androidx.media3.common.j1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMediaItemTransition(mediaItem, iD1);
                }
            });
        }
        if (!Util.c(state2.playerError, state.playerError)) {
            this.listeners.i(10, new ListenerSet.Event() { // from class: androidx.media3.common.l1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.U1(state, (Player.Listener) obj);
                }
            });
            if (state.playerError != null) {
                this.listeners.i(10, new ListenerSet.Event() { // from class: androidx.media3.common.n1
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        SimpleBasePlayer.V1(state, (Player.Listener) obj);
                    }
                });
            }
        }
        if (!state2.trackSelectionParameters.equals(state.trackSelectionParameters)) {
            this.listeners.i(19, new ListenerSet.Event() { // from class: androidx.media3.common.o1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.W1(state, (Player.Listener) obj);
                }
            });
        }
        if (!tracksB1.equals(tracksB2)) {
            this.listeners.i(2, new ListenerSet.Event() { // from class: androidx.media3.common.p1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onTracksChanged(tracksB2);
                }
            });
        }
        if (!mediaMetadataE1.equals(mediaMetadataE2)) {
            this.listeners.i(14, new ListenerSet.Event() { // from class: androidx.media3.common.q1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMediaMetadataChanged(mediaMetadataE2);
                }
            });
        }
        if (state2.isLoading != state.isLoading) {
            this.listeners.i(3, new ListenerSet.Event() { // from class: androidx.media3.common.r1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.Z1(state, (Player.Listener) obj);
                }
            });
        }
        if (z11 || z12) {
            this.listeners.i(-1, new ListenerSet.Event() { // from class: androidx.media3.common.s1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.a2(state, (Player.Listener) obj);
                }
            });
        }
        if (z12) {
            this.listeners.i(4, new ListenerSet.Event() { // from class: androidx.media3.common.m0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.b2(state, (Player.Listener) obj);
                }
            });
        }
        if (z11 || state2.playWhenReadyChangeReason != state.playWhenReadyChangeReason) {
            this.listeners.i(5, new ListenerSet.Event() { // from class: androidx.media3.common.n0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.c2(state, (Player.Listener) obj);
                }
            });
        }
        if (state2.playbackSuppressionReason != state.playbackSuppressionReason) {
            this.listeners.i(6, new ListenerSet.Event() { // from class: androidx.media3.common.o0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.d2(state, (Player.Listener) obj);
                }
            });
        }
        if (D1(state2) != D1(state)) {
            this.listeners.i(7, new ListenerSet.Event() { // from class: androidx.media3.common.p0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.e2(state, (Player.Listener) obj);
                }
            });
        }
        if (!state2.playbackParameters.equals(state.playbackParameters)) {
            this.listeners.i(12, new ListenerSet.Event() { // from class: androidx.media3.common.r0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.f2(state, (Player.Listener) obj);
                }
            });
        }
        if (state2.repeatMode != state.repeatMode) {
            this.listeners.i(8, new ListenerSet.Event() { // from class: androidx.media3.common.s0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.g2(state, (Player.Listener) obj);
                }
            });
        }
        if (state2.shuffleModeEnabled != state.shuffleModeEnabled) {
            this.listeners.i(9, new ListenerSet.Event() { // from class: androidx.media3.common.t0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.h2(state, (Player.Listener) obj);
                }
            });
        }
        if (state2.seekBackIncrementMs != state.seekBackIncrementMs) {
            this.listeners.i(16, new ListenerSet.Event() { // from class: androidx.media3.common.u0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.i2(state, (Player.Listener) obj);
                }
            });
        }
        if (state2.seekForwardIncrementMs != state.seekForwardIncrementMs) {
            this.listeners.i(17, new ListenerSet.Event() { // from class: androidx.media3.common.v0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.j2(state, (Player.Listener) obj);
                }
            });
        }
        if (state2.maxSeekToPreviousPositionMs != state.maxSeekToPreviousPositionMs) {
            this.listeners.i(18, new ListenerSet.Event() { // from class: androidx.media3.common.w0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.k2(state, (Player.Listener) obj);
                }
            });
        }
        if (!state2.audioAttributes.equals(state.audioAttributes)) {
            this.listeners.i(20, new ListenerSet.Event() { // from class: androidx.media3.common.y0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.l2(state, (Player.Listener) obj);
                }
            });
        }
        if (!state2.videoSize.equals(state.videoSize)) {
            this.listeners.i(25, new ListenerSet.Event() { // from class: androidx.media3.common.z0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.m2(state, (Player.Listener) obj);
                }
            });
        }
        if (!state2.deviceInfo.equals(state.deviceInfo)) {
            this.listeners.i(29, new ListenerSet.Event() { // from class: androidx.media3.common.a1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.n2(state, (Player.Listener) obj);
                }
            });
        }
        if (!state2.playlistMetadata.equals(state.playlistMetadata)) {
            this.listeners.i(15, new ListenerSet.Event() { // from class: androidx.media3.common.c1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.o2(state, (Player.Listener) obj);
                }
            });
        }
        if (state.newlyRenderedFirstFrame) {
            this.listeners.i(26, new d1());
        }
        if (!state2.surfaceSize.equals(state.surfaceSize)) {
            this.listeners.i(24, new ListenerSet.Event() { // from class: androidx.media3.common.e1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.p2(state, (Player.Listener) obj);
                }
            });
        }
        if (state2.volume != state.volume) {
            this.listeners.i(22, new ListenerSet.Event() { // from class: androidx.media3.common.f1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.q2(state, (Player.Listener) obj);
                }
            });
        }
        if (state2.deviceVolume != state.deviceVolume || state2.isDeviceMuted != state.isDeviceMuted) {
            this.listeners.i(30, new ListenerSet.Event() { // from class: androidx.media3.common.g1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.r2(state, (Player.Listener) obj);
                }
            });
        }
        if (!state2.currentCues.equals(state.currentCues)) {
            this.listeners.i(27, new ListenerSet.Event() { // from class: androidx.media3.common.h1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.s2(state, (Player.Listener) obj);
                }
            });
        }
        if (!state2.timedMetadata.equals(state.timedMetadata) && state.timedMetadata.presentationTimeUs != -9223372036854775807L) {
            this.listeners.i(28, new ListenerSet.Event() { // from class: androidx.media3.common.i1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.t2(state, (Player.Listener) obj);
                }
            });
        }
        if (!state2.availableCommands.equals(state.availableCommands)) {
            this.listeners.i(13, new ListenerSet.Event() { // from class: androidx.media3.common.k1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    SimpleBasePlayer.u2(state, (Player.Listener) obj);
                }
            });
        }
        this.listeners.f();
    }

    protected com.google.common.util.concurrent.k<?> A1(TrackSelectionParameters trackSelectionParameters) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_TRACK_SELECTION_PARAMETERS");
    }

    protected com.google.common.util.concurrent.k<?> B1(Object obj) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_VIDEO_SURFACE");
    }

    protected com.google.common.util.concurrent.k<?> C1() {
        throw new IllegalStateException("Missing implementation to handle COMMAND_STOP");
    }

    @Override // androidx.media3.common.Player
    public final void L(Player.Listener listener) {
        this.listeners.c((Player.Listener) Assertions.e(listener));
    }

    protected MediaItemData h1(MediaItem mediaItem) {
        return new MediaItemData.Builder(new PlaceholderUid()).t(mediaItem).r(true).s(true).q();
    }

    protected com.google.common.util.concurrent.k<?> r1(int i10, List<MediaItem> list) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS");
    }

    protected com.google.common.util.concurrent.k<?> s1(@Nullable Object obj) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_VIDEO_SURFACE");
    }

    protected com.google.common.util.concurrent.k<?> t1() {
        throw new IllegalStateException("Missing implementation to handle COMMAND_PREPARE");
    }

    protected com.google.common.util.concurrent.k<?> u1(int i10, int i11) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS");
    }

    protected com.google.common.util.concurrent.k<?> v1(int i10, long j6, int i11) {
        throw new IllegalStateException("Missing implementation to handle one of the COMMAND_SEEK_*");
    }

    protected com.google.common.util.concurrent.k<?> w1(boolean z6) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_PLAY_PAUSE");
    }

    protected com.google.common.util.concurrent.k<?> x1(PlaybackParameters playbackParameters) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_SPEED_AND_PITCH");
    }

    protected com.google.common.util.concurrent.k<?> y1(int i10) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_REPEAT_MODE");
    }

    protected com.google.common.util.concurrent.k<?> z1(boolean z6) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_SHUFFLE_MODE");
    }

    private void A2(final com.google.common.util.concurrent.k<?> kVar, com.google.common.base.u<State> uVar, boolean z6, boolean z10) {
        if (kVar.isDone() && this.pendingOperations.isEmpty()) {
            y2(m1(), z6, z10);
            return;
        }
        this.pendingOperations.add(kVar);
        y2(i1(uVar.get()), z6, z10);
        kVar.addListener(new Runnable() { // from class: androidx.media3.common.i0
            @Override // java.lang.Runnable
            public final void run() {
                this.f241a.v2(kVar);
            }
        }, new Executor() { // from class: androidx.media3.common.j0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                this.f244a.w2(runnable);
            }
        });
    }

    private void B2() {
        if (Thread.currentThread() == this.applicationLooper.getThread()) {
            if (this.state == null) {
                this.state = m1();
                return;
            }
            return;
        }
        throw new IllegalStateException(Util.D("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), this.applicationLooper.getThread().getName()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State F1(State state) {
        return state.a().e0(Size.ZERO).O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State G1(State state) {
        int i10;
        State.Builder builderA0 = state.a().a0(null);
        if (state.timeline.u()) {
            i10 = 4;
        } else {
            i10 = 2;
        }
        return builderA0.Z(i10).O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State J1(State state, boolean z6) {
        return state.a().X(z6, 1).O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State K1(State state, PlaybackParameters playbackParameters) {
        return state.a().Y(playbackParameters).O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State L1(State state, int i10) {
        return state.a().c0(i10).O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State M1(State state, boolean z6) {
        return state.a().d0(z6).O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State N1(State state, TrackSelectionParameters trackSelectionParameters) {
        return state.a().g0(trackSelectionParameters).O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State O1(State state, SurfaceView surfaceView) {
        return state.a().e0(p1(surfaceView.getHolder())).O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State P1(State state, Size size) {
        return state.a().e0(size).O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State Q1(State state) {
        return state.a().Z(1).f0(PositionSupplier.ZERO).R(b2.a(X0(state))).Q(state.adPositionMsSupplier).V(false).O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void S1(int i10, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, Player.Listener listener) {
        listener.onPositionDiscontinuity(i10);
        listener.onPositionDiscontinuity(positionInfo, positionInfo2, i10);
    }

    private static State U0(State.Builder builder, State state, long j6, List<MediaItemData> list, int i10, long j10, boolean z6) {
        boolean z10;
        long jL1 = l1(j6, state);
        boolean z11 = false;
        if (!list.isEmpty() && (i10 == -1 || i10 >= list.size())) {
            j10 = -9223372036854775807L;
            i10 = 0;
        }
        if (!list.isEmpty() && j10 == -9223372036854775807L) {
            j10 = Util.q1(list.get(i10).defaultPositionUs);
        }
        if (!state.playlist.isEmpty() && !list.isEmpty()) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (!z10 && !state.playlist.get(Y0(state)).uid.equals(list.get(i10).uid)) {
            z11 = true;
        }
        if (!z10 && !z11 && j10 >= jL1) {
            if (j10 == jL1) {
                builder.U(i10);
                if (state.currentAdGroupIndex != -1 && z6) {
                    builder.f0(b2.a(state.adBufferedPositionMsSupplier.get() - state.adPositionMsSupplier.get()));
                } else {
                    builder.T(-1, -1).f0(b2.a(W0(state) - jL1));
                }
            } else {
                builder.U(i10).T(-1, -1).S(j10).R(b2.a(Math.max(W0(state), j10))).f0(b2.a(Math.max(0L, state.totalBufferedDurationMsSupplier.get() - (j10 - jL1))));
            }
        } else {
            builder.U(i10).T(-1, -1).S(j10).R(b2.a(j10)).f0(PositionSupplier.ZERO);
        }
        return builder.O();
    }

    private void V0(@Nullable Object obj) {
        B2();
        final State state = this.state;
        if (!x2(27)) {
            return;
        }
        z2(s1(obj), new com.google.common.base.u() { // from class: androidx.media3.common.v1
            @Override // com.google.common.base.u
            public final Object get() {
                return SimpleBasePlayer.F1(state);
            }
        });
    }

    private static int Z0(State state, Timeline.Window window, Timeline.Period period) {
        int iY0 = Y0(state);
        if (state.timeline.u()) {
            return iY0;
        }
        return f1(state.timeline, iY0, X0(state), window, period);
    }

    private static int c1(List<MediaItemData> list, Timeline timeline, int i10, Timeline.Period period) {
        if (!list.isEmpty()) {
            Object objG = list.get(i10).g(0);
            if (timeline.f(objG) == -1) {
                return -1;
            }
            return timeline.l(objG, period).windowIndex;
        }
        if (i10 >= timeline.t()) {
            return -1;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e2(State state, Player.Listener listener) {
        listener.onIsPlayingChanged(D1(state));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int f1(Timeline timeline, int i10, long j6, Timeline.Window window, Timeline.Period period) {
        return timeline.f(timeline.n(window, period, i10, Util.K0(j6)).first);
    }

    private static State n1(State state, List<MediaItemData> list, Timeline.Period period) {
        long j6;
        State.Builder builderA = state.a();
        builderA.b0(list);
        Timeline timeline = builderA.timeline;
        long j10 = state.contentPositionMsSupplier.get();
        int iY0 = Y0(state);
        int iC1 = c1(state.playlist, timeline, iY0, period);
        if (iC1 == -1) {
            j6 = -9223372036854775807L;
        } else {
            j6 = j10;
        }
        for (int i10 = iY0 + 1; iC1 == -1 && i10 < state.playlist.size(); i10++) {
            iC1 = c1(state.playlist, timeline, i10, period);
        }
        if (state.playbackState != 1 && iC1 == -1) {
            builderA.Z(4).V(false);
        }
        return U0(builderA, state, j10, list, iC1, j6, true);
    }

    private static State o1(State state, List<MediaItemData> list, int i10, long j6) {
        State.Builder builderA = state.a();
        builderA.b0(list);
        if (state.playbackState != 1) {
            if (!list.isEmpty() && (i10 == -1 || i10 < list.size())) {
                builderA.Z(2);
            } else {
                builderA.Z(4).V(false);
            }
        }
        return U0(builderA, state, state.contentPositionMsSupplier.get(), list, i10, j6, false);
    }

    private static Size p1(SurfaceHolder surfaceHolder) {
        if (!surfaceHolder.getSurface().isValid()) {
            return Size.ZERO;
        }
        Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
        return new Size(surfaceFrame.width(), surfaceFrame.height());
    }

    private static int q1(List<MediaItemData> list, List<MediaItemData> list2) {
        if (list.size() != list2.size()) {
            return 0;
        }
        int i10 = 0;
        while (true) {
            boolean z6 = true;
            if (i10 >= list.size()) {
                return 1;
            }
            Object obj = list.get(i10).uid;
            Object obj2 = list2.get(i10).uid;
            if (!(obj instanceof PlaceholderUid) || (obj2 instanceof PlaceholderUid)) {
                z6 = false;
            }
            if (!obj.equals(obj2) && !z6) {
                return 0;
            }
            i10++;
        }
    }

    @Override // androidx.media3.common.Player
    public final long A() {
        B2();
        return this.state.seekBackIncrementMs;
    }

    @Override // androidx.media3.common.Player
    public final void B(final int i10, int i11) {
        boolean z6;
        final int iMin;
        B2();
        if (i10 >= 0 && i11 >= i10) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.a(z6);
        final State state = this.state;
        int size = state.playlist.size();
        if (!x2(20) || size == 0 || i10 >= size || i10 == (iMin = Math.min(i11, size))) {
            return;
        }
        z2(u1(i10, iMin), new com.google.common.base.u() { // from class: androidx.media3.common.y1
            @Override // com.google.common.base.u
            public final Object get() {
                return this.f292a.H1(state, i10, iMin);
            }
        });
    }

    @Override // androidx.media3.common.Player
    public final void E(final TrackSelectionParameters trackSelectionParameters) {
        B2();
        final State state = this.state;
        if (!x2(29)) {
            return;
        }
        z2(A1(trackSelectionParameters), new com.google.common.base.u() { // from class: androidx.media3.common.k0
            @Override // com.google.common.base.u
            public final Object get() {
                return SimpleBasePlayer.N1(state, trackSelectionParameters);
            }
        });
    }

    @Override // androidx.media3.common.Player
    public final void K(Player.Listener listener) {
        B2();
        this.listeners.k(listener);
    }

    @Override // androidx.media3.common.Player
    public final void N(int i10, final List<MediaItem> list) {
        boolean z6;
        B2();
        if (i10 >= 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.a(z6);
        final State state = this.state;
        int size = state.playlist.size();
        if (x2(20) && !list.isEmpty()) {
            final int iMin = Math.min(i10, size);
            z2(r1(iMin, list), new com.google.common.base.u() { // from class: androidx.media3.common.x1
                @Override // com.google.common.base.u
                public final Object get() {
                    return this.f288a.E1(state, list, iMin);
                }
            });
        }
    }

    @Override // androidx.media3.common.BasePlayer
    @VisibleForTesting
    public final void U(final int i10, final long j6, int i11, boolean z6) {
        boolean z10;
        B2();
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        Assertions.a(z10);
        final State state = this.state;
        if (x2(i11) && !isPlayingAd()) {
            if (state.playlist.isEmpty() || i10 < state.playlist.size()) {
                A2(v1(i10, j6, i11), new com.google.common.base.u() { // from class: androidx.media3.common.f0
                    @Override // com.google.common.base.u
                    public final Object get() {
                        return SimpleBasePlayer.I1(state, i10, j6);
                    }
                }, true, z6);
            }
        }
    }

    @Override // androidx.media3.common.Player
    public final void b(final PlaybackParameters playbackParameters) {
        B2();
        final State state = this.state;
        if (!x2(13)) {
            return;
        }
        z2(x1(playbackParameters), new com.google.common.base.u() { // from class: androidx.media3.common.b1
            @Override // com.google.common.base.u
            public final Object get() {
                return SimpleBasePlayer.K1(state, playbackParameters);
            }
        });
    }

    @Override // androidx.media3.common.Player
    public final long c() {
        B2();
        return this.state.totalBufferedDurationMsSupplier.get();
    }

    @Override // androidx.media3.common.Player
    public final void clearVideoSurfaceView(@Nullable SurfaceView surfaceView) {
        V0(surfaceView);
    }

    @Override // androidx.media3.common.Player
    public final void clearVideoTextureView(@Nullable TextureView textureView) {
        V0(textureView);
    }

    @Override // androidx.media3.common.Player
    @Nullable
    public final PlaybackException d() {
        B2();
        return this.state.playerError;
    }

    @Override // androidx.media3.common.Player
    public final Tracks e() {
        B2();
        return b1(this.state);
    }

    @Override // androidx.media3.common.Player
    public final long getContentPosition() {
        B2();
        return X0(this.state);
    }

    @Override // androidx.media3.common.Player
    public final int getCurrentAdGroupIndex() {
        B2();
        return this.state.currentAdGroupIndex;
    }

    @Override // androidx.media3.common.Player
    public final int getCurrentAdIndexInAdGroup() {
        B2();
        return this.state.currentAdIndexInAdGroup;
    }

    @Override // androidx.media3.common.Player
    public final int getCurrentPeriodIndex() {
        B2();
        return Z0(this.state, this.window, this.period);
    }

    @Override // androidx.media3.common.Player
    public final long getCurrentPosition() {
        B2();
        if (isPlayingAd()) {
            return this.state.adPositionMsSupplier.get();
        }
        return getContentPosition();
    }

    @Override // androidx.media3.common.Player
    public final Timeline getCurrentTimeline() {
        B2();
        return this.state.timeline;
    }

    @Override // androidx.media3.common.Player
    public final long getDuration() {
        B2();
        if (isPlayingAd()) {
            this.state.timeline.j(getCurrentPeriodIndex(), this.period);
            Timeline.Period period = this.period;
            State state = this.state;
            return Util.q1(period.e(state.currentAdGroupIndex, state.currentAdIndexInAdGroup));
        }
        return C();
    }

    @Override // androidx.media3.common.Player
    public final boolean getPlayWhenReady() {
        B2();
        return this.state.playWhenReady;
    }

    @Override // androidx.media3.common.Player
    public final PlaybackParameters getPlaybackParameters() {
        B2();
        return this.state.playbackParameters;
    }

    @Override // androidx.media3.common.Player
    public final int getPlaybackState() {
        B2();
        return this.state.playbackState;
    }

    @Override // androidx.media3.common.Player
    public final int getRepeatMode() {
        B2();
        return this.state.repeatMode;
    }

    @Override // androidx.media3.common.Player
    public final boolean getShuffleModeEnabled() {
        B2();
        return this.state.shuffleModeEnabled;
    }

    @Override // androidx.media3.common.Player
    public final TrackSelectionParameters h() {
        B2();
        return this.state.trackSelectionParameters;
    }

    @Override // androidx.media3.common.Player
    public final long i() {
        B2();
        return this.state.maxSeekToPreviousPositionMs;
    }

    @Override // androidx.media3.common.Player
    public final boolean isPlayingAd() {
        B2();
        if (this.state.currentAdGroupIndex != -1) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.common.Player
    public final long j() {
        B2();
        return this.state.seekForwardIncrementMs;
    }

    @Override // androidx.media3.common.Player
    public final long l() {
        B2();
        return Math.max(W0(this.state), X0(this.state));
    }

    @Override // androidx.media3.common.Player
    public final CueGroup p() {
        B2();
        return this.state.currentCues;
    }

    @Override // androidx.media3.common.Player
    public final void prepare() {
        B2();
        final State state = this.state;
        if (!x2(2)) {
            return;
        }
        z2(t1(), new com.google.common.base.u() { // from class: androidx.media3.common.w1
            @Override // com.google.common.base.u
            public final Object get() {
                return SimpleBasePlayer.G1(state);
            }
        });
    }

    @Override // androidx.media3.common.Player
    public final int r() {
        B2();
        return this.state.playbackSuppressionReason;
    }

    @Override // androidx.media3.common.Player
    public final void setPlayWhenReady(final boolean z6) {
        B2();
        final State state = this.state;
        if (!x2(1)) {
            return;
        }
        z2(w1(z6), new com.google.common.base.u() { // from class: androidx.media3.common.t1
            @Override // com.google.common.base.u
            public final Object get() {
                return SimpleBasePlayer.J1(state, z6);
            }
        });
    }

    @Override // androidx.media3.common.Player
    public final void setRepeatMode(final int i10) {
        B2();
        final State state = this.state;
        if (!x2(15)) {
            return;
        }
        z2(y1(i10), new com.google.common.base.u() { // from class: androidx.media3.common.u1
            @Override // com.google.common.base.u
            public final Object get() {
                return SimpleBasePlayer.L1(state, i10);
            }
        });
    }

    @Override // androidx.media3.common.Player
    public final void setShuffleModeEnabled(final boolean z6) {
        B2();
        final State state = this.state;
        if (!x2(14)) {
            return;
        }
        z2(z1(z6), new com.google.common.base.u() { // from class: androidx.media3.common.h0
            @Override // com.google.common.base.u
            public final Object get() {
                return SimpleBasePlayer.M1(state, z6);
            }
        });
    }

    @Override // androidx.media3.common.Player
    public final void setVideoSurfaceView(@Nullable final SurfaceView surfaceView) {
        B2();
        final State state = this.state;
        if (!x2(27)) {
            return;
        }
        if (surfaceView == null) {
            clearVideoSurface();
        } else {
            z2(B1(surfaceView), new com.google.common.base.u() { // from class: androidx.media3.common.g0
                @Override // com.google.common.base.u
                public final Object get() {
                    return SimpleBasePlayer.O1(state, surfaceView);
                }
            });
        }
    }

    @Override // androidx.media3.common.Player
    public final void setVideoTextureView(@Nullable TextureView textureView) {
        final Size size;
        B2();
        final State state = this.state;
        if (!x2(27)) {
            return;
        }
        if (textureView == null) {
            clearVideoSurface();
            return;
        }
        if (textureView.isAvailable()) {
            size = new Size(textureView.getWidth(), textureView.getHeight());
        } else {
            size = Size.ZERO;
        }
        z2(B1(textureView), new com.google.common.base.u() { // from class: androidx.media3.common.m1
            @Override // com.google.common.base.u
            public final Object get() {
                return SimpleBasePlayer.P1(state, size);
            }
        });
    }

    @Override // androidx.media3.common.Player
    public final void stop() {
        B2();
        final State state = this.state;
        if (!x2(3)) {
            return;
        }
        z2(C1(), new com.google.common.base.u() { // from class: androidx.media3.common.q0
            @Override // com.google.common.base.u
            public final Object get() {
                return SimpleBasePlayer.Q1(state);
            }
        });
    }

    @Override // androidx.media3.common.Player
    public final Player.Commands u() {
        B2();
        return this.state.availableCommands;
    }

    @Override // androidx.media3.common.Player
    public final VideoSize v() {
        B2();
        return this.state.videoSize;
    }

    @Override // androidx.media3.common.Player
    public final int x() {
        B2();
        return Y0(this.state);
    }

    @Override // androidx.media3.common.Player
    public final MediaMetadata z() {
        B2();
        return e1(this.state);
    }

    private static long l1(long j6, State state) {
        if (j6 != -9223372036854775807L) {
            return j6;
        }
        if (state.playlist.isEmpty()) {
            return 0L;
        }
        return Util.q1(state.playlist.get(Y0(state)).defaultPositionUs);
    }
}
