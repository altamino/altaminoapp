package androidx.media3.common;

import android.os.Bundle;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface Player {

    @Deprecated
    public static final int COMMAND_ADJUST_DEVICE_VOLUME = 26;
    public static final int COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS = 34;
    public static final int COMMAND_CHANGE_MEDIA_ITEMS = 20;
    public static final int COMMAND_GET_AUDIO_ATTRIBUTES = 21;
    public static final int COMMAND_GET_CURRENT_MEDIA_ITEM = 16;
    public static final int COMMAND_GET_DEVICE_VOLUME = 23;

    @Deprecated
    public static final int COMMAND_GET_MEDIA_ITEMS_METADATA = 18;
    public static final int COMMAND_GET_METADATA = 18;
    public static final int COMMAND_GET_TEXT = 28;
    public static final int COMMAND_GET_TIMELINE = 17;
    public static final int COMMAND_GET_TRACKS = 30;
    public static final int COMMAND_GET_VOLUME = 22;
    public static final int COMMAND_INVALID = -1;
    public static final int COMMAND_PLAY_PAUSE = 1;
    public static final int COMMAND_PREPARE = 2;
    public static final int COMMAND_RELEASE = 32;
    public static final int COMMAND_SEEK_BACK = 11;
    public static final int COMMAND_SEEK_FORWARD = 12;
    public static final int COMMAND_SEEK_IN_CURRENT_MEDIA_ITEM = 5;

    @UnstableApi
    @Deprecated
    public static final int COMMAND_SEEK_IN_CURRENT_WINDOW = 5;
    public static final int COMMAND_SEEK_TO_DEFAULT_POSITION = 4;
    public static final int COMMAND_SEEK_TO_MEDIA_ITEM = 10;
    public static final int COMMAND_SEEK_TO_NEXT = 9;
    public static final int COMMAND_SEEK_TO_NEXT_MEDIA_ITEM = 8;

    @UnstableApi
    @Deprecated
    public static final int COMMAND_SEEK_TO_NEXT_WINDOW = 8;
    public static final int COMMAND_SEEK_TO_PREVIOUS = 7;
    public static final int COMMAND_SEEK_TO_PREVIOUS_MEDIA_ITEM = 6;

    @UnstableApi
    @Deprecated
    public static final int COMMAND_SEEK_TO_PREVIOUS_WINDOW = 6;

    @UnstableApi
    @Deprecated
    public static final int COMMAND_SEEK_TO_WINDOW = 10;

    @Deprecated
    public static final int COMMAND_SET_DEVICE_VOLUME = 25;
    public static final int COMMAND_SET_DEVICE_VOLUME_WITH_FLAGS = 33;
    public static final int COMMAND_SET_MEDIA_ITEM = 31;

    @Deprecated
    public static final int COMMAND_SET_MEDIA_ITEMS_METADATA = 19;
    public static final int COMMAND_SET_PLAYLIST_METADATA = 19;
    public static final int COMMAND_SET_REPEAT_MODE = 15;
    public static final int COMMAND_SET_SHUFFLE_MODE = 14;
    public static final int COMMAND_SET_SPEED_AND_PITCH = 13;
    public static final int COMMAND_SET_TRACK_SELECTION_PARAMETERS = 29;
    public static final int COMMAND_SET_VIDEO_SURFACE = 27;
    public static final int COMMAND_SET_VOLUME = 24;
    public static final int COMMAND_STOP = 3;
    public static final int DISCONTINUITY_REASON_AUTO_TRANSITION = 0;
    public static final int DISCONTINUITY_REASON_INTERNAL = 5;
    public static final int DISCONTINUITY_REASON_REMOVE = 4;
    public static final int DISCONTINUITY_REASON_SEEK = 1;
    public static final int DISCONTINUITY_REASON_SEEK_ADJUSTMENT = 2;
    public static final int DISCONTINUITY_REASON_SKIP = 3;
    public static final int EVENT_AUDIO_ATTRIBUTES_CHANGED = 20;
    public static final int EVENT_AUDIO_SESSION_ID = 21;
    public static final int EVENT_AVAILABLE_COMMANDS_CHANGED = 13;
    public static final int EVENT_CUES = 27;
    public static final int EVENT_DEVICE_INFO_CHANGED = 29;
    public static final int EVENT_DEVICE_VOLUME_CHANGED = 30;
    public static final int EVENT_IS_LOADING_CHANGED = 3;
    public static final int EVENT_IS_PLAYING_CHANGED = 7;
    public static final int EVENT_MAX_SEEK_TO_PREVIOUS_POSITION_CHANGED = 18;
    public static final int EVENT_MEDIA_ITEM_TRANSITION = 1;
    public static final int EVENT_MEDIA_METADATA_CHANGED = 14;
    public static final int EVENT_METADATA = 28;
    public static final int EVENT_PLAYBACK_PARAMETERS_CHANGED = 12;
    public static final int EVENT_PLAYBACK_STATE_CHANGED = 4;
    public static final int EVENT_PLAYBACK_SUPPRESSION_REASON_CHANGED = 6;
    public static final int EVENT_PLAYER_ERROR = 10;
    public static final int EVENT_PLAYLIST_METADATA_CHANGED = 15;
    public static final int EVENT_PLAY_WHEN_READY_CHANGED = 5;
    public static final int EVENT_POSITION_DISCONTINUITY = 11;
    public static final int EVENT_RENDERED_FIRST_FRAME = 26;
    public static final int EVENT_REPEAT_MODE_CHANGED = 8;
    public static final int EVENT_SEEK_BACK_INCREMENT_CHANGED = 16;
    public static final int EVENT_SEEK_FORWARD_INCREMENT_CHANGED = 17;
    public static final int EVENT_SHUFFLE_MODE_ENABLED_CHANGED = 9;
    public static final int EVENT_SKIP_SILENCE_ENABLED_CHANGED = 23;
    public static final int EVENT_SURFACE_SIZE_CHANGED = 24;
    public static final int EVENT_TIMELINE_CHANGED = 0;
    public static final int EVENT_TRACKS_CHANGED = 2;
    public static final int EVENT_TRACK_SELECTION_PARAMETERS_CHANGED = 19;
    public static final int EVENT_VIDEO_SIZE_CHANGED = 25;
    public static final int EVENT_VOLUME_CHANGED = 22;
    public static final int MEDIA_ITEM_TRANSITION_REASON_AUTO = 1;
    public static final int MEDIA_ITEM_TRANSITION_REASON_PLAYLIST_CHANGED = 3;
    public static final int MEDIA_ITEM_TRANSITION_REASON_REPEAT = 0;
    public static final int MEDIA_ITEM_TRANSITION_REASON_SEEK = 2;
    public static final int PLAYBACK_SUPPRESSION_REASON_NONE = 0;
    public static final int PLAYBACK_SUPPRESSION_REASON_TRANSIENT_AUDIO_FOCUS_LOSS = 1;
    public static final int PLAYBACK_SUPPRESSION_REASON_UNSUITABLE_AUDIO_ROUTE = 2;
    public static final int PLAY_WHEN_READY_CHANGE_REASON_AUDIO_BECOMING_NOISY = 3;
    public static final int PLAY_WHEN_READY_CHANGE_REASON_AUDIO_FOCUS_LOSS = 2;
    public static final int PLAY_WHEN_READY_CHANGE_REASON_END_OF_MEDIA_ITEM = 5;
    public static final int PLAY_WHEN_READY_CHANGE_REASON_REMOTE = 4;
    public static final int PLAY_WHEN_READY_CHANGE_REASON_SUPPRESSED_TOO_LONG = 6;
    public static final int PLAY_WHEN_READY_CHANGE_REASON_USER_REQUEST = 1;
    public static final int REPEAT_MODE_ALL = 2;
    public static final int REPEAT_MODE_OFF = 0;
    public static final int REPEAT_MODE_ONE = 1;
    public static final int STATE_BUFFERING = 2;
    public static final int STATE_ENDED = 4;
    public static final int STATE_IDLE = 1;
    public static final int STATE_READY = 3;
    public static final int TIMELINE_CHANGE_REASON_PLAYLIST_CHANGED = 0;
    public static final int TIMELINE_CHANGE_REASON_SOURCE_UPDATE = 1;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Command {
    }

    public static final class Commands implements Bundleable {
        private final FlagSet flags;
        public static final Commands EMPTY = new Builder().e();
        private static final String FIELD_COMMANDS = Util.z0(0);

        @UnstableApi
        public static final Bundleable.Creator<Commands> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.b0
            @Override // androidx.media3.common.Bundleable.Creator
            public final Bundleable a(Bundle bundle) {
                return Player.Commands.d(bundle);
            }
        };

        @UnstableApi
        public static final class Builder {
            private static final int[] SUPPORTED_COMMANDS = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 31, 20, 21, 22, 23, 24, 25, 33, 26, 34, 27, 28, 29, 30, 32};
            private final FlagSet.Builder flagsBuilder = new FlagSet.Builder();

            public Builder a(int i10) {
                this.flagsBuilder.a(i10);
                return this;
            }

            public Builder b(Commands commands) {
                this.flagsBuilder.b(commands.flags);
                return this;
            }

            public Builder c(int... iArr) {
                this.flagsBuilder.c(iArr);
                return this;
            }

            public Builder d(int i10, boolean z6) {
                this.flagsBuilder.d(i10, z6);
                return this;
            }

            public Commands e() {
                return new Commands(this.flagsBuilder.e());
            }
        }

        private Commands(FlagSet flagSet) {
            this.flags = flagSet;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Commands d(Bundle bundle) {
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(FIELD_COMMANDS);
            if (integerArrayList == null) {
                return EMPTY;
            }
            Builder builder = new Builder();
            for (int i10 = 0; i10 < integerArrayList.size(); i10++) {
                builder.a(integerArrayList.get(i10).intValue());
            }
            return builder.e();
        }

        public boolean c(int i10) {
            return this.flags.a(i10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Commands) {
                return this.flags.equals(((Commands) obj).flags);
            }
            return false;
        }

        public int hashCode() {
            return this.flags.hashCode();
        }

        @Override // androidx.media3.common.Bundleable
        @UnstableApi
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            ArrayList<Integer> arrayList = new ArrayList<>();
            for (int i10 = 0; i10 < this.flags.d(); i10++) {
                arrayList.add(Integer.valueOf(this.flags.c(i10)));
            }
            bundle.putIntegerArrayList(FIELD_COMMANDS, arrayList);
            return bundle;
        }
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface DiscontinuityReason {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Event {
    }

    public static final class Events {
        private final FlagSet flags;

        public boolean a(int i10) {
            return this.flags.a(i10);
        }

        public boolean b(int... iArr) {
            return this.flags.b(iArr);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Events) {
                return this.flags.equals(((Events) obj).flags);
            }
            return false;
        }

        public int hashCode() {
            return this.flags.hashCode();
        }

        @UnstableApi
        public Events(FlagSet flagSet) {
            this.flags = flagSet;
        }
    }

    public interface Listener {
        void onAudioAttributesChanged(AudioAttributes audioAttributes);

        void onAvailableCommandsChanged(Commands commands);

        void onCues(CueGroup cueGroup);

        @UnstableApi
        @Deprecated
        void onCues(List<Cue> list);

        void onDeviceInfoChanged(DeviceInfo deviceInfo);

        void onDeviceVolumeChanged(int i10, boolean z6);

        void onEvents(Player player, Events events);

        void onIsLoadingChanged(boolean z6);

        void onIsPlayingChanged(boolean z6);

        @UnstableApi
        @Deprecated
        void onLoadingChanged(boolean z6);

        void onMaxSeekToPreviousPositionChanged(long j6);

        void onMediaItemTransition(@Nullable MediaItem mediaItem, int i10);

        void onMediaMetadataChanged(MediaMetadata mediaMetadata);

        @UnstableApi
        void onMetadata(Metadata metadata);

        void onPlayWhenReadyChanged(boolean z6, int i10);

        void onPlaybackParametersChanged(PlaybackParameters playbackParameters);

        void onPlaybackStateChanged(int i10);

        void onPlaybackSuppressionReasonChanged(int i10);

        void onPlayerError(PlaybackException playbackException);

        void onPlayerErrorChanged(@Nullable PlaybackException playbackException);

        @UnstableApi
        @Deprecated
        void onPlayerStateChanged(boolean z6, int i10);

        void onPlaylistMetadataChanged(MediaMetadata mediaMetadata);

        @UnstableApi
        @Deprecated
        void onPositionDiscontinuity(int i10);

        void onPositionDiscontinuity(PositionInfo positionInfo, PositionInfo positionInfo2, int i10);

        void onRenderedFirstFrame();

        void onRepeatModeChanged(int i10);

        void onSeekBackIncrementChanged(long j6);

        void onSeekForwardIncrementChanged(long j6);

        void onShuffleModeEnabledChanged(boolean z6);

        void onSkipSilenceEnabledChanged(boolean z6);

        void onSurfaceSizeChanged(int i10, int i11);

        void onTimelineChanged(Timeline timeline, int i10);

        void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters);

        void onTracksChanged(Tracks tracks);

        void onVideoSizeChanged(VideoSize videoSize);

        void onVolumeChanged(float f);
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface MediaItemTransitionReason {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface PlayWhenReadyChangeReason {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface PlaybackSuppressionReason {
    }

    public static final class PositionInfo implements Bundleable {
        public final int adGroupIndex;
        public final int adIndexInAdGroup;
        public final long contentPositionMs;

        @Nullable
        @UnstableApi
        public final MediaItem mediaItem;
        public final int mediaItemIndex;
        public final int periodIndex;

        @Nullable
        public final Object periodUid;
        public final long positionMs;

        @UnstableApi
        @Deprecated
        public final int windowIndex;

        @Nullable
        public final Object windowUid;
        private static final String FIELD_MEDIA_ITEM_INDEX = Util.z0(0);
        private static final String FIELD_MEDIA_ITEM = Util.z0(1);
        private static final String FIELD_PERIOD_INDEX = Util.z0(2);
        private static final String FIELD_POSITION_MS = Util.z0(3);
        private static final String FIELD_CONTENT_POSITION_MS = Util.z0(4);
        private static final String FIELD_AD_GROUP_INDEX = Util.z0(5);
        private static final String FIELD_AD_INDEX_IN_AD_GROUP = Util.z0(6);

        @UnstableApi
        public static final Bundleable.Creator<PositionInfo> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.d0
            @Override // androidx.media3.common.Bundleable.Creator
            public final Bundleable a(Bundle bundle) {
                return Player.PositionInfo.b(bundle);
            }
        };

        @UnstableApi
        @Deprecated
        public PositionInfo(@Nullable Object obj, int i10, @Nullable Object obj2, int i11, long j6, long j10, int i12, int i13) {
            this(obj, i10, MediaItem.EMPTY, obj2, i11, j6, j10, i12, i13);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || PositionInfo.class != obj.getClass()) {
                return false;
            }
            PositionInfo positionInfo = (PositionInfo) obj;
            return this.mediaItemIndex == positionInfo.mediaItemIndex && this.periodIndex == positionInfo.periodIndex && this.positionMs == positionInfo.positionMs && this.contentPositionMs == positionInfo.contentPositionMs && this.adGroupIndex == positionInfo.adGroupIndex && this.adIndexInAdGroup == positionInfo.adIndexInAdGroup && com.google.common.base.k.a(this.windowUid, positionInfo.windowUid) && com.google.common.base.k.a(this.periodUid, positionInfo.periodUid) && com.google.common.base.k.a(this.mediaItem, positionInfo.mediaItem);
        }

        @Override // androidx.media3.common.Bundleable
        @UnstableApi
        public Bundle toBundle() {
            return c(true, true);
        }

        @UnstableApi
        public PositionInfo(@Nullable Object obj, int i10, @Nullable MediaItem mediaItem, @Nullable Object obj2, int i11, long j6, long j10, int i12, int i13) {
            this.windowUid = obj;
            this.windowIndex = i10;
            this.mediaItemIndex = i10;
            this.mediaItem = mediaItem;
            this.periodUid = obj2;
            this.periodIndex = i11;
            this.positionMs = j6;
            this.contentPositionMs = j10;
            this.adGroupIndex = i12;
            this.adIndexInAdGroup = i13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static PositionInfo b(Bundle bundle) {
            int i10 = bundle.getInt(FIELD_MEDIA_ITEM_INDEX, 0);
            Bundle bundle2 = bundle.getBundle(FIELD_MEDIA_ITEM);
            return new PositionInfo(null, i10, bundle2 == null ? null : (MediaItem) MediaItem.CREATOR.a(bundle2), null, bundle.getInt(FIELD_PERIOD_INDEX, 0), bundle.getLong(FIELD_POSITION_MS, 0L), bundle.getLong(FIELD_CONTENT_POSITION_MS, 0L), bundle.getInt(FIELD_AD_GROUP_INDEX, -1), bundle.getInt(FIELD_AD_INDEX_IN_AD_GROUP, -1));
        }

        @UnstableApi
        public Bundle c(boolean z6, boolean z10) {
            Bundle bundle = new Bundle();
            bundle.putInt(FIELD_MEDIA_ITEM_INDEX, z10 ? this.mediaItemIndex : 0);
            MediaItem mediaItem = this.mediaItem;
            if (mediaItem != null && z6) {
                bundle.putBundle(FIELD_MEDIA_ITEM, mediaItem.toBundle());
            }
            bundle.putInt(FIELD_PERIOD_INDEX, z10 ? this.periodIndex : 0);
            bundle.putLong(FIELD_POSITION_MS, z6 ? this.positionMs : 0L);
            bundle.putLong(FIELD_CONTENT_POSITION_MS, z6 ? this.contentPositionMs : 0L);
            bundle.putInt(FIELD_AD_GROUP_INDEX, z6 ? this.adGroupIndex : -1);
            bundle.putInt(FIELD_AD_INDEX_IN_AD_GROUP, z6 ? this.adIndexInAdGroup : -1);
            return bundle;
        }

        public int hashCode() {
            return com.google.common.base.k.b(this.windowUid, Integer.valueOf(this.mediaItemIndex), this.mediaItem, this.periodUid, Integer.valueOf(this.periodIndex), Long.valueOf(this.positionMs), Long.valueOf(this.contentPositionMs), Integer.valueOf(this.adGroupIndex), Integer.valueOf(this.adIndexInAdGroup));
        }
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface RepeatMode {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface State {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface TimelineChangeReason {
    }

    long A();

    void B(int i10, int i11);

    long C();

    void E(TrackSelectionParameters trackSelectionParameters);

    void G();

    void J(MediaItem mediaItem);

    void K(Listener listener);

    void L(Listener listener);

    void N(int i10, List<MediaItem> list);

    void b(PlaybackParameters playbackParameters);

    long c();

    void clearVideoSurface();

    void clearVideoSurfaceView(@Nullable SurfaceView surfaceView);

    void clearVideoTextureView(@Nullable TextureView textureView);

    @Nullable
    PlaybackException d();

    Tracks e();

    boolean f();

    boolean g(int i10);

    long getContentPosition();

    int getCurrentAdGroupIndex();

    int getCurrentAdIndexInAdGroup();

    int getCurrentPeriodIndex();

    long getCurrentPosition();

    Timeline getCurrentTimeline();

    @UnstableApi
    @Deprecated
    int getCurrentWindowIndex();

    long getDuration();

    boolean getPlayWhenReady();

    PlaybackParameters getPlaybackParameters();

    int getPlaybackState();

    int getRepeatMode();

    boolean getShuffleModeEnabled();

    @FloatRange
    float getVolume();

    TrackSelectionParameters h();

    long i();

    boolean isPlaying();

    boolean isPlayingAd();

    long j();

    boolean k();

    long l();

    void m();

    boolean n();

    void o();

    CueGroup p();

    void pause();

    void play();

    void prepare();

    boolean q();

    int r();

    void release();

    Looper s();

    void seekTo(int i10, long j6);

    void seekTo(long j6);

    void seekToDefaultPosition();

    void setPlayWhenReady(boolean z6);

    void setRepeatMode(int i10);

    void setShuffleModeEnabled(boolean z6);

    void setVideoSurface(@Nullable Surface surface);

    void setVideoSurfaceView(@Nullable SurfaceView surfaceView);

    void setVideoTextureView(@Nullable TextureView textureView);

    void setVolume(@FloatRange float f);

    void stop();

    void t();

    Commands u();

    VideoSize v();

    boolean w();

    int x();

    void y();

    MediaMetadata z();
}
