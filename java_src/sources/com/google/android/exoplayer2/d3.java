package com.google.android.exoplayer2;

import android.os.Bundle;
import android.os.Looper;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface d3 {
    public static final int COMMAND_ADJUST_DEVICE_VOLUME = 26;
    public static final int COMMAND_CHANGE_MEDIA_ITEMS = 20;
    public static final int COMMAND_GET_AUDIO_ATTRIBUTES = 21;
    public static final int COMMAND_GET_CURRENT_MEDIA_ITEM = 16;
    public static final int COMMAND_GET_DEVICE_VOLUME = 23;
    public static final int COMMAND_GET_MEDIA_ITEMS_METADATA = 18;
    public static final int COMMAND_GET_TEXT = 28;
    public static final int COMMAND_GET_TIMELINE = 17;
    public static final int COMMAND_GET_TRACKS = 30;
    public static final int COMMAND_GET_VOLUME = 22;
    public static final int COMMAND_INVALID = -1;
    public static final int COMMAND_PLAY_PAUSE = 1;
    public static final int COMMAND_PREPARE = 2;
    public static final int COMMAND_SEEK_BACK = 11;
    public static final int COMMAND_SEEK_FORWARD = 12;
    public static final int COMMAND_SEEK_IN_CURRENT_MEDIA_ITEM = 5;

    @Deprecated
    public static final int COMMAND_SEEK_IN_CURRENT_WINDOW = 5;
    public static final int COMMAND_SEEK_TO_DEFAULT_POSITION = 4;
    public static final int COMMAND_SEEK_TO_MEDIA_ITEM = 10;
    public static final int COMMAND_SEEK_TO_NEXT = 9;
    public static final int COMMAND_SEEK_TO_NEXT_MEDIA_ITEM = 8;

    @Deprecated
    public static final int COMMAND_SEEK_TO_NEXT_WINDOW = 8;
    public static final int COMMAND_SEEK_TO_PREVIOUS = 7;
    public static final int COMMAND_SEEK_TO_PREVIOUS_MEDIA_ITEM = 6;

    @Deprecated
    public static final int COMMAND_SEEK_TO_PREVIOUS_WINDOW = 6;

    @Deprecated
    public static final int COMMAND_SEEK_TO_WINDOW = 10;
    public static final int COMMAND_SET_DEVICE_VOLUME = 25;
    public static final int COMMAND_SET_MEDIA_ITEM = 31;
    public static final int COMMAND_SET_MEDIA_ITEMS_METADATA = 19;
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
    public static final int PLAY_WHEN_READY_CHANGE_REASON_AUDIO_BECOMING_NOISY = 3;
    public static final int PLAY_WHEN_READY_CHANGE_REASON_AUDIO_FOCUS_LOSS = 2;
    public static final int PLAY_WHEN_READY_CHANGE_REASON_END_OF_MEDIA_ITEM = 5;
    public static final int PLAY_WHEN_READY_CHANGE_REASON_REMOTE = 4;
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

    public static final class b implements h {
        private static final int FIELD_COMMANDS = 0;
        private final com.google.android.exoplayer2.util.m flags;
        public static final b EMPTY = new a().e();
        public static final h.a<b> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.e3
            @Override // com.google.android.exoplayer2.h.a
            public final h a(Bundle bundle) {
                return d3.b.d(bundle);
            }
        };

        public static final class a {
            private static final int[] SUPPORTED_COMMANDS = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 31, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30};
            private final com.google.android.exoplayer2.util.m.b flagsBuilder = new com.google.android.exoplayer2.util.m.b();

            public a a(int i10) {
                this.flagsBuilder.a(i10);
                return this;
            }

            public a b(b bVar) {
                this.flagsBuilder.b(bVar.flags);
                return this;
            }

            public a c(int... iArr) {
                this.flagsBuilder.c(iArr);
                return this;
            }

            public a d(int i10, boolean z6) {
                this.flagsBuilder.d(i10, z6);
                return this;
            }

            public b e() {
                return new b(this.flagsBuilder.e());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b d(Bundle bundle) {
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(e(0));
            if (integerArrayList == null) {
                return EMPTY;
            }
            a aVar = new a();
            for (int i10 = 0; i10 < integerArrayList.size(); i10++) {
                aVar.a(integerArrayList.get(i10).intValue());
            }
            return aVar.e();
        }

        private b(com.google.android.exoplayer2.util.m mVar) {
            this.flags = mVar;
        }

        private static String e(int i10) {
            return Integer.toString(i10, 36);
        }

        public boolean c(int i10) {
            return this.flags.a(i10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                return this.flags.equals(((b) obj).flags);
            }
            return false;
        }

        public int hashCode() {
            return this.flags.hashCode();
        }

        @Override // com.google.android.exoplayer2.h
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            ArrayList<Integer> arrayList = new ArrayList<>();
            for (int i10 = 0; i10 < this.flags.d(); i10++) {
                arrayList.add(Integer.valueOf(this.flags.c(i10)));
            }
            bundle.putIntegerArrayList(e(0), arrayList);
            return bundle;
        }
    }

    public static final class c {
        private final com.google.android.exoplayer2.util.m flags;

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
            if (obj instanceof c) {
                return this.flags.equals(((c) obj).flags);
            }
            return false;
        }

        public int hashCode() {
            return this.flags.hashCode();
        }

        public c(com.google.android.exoplayer2.util.m mVar) {
            this.flags = mVar;
        }
    }

    public interface d {
        void B(n2 n2Var);

        void E(@Nullable z2 z2Var);

        void F(z2 z2Var);

        void H(b bVar);

        void J(o oVar);

        void M(com.google.android.exoplayer2.trackselection.z zVar);

        void N(e4 e4Var);

        void P(d3 d3Var, c cVar);

        void R(@Nullable i2 i2Var, int i10);

        void k(com.google.android.exoplayer2.video.a0 a0Var);

        void n(Metadata metadata);

        void o(c3 c3Var);

        @Deprecated
        void onCues(List<com.google.android.exoplayer2.text.b> list);

        void onDeviceVolumeChanged(int i10, boolean z6);

        void onIsLoadingChanged(boolean z6);

        void onIsPlayingChanged(boolean z6);

        @Deprecated
        void onLoadingChanged(boolean z6);

        void onPlayWhenReadyChanged(boolean z6, int i10);

        void onPlaybackStateChanged(int i10);

        void onPlaybackSuppressionReasonChanged(int i10);

        @Deprecated
        void onPlayerStateChanged(boolean z6, int i10);

        @Deprecated
        void onPositionDiscontinuity(int i10);

        void onRenderedFirstFrame();

        void onRepeatModeChanged(int i10);

        @Deprecated
        void onSeekProcessed();

        void onShuffleModeEnabledChanged(boolean z6);

        void onSkipSilenceEnabledChanged(boolean z6);

        void onSurfaceSizeChanged(int i10, int i11);

        void onVolumeChanged(float f);

        void x(com.google.android.exoplayer2.text.f fVar);

        void y(e eVar, e eVar2, int i10);

        void z(z3 z3Var, int i10);
    }

    public static final class e implements h {
        public static final h.a<e> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.g3
            @Override // com.google.android.exoplayer2.h.a
            public final h a(Bundle bundle) {
                return d3.e.b(bundle);
            }
        };
        private static final int FIELD_AD_GROUP_INDEX = 5;
        private static final int FIELD_AD_INDEX_IN_AD_GROUP = 6;
        private static final int FIELD_CONTENT_POSITION_MS = 4;
        private static final int FIELD_MEDIA_ITEM = 1;
        private static final int FIELD_MEDIA_ITEM_INDEX = 0;
        private static final int FIELD_PERIOD_INDEX = 2;
        private static final int FIELD_POSITION_MS = 3;
        public final int adGroupIndex;
        public final int adIndexInAdGroup;
        public final long contentPositionMs;

        @Nullable
        public final i2 mediaItem;
        public final int mediaItemIndex;
        public final int periodIndex;

        @Nullable
        public final Object periodUid;
        public final long positionMs;

        @Deprecated
        public final int windowIndex;

        @Nullable
        public final Object windowUid;

        @Deprecated
        public e(@Nullable Object obj, int i10, @Nullable Object obj2, int i11, long j6, long j10, int i12, int i13) {
            this(obj, i10, i2.EMPTY, obj2, i11, j6, j10, i12, i13);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static e b(Bundle bundle) {
            int i10 = bundle.getInt(c(0), -1);
            Bundle bundle2 = bundle.getBundle(c(1));
            return new e(null, i10, bundle2 == null ? null : (i2) i2.CREATOR.a(bundle2), null, bundle.getInt(c(2), -1), bundle.getLong(c(3), -9223372036854775807L), bundle.getLong(c(4), -9223372036854775807L), bundle.getInt(c(5), -1), bundle.getInt(c(6), -1));
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return this.mediaItemIndex == eVar.mediaItemIndex && this.periodIndex == eVar.periodIndex && this.positionMs == eVar.positionMs && this.contentPositionMs == eVar.contentPositionMs && this.adGroupIndex == eVar.adGroupIndex && this.adIndexInAdGroup == eVar.adIndexInAdGroup && com.google.common.base.k.a(this.windowUid, eVar.windowUid) && com.google.common.base.k.a(this.periodUid, eVar.periodUid) && com.google.common.base.k.a(this.mediaItem, eVar.mediaItem);
        }

        public e(@Nullable Object obj, int i10, @Nullable i2 i2Var, @Nullable Object obj2, int i11, long j6, long j10, int i12, int i13) {
            this.windowUid = obj;
            this.windowIndex = i10;
            this.mediaItemIndex = i10;
            this.mediaItem = i2Var;
            this.periodUid = obj2;
            this.periodIndex = i11;
            this.positionMs = j6;
            this.contentPositionMs = j10;
            this.adGroupIndex = i12;
            this.adIndexInAdGroup = i13;
        }

        private static String c(int i10) {
            return Integer.toString(i10, 36);
        }

        public int hashCode() {
            return com.google.common.base.k.b(this.windowUid, Integer.valueOf(this.mediaItemIndex), this.mediaItem, this.periodUid, Integer.valueOf(this.periodIndex), Long.valueOf(this.positionMs), Long.valueOf(this.contentPositionMs), Integer.valueOf(this.adGroupIndex), Integer.valueOf(this.adIndexInAdGroup));
        }

        @Override // com.google.android.exoplayer2.h
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(c(0), this.mediaItemIndex);
            if (this.mediaItem != null) {
                bundle.putBundle(c(1), this.mediaItem.toBundle());
            }
            bundle.putInt(c(2), this.periodIndex);
            bundle.putLong(c(3), this.positionMs);
            bundle.putLong(c(4), this.contentPositionMs);
            bundle.putInt(c(5), this.adGroupIndex);
            bundle.putInt(c(6), this.adIndexInAdGroup);
            return bundle;
        }
    }

    long A();

    void B(d dVar);

    void C(List<i2> list, boolean z6);

    void D(com.google.android.exoplayer2.trackselection.z zVar);

    void E(i2 i2Var);

    void F(d dVar);

    void b(c3 c3Var);

    long c();

    void clearVideoSurfaceView(@Nullable SurfaceView surfaceView);

    void clearVideoTextureView(@Nullable TextureView textureView);

    @Nullable
    z2 d();

    e4 e();

    boolean f();

    boolean g(int i10);

    long getContentPosition();

    int getCurrentAdGroupIndex();

    int getCurrentAdIndexInAdGroup();

    int getCurrentPeriodIndex();

    long getCurrentPosition();

    z3 getCurrentTimeline();

    long getDuration();

    boolean getPlayWhenReady();

    c3 getPlaybackParameters();

    int getPlaybackState();

    int getRepeatMode();

    boolean getShuffleModeEnabled();

    com.google.android.exoplayer2.trackselection.z h();

    long i();

    boolean isPlaying();

    boolean isPlayingAd();

    long j();

    boolean k();

    long l();

    void m();

    boolean n();

    void o();

    com.google.android.exoplayer2.text.f p();

    void pause();

    void play();

    void prepare();

    boolean q();

    int r();

    void release();

    Looper s();

    void seekTo(int i10, long j6);

    void seekTo(long j6);

    void setPlayWhenReady(boolean z6);

    void setRepeatMode(int i10);

    void setShuffleModeEnabled(boolean z6);

    void setVideoSurfaceView(@Nullable SurfaceView surfaceView);

    void setVideoTextureView(@Nullable TextureView textureView);

    void setVolume(@FloatRange float f);

    void t();

    b u();

    com.google.android.exoplayer2.video.a0 v();

    boolean w();

    int x();

    void y();

    n2 z();
}
