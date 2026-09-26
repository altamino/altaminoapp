package androidx.media3.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.res.ResourcesCompat;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.TrackSelectionOverride;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.RepeatModeUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
@UnstableApi
public class PlayerControlView extends FrameLayout {
    public static final int DEFAULT_REPEAT_TOGGLE_MODES = 0;
    public static final int DEFAULT_SHOW_TIMEOUT_MS = 5000;
    public static final int DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS = 200;
    private static final int MAX_UPDATE_INTERVAL_MS = 1000;
    public static final int MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR = 100;
    private static final float[] PLAYBACK_SPEEDS;
    private static final int SETTINGS_AUDIO_TRACK_SELECTION_POSITION = 1;
    private static final int SETTINGS_PLAYBACK_SPEED_POSITION = 0;
    private long[] adGroupTimesMs;

    @Nullable
    private final View audioTrackButton;
    private final AudioTrackSelectionAdapter audioTrackSelectionAdapter;
    private final float buttonAlphaDisabled;
    private final float buttonAlphaEnabled;
    private final ComponentListener componentListener;
    private final PlayerControlViewLayoutManager controlViewLayoutManager;
    private long currentWindowOffset;

    @Nullable
    private final TextView durationView;
    private long[] extraAdGroupTimesMs;
    private boolean[] extraPlayedAdGroups;

    @Nullable
    private final View fastForwardButton;

    @Nullable
    private final TextView fastForwardButtonTextView;
    private final StringBuilder formatBuilder;
    private final Formatter formatter;

    @Nullable
    private final ImageView fullScreenButton;
    private final String fullScreenEnterContentDescription;
    private final Drawable fullScreenEnterDrawable;
    private final String fullScreenExitContentDescription;
    private final Drawable fullScreenExitDrawable;
    private boolean isAttachedToWindow;
    private boolean isFullScreen;

    @Nullable
    private final ImageView minimalFullScreenButton;
    private boolean multiWindowTimeBar;
    private boolean needToHideBars;

    @Nullable
    private final View nextButton;

    @Nullable
    private OnFullScreenModeChangedListener onFullScreenModeChangedListener;
    private final Timeline.Period period;

    @Nullable
    private final View playPauseButton;
    private final PlaybackSpeedAdapter playbackSpeedAdapter;

    @Nullable
    private final View playbackSpeedButton;
    private boolean[] playedAdGroups;

    @Nullable
    private Player player;

    @Nullable
    private final TextView positionView;

    @Nullable
    private final View previousButton;

    @Nullable
    private ProgressUpdateListener progressUpdateListener;
    private final String repeatAllButtonContentDescription;
    private final Drawable repeatAllButtonDrawable;
    private final String repeatOffButtonContentDescription;
    private final Drawable repeatOffButtonDrawable;
    private final String repeatOneButtonContentDescription;
    private final Drawable repeatOneButtonDrawable;

    @Nullable
    private final ImageView repeatToggleButton;
    private int repeatToggleModes;
    private final Resources resources;

    @Nullable
    private final View rewindButton;

    @Nullable
    private final TextView rewindButtonTextView;
    private boolean scrubbing;
    private final SettingsAdapter settingsAdapter;

    @Nullable
    private final View settingsButton;
    private final RecyclerView settingsView;
    private final PopupWindow settingsWindow;
    private final int settingsWindowMargin;
    private boolean showMultiWindowTimeBar;
    private int showTimeoutMs;

    @Nullable
    private final ImageView shuffleButton;
    private final Drawable shuffleOffButtonDrawable;
    private final String shuffleOffContentDescription;
    private final Drawable shuffleOnButtonDrawable;
    private final String shuffleOnContentDescription;

    @Nullable
    private final ImageView subtitleButton;
    private final Drawable subtitleOffButtonDrawable;
    private final String subtitleOffContentDescription;
    private final Drawable subtitleOnButtonDrawable;
    private final String subtitleOnContentDescription;
    private final TextTrackSelectionAdapter textTrackSelectionAdapter;

    @Nullable
    private final TimeBar timeBar;
    private int timeBarMinUpdateIntervalMs;
    private final TrackNameProvider trackNameProvider;
    private final Runnable updateProgressAction;
    private final CopyOnWriteArrayList<VisibilityListener> visibilityListeners;

    @Nullable
    private final View vrButton;
    private final Timeline.Window window;

    /* JADX INFO: Access modifiers changed from: private */
    final class AudioTrackSelectionAdapter extends TrackSelectionAdapter {
        private AudioTrackSelectionAdapter() {
            super();
        }

        private boolean n(TrackSelectionParameters trackSelectionParameters) {
            for (int i10 = 0; i10 < this.tracks.size(); i10++) {
                if (trackSelectionParameters.overrides.containsKey(this.tracks.get(i10).trackGroup.b())) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(View view) {
            if (PlayerControlView.this.player == null || !PlayerControlView.this.player.g(29)) {
                return;
            }
            ((Player) Util.j(PlayerControlView.this.player)).E(PlayerControlView.this.player.h().A().B(1).K(1, false).A());
            PlayerControlView.this.settingsAdapter.j(1, PlayerControlView.this.getResources().getString(R.string.exo_track_selection_auto));
            PlayerControlView.this.settingsWindow.dismiss();
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter
        public void j(SubSettingViewHolder subSettingViewHolder) {
            subSettingViewHolder.textView.setText(R.string.exo_track_selection_auto);
            subSettingViewHolder.checkView.setVisibility(n(((Player) Assertions.e(PlayerControlView.this.player)).h()) ? 4 : 0);
            subSettingViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f728a.p(view);
                }
            });
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter
        public void l(String str) {
            PlayerControlView.this.settingsAdapter.j(1, str);
        }

        public void o(List<TrackInformation> list) {
            this.tracks = list;
            TrackSelectionParameters trackSelectionParametersH = ((Player) Assertions.e(PlayerControlView.this.player)).h();
            if (list.isEmpty()) {
                PlayerControlView.this.settingsAdapter.j(1, PlayerControlView.this.getResources().getString(R.string.exo_track_selection_none));
                return;
            }
            if (!n(trackSelectionParametersH)) {
                PlayerControlView.this.settingsAdapter.j(1, PlayerControlView.this.getResources().getString(R.string.exo_track_selection_auto));
                return;
            }
            for (int i10 = 0; i10 < list.size(); i10++) {
                TrackInformation trackInformation = list.get(i10);
                if (trackInformation.a()) {
                    PlayerControlView.this.settingsAdapter.j(1, trackInformation.trackName);
                    return;
                }
            }
        }
    }

    private final class ComponentListener implements Player.Listener, TimeBar.OnScrubListener, View.OnClickListener, PopupWindow.OnDismissListener {
        private ComponentListener() {
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
            androidx.media3.common.c0.a(this, audioAttributes);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
            androidx.media3.common.c0.c(this, commands);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onCues(CueGroup cueGroup) {
            androidx.media3.common.c0.d(this, cueGroup);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
            androidx.media3.common.c0.f(this, deviceInfo);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onDeviceVolumeChanged(int i10, boolean z6) {
            androidx.media3.common.c0.g(this, i10, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onEvents(Player player, Player.Events events) {
            if (events.b(4, 5, 13)) {
                PlayerControlView.this.t0();
            }
            if (events.b(4, 5, 7, 13)) {
                PlayerControlView.this.v0();
            }
            if (events.b(8, 13)) {
                PlayerControlView.this.w0();
            }
            if (events.b(9, 13)) {
                PlayerControlView.this.A0();
            }
            if (events.b(8, 9, 11, 0, 16, 17, 13)) {
                PlayerControlView.this.s0();
            }
            if (events.b(11, 0, 13)) {
                PlayerControlView.this.B0();
            }
            if (events.b(12, 13)) {
                PlayerControlView.this.u0();
            }
            if (events.b(2, 13)) {
                PlayerControlView.this.C0();
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onIsLoadingChanged(boolean z6) {
            androidx.media3.common.c0.i(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onIsPlayingChanged(boolean z6) {
            androidx.media3.common.c0.j(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onLoadingChanged(boolean z6) {
            androidx.media3.common.c0.k(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j6) {
            androidx.media3.common.c0.l(this, j6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i10) {
            androidx.media3.common.c0.m(this, mediaItem, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
            androidx.media3.common.c0.n(this, mediaMetadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onMetadata(Metadata metadata) {
            androidx.media3.common.c0.o(this, metadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlayWhenReadyChanged(boolean z6, int i10) {
            androidx.media3.common.c0.p(this, z6, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
            androidx.media3.common.c0.q(this, playbackParameters);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlaybackStateChanged(int i10) {
            androidx.media3.common.c0.r(this, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i10) {
            androidx.media3.common.c0.s(this, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlayerError(PlaybackException playbackException) {
            androidx.media3.common.c0.t(this, playbackException);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
            androidx.media3.common.c0.u(this, playbackException);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlayerStateChanged(boolean z6, int i10) {
            androidx.media3.common.c0.v(this, z6, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
            androidx.media3.common.c0.w(this, mediaMetadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPositionDiscontinuity(int i10) {
            androidx.media3.common.c0.x(this, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onRenderedFirstFrame() {
            androidx.media3.common.c0.z(this);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onRepeatModeChanged(int i10) {
            androidx.media3.common.c0.A(this, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onSeekBackIncrementChanged(long j6) {
            androidx.media3.common.c0.B(this, j6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onSeekForwardIncrementChanged(long j6) {
            androidx.media3.common.c0.C(this, j6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onShuffleModeEnabledChanged(boolean z6) {
            androidx.media3.common.c0.D(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z6) {
            androidx.media3.common.c0.E(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onSurfaceSizeChanged(int i10, int i11) {
            androidx.media3.common.c0.F(this, i10, i11);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onTimelineChanged(Timeline timeline, int i10) {
            androidx.media3.common.c0.G(this, timeline, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
            androidx.media3.common.c0.H(this, trackSelectionParameters);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onTracksChanged(Tracks tracks) {
            androidx.media3.common.c0.I(this, tracks);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
            androidx.media3.common.c0.J(this, videoSize);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onVolumeChanged(float f) {
            androidx.media3.common.c0.K(this, f);
        }

        @Override // androidx.media3.ui.TimeBar.OnScrubListener
        public void j(TimeBar timeBar, long j6) {
            PlayerControlView.this.scrubbing = true;
            if (PlayerControlView.this.positionView != null) {
                PlayerControlView.this.positionView.setText(Util.k0(PlayerControlView.this.formatBuilder, PlayerControlView.this.formatter, j6));
            }
            PlayerControlView.this.controlViewLayoutManager.V();
        }

        @Override // androidx.media3.ui.TimeBar.OnScrubListener
        public void o(TimeBar timeBar, long j6) {
            if (PlayerControlView.this.positionView != null) {
                PlayerControlView.this.positionView.setText(Util.k0(PlayerControlView.this.formatBuilder, PlayerControlView.this.formatter, j6));
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Player player = PlayerControlView.this.player;
            if (player == null) {
                return;
            }
            PlayerControlView.this.controlViewLayoutManager.W();
            if (PlayerControlView.this.nextButton == view) {
                if (player.g(9)) {
                    player.t();
                    return;
                }
                return;
            }
            if (PlayerControlView.this.previousButton == view) {
                if (player.g(7)) {
                    player.o();
                    return;
                }
                return;
            }
            if (PlayerControlView.this.fastForwardButton == view) {
                if (player.getPlaybackState() == 4 || !player.g(12)) {
                    return;
                }
                player.m();
                return;
            }
            if (PlayerControlView.this.rewindButton == view) {
                if (player.g(11)) {
                    player.y();
                    return;
                }
                return;
            }
            if (PlayerControlView.this.playPauseButton == view) {
                Util.t0(player);
                return;
            }
            if (PlayerControlView.this.repeatToggleButton == view) {
                if (player.g(15)) {
                    player.setRepeatMode(RepeatModeUtil.a(player.getRepeatMode(), PlayerControlView.this.repeatToggleModes));
                    return;
                }
                return;
            }
            if (PlayerControlView.this.shuffleButton == view) {
                if (player.g(14)) {
                    player.setShuffleModeEnabled(!player.getShuffleModeEnabled());
                    return;
                }
                return;
            }
            if (PlayerControlView.this.settingsButton == view) {
                PlayerControlView.this.controlViewLayoutManager.V();
                PlayerControlView playerControlView = PlayerControlView.this;
                playerControlView.U(playerControlView.settingsAdapter, PlayerControlView.this.settingsButton);
                return;
            }
            if (PlayerControlView.this.playbackSpeedButton == view) {
                PlayerControlView.this.controlViewLayoutManager.V();
                PlayerControlView playerControlView2 = PlayerControlView.this;
                playerControlView2.U(playerControlView2.playbackSpeedAdapter, PlayerControlView.this.playbackSpeedButton);
            } else if (PlayerControlView.this.audioTrackButton == view) {
                PlayerControlView.this.controlViewLayoutManager.V();
                PlayerControlView playerControlView3 = PlayerControlView.this;
                playerControlView3.U(playerControlView3.audioTrackSelectionAdapter, PlayerControlView.this.audioTrackButton);
            } else if (PlayerControlView.this.subtitleButton == view) {
                PlayerControlView.this.controlViewLayoutManager.V();
                PlayerControlView playerControlView4 = PlayerControlView.this;
                playerControlView4.U(playerControlView4.textTrackSelectionAdapter, PlayerControlView.this.subtitleButton);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onCues(List list) {
            androidx.media3.common.c0.e(this, list);
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            if (PlayerControlView.this.needToHideBars) {
                PlayerControlView.this.controlViewLayoutManager.W();
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i10) {
            androidx.media3.common.c0.y(this, positionInfo, positionInfo2, i10);
        }

        @Override // androidx.media3.ui.TimeBar.OnScrubListener
        public void q(TimeBar timeBar, long j6, boolean z6) {
            PlayerControlView.this.scrubbing = false;
            if (!z6 && PlayerControlView.this.player != null) {
                PlayerControlView playerControlView = PlayerControlView.this;
                playerControlView.k0(playerControlView.player, j6);
            }
            PlayerControlView.this.controlViewLayoutManager.W();
        }
    }

    @Deprecated
    public interface OnFullScreenModeChangedListener {
        void j(boolean z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class PlaybackSpeedAdapter extends RecyclerView.Adapter<SubSettingViewHolder> {
        private final String[] playbackSpeedTexts;
        private final float[] playbackSpeeds;
        private int selectedIndex;

        public void l(float f) {
            int i10 = 0;
            float f6 = Float.MAX_VALUE;
            int i11 = 0;
            while (true) {
                float[] fArr = this.playbackSpeeds;
                if (i10 >= fArr.length) {
                    this.selectedIndex = i11;
                    return;
                }
                float fAbs = Math.abs(f - fArr[i10]);
                if (fAbs < f6) {
                    i11 = i10;
                    f6 = fAbs;
                }
                i10++;
            }
        }

        public PlaybackSpeedAdapter(String[] strArr, float[] fArr) {
            this.playbackSpeedTexts = strArr;
            this.playbackSpeeds = fArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i(int i10, View view) {
            if (i10 != this.selectedIndex) {
                PlayerControlView.this.setPlaybackSpeed(this.playbackSpeeds[i10]);
            }
            PlayerControlView.this.settingsWindow.dismiss();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.playbackSpeedTexts.length;
        }

        public String h() {
            return this.playbackSpeedTexts[this.selectedIndex];
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(SubSettingViewHolder subSettingViewHolder, final int i10) {
            String[] strArr = this.playbackSpeedTexts;
            if (i10 < strArr.length) {
                subSettingViewHolder.textView.setText(strArr[i10]);
            }
            if (i10 == this.selectedIndex) {
                subSettingViewHolder.itemView.setSelected(true);
                subSettingViewHolder.checkView.setVisibility(0);
            } else {
                subSettingViewHolder.itemView.setSelected(false);
                subSettingViewHolder.checkView.setVisibility(4);
            }
            subSettingViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f729a.i(i10, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public SubSettingViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return new SubSettingViewHolder(LayoutInflater.from(PlayerControlView.this.getContext()).inflate(R.layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }
    }

    public interface ProgressUpdateListener {
        void a(long j6, long j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class SettingViewHolder extends RecyclerView.ViewHolder {
        private final ImageView iconView;
        private final TextView mainTextView;
        private final TextView subTextView;

        public SettingViewHolder(View view) {
            super(view);
            if (Util.SDK_INT < 26) {
                view.setFocusable(true);
            }
            this.mainTextView = (TextView) view.findViewById(R.id.exo_main_text);
            this.subTextView = (TextView) view.findViewById(R.id.exo_sub_text);
            this.iconView = (ImageView) view.findViewById(R.id.exo_icon);
            view.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f731a.lambda$new$0(view2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            PlayerControlView.this.h0(getAdapterPosition());
        }
    }

    private class SettingsAdapter extends RecyclerView.Adapter<SettingViewHolder> {
        private final Drawable[] iconIds;
        private final String[] mainTexts;
        private final String[] subTexts;

        public boolean g() {
            return k(1) || k(0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        public SettingsAdapter(String[] strArr, Drawable[] drawableArr) {
            this.mainTexts = strArr;
            this.subTexts = new String[strArr.length];
            this.iconIds = drawableArr;
        }

        private boolean k(int i10) {
            if (PlayerControlView.this.player == null) {
                return false;
            }
            if (i10 == 0) {
                return PlayerControlView.this.player.g(13);
            }
            if (i10 != 1) {
                return true;
            }
            return PlayerControlView.this.player.g(30) && PlayerControlView.this.player.g(29);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.mainTexts.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public SettingViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return PlayerControlView.this.new SettingViewHolder(LayoutInflater.from(PlayerControlView.this.getContext()).inflate(R.layout.exo_styled_settings_list_item, viewGroup, false));
        }

        public void j(int i10, String str) {
            this.subTexts[i10] = str;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(SettingViewHolder settingViewHolder, int i10) {
            if (k(i10)) {
                settingViewHolder.itemView.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            } else {
                settingViewHolder.itemView.setLayoutParams(new RecyclerView.LayoutParams(0, 0));
            }
            settingViewHolder.mainTextView.setText(this.mainTexts[i10]);
            if (this.subTexts[i10] == null) {
                settingViewHolder.subTextView.setVisibility(8);
            } else {
                settingViewHolder.subTextView.setText(this.subTexts[i10]);
            }
            if (this.iconIds[i10] == null) {
                settingViewHolder.iconView.setVisibility(8);
            } else {
                settingViewHolder.iconView.setImageDrawable(this.iconIds[i10]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class TextTrackSelectionAdapter extends TrackSelectionAdapter {
        private TextTrackSelectionAdapter() {
            super();
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter
        public void l(String str) {
        }

        public void n(List<TrackInformation> list) {
            boolean z6 = false;
            for (int i10 = 0; i10 < list.size(); i10++) {
                if (list.get(i10).a()) {
                    z6 = true;
                    break;
                }
            }
            if (PlayerControlView.this.subtitleButton != null) {
                ImageView imageView = PlayerControlView.this.subtitleButton;
                PlayerControlView playerControlView = PlayerControlView.this;
                imageView.setImageDrawable(z6 ? playerControlView.subtitleOnButtonDrawable : playerControlView.subtitleOffButtonDrawable);
                PlayerControlView.this.subtitleButton.setContentDescription(z6 ? PlayerControlView.this.subtitleOnContentDescription : PlayerControlView.this.subtitleOffContentDescription);
            }
            this.tracks = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(View view) {
            if (PlayerControlView.this.player == null || !PlayerControlView.this.player.g(29)) {
                return;
            }
            PlayerControlView.this.player.E(PlayerControlView.this.player.h().A().B(3).G(-3).A());
            PlayerControlView.this.settingsWindow.dismiss();
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter
        public void j(SubSettingViewHolder subSettingViewHolder) {
            boolean z6;
            subSettingViewHolder.textView.setText(R.string.exo_track_selection_none);
            int i10 = 0;
            while (true) {
                if (i10 >= this.tracks.size()) {
                    z6 = true;
                    break;
                } else {
                    if (this.tracks.get(i10).a()) {
                        z6 = false;
                        break;
                    }
                    i10++;
                }
            }
            subSettingViewHolder.checkView.setVisibility(z6 ? 0 : 4);
            subSettingViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f732a.o(view);
                }
            });
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(SubSettingViewHolder subSettingViewHolder, int i10) {
            int i11;
            super.onBindViewHolder(subSettingViewHolder, i10);
            if (i10 > 0) {
                TrackInformation trackInformation = this.tracks.get(i10 - 1);
                View view = subSettingViewHolder.checkView;
                if (trackInformation.a()) {
                    i11 = 0;
                } else {
                    i11 = 4;
                }
                view.setVisibility(i11);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class TrackInformation {
        public final Tracks.Group trackGroup;
        public final int trackIndex;
        public final String trackName;

        public boolean a() {
            return this.trackGroup.i(this.trackIndex);
        }

        public TrackInformation(Tracks tracks, int i10, int i11, String str) {
            this.trackGroup = tracks.b().get(i10);
            this.trackIndex = i11;
            this.trackName = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    abstract class TrackSelectionAdapter extends RecyclerView.Adapter<SubSettingViewHolder> {
        protected List<TrackInformation> tracks = new ArrayList();

        protected abstract void j(SubSettingViewHolder subSettingViewHolder);

        protected abstract void l(String str);

        protected TrackSelectionAdapter() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h(Player player, TrackGroup trackGroup, TrackInformation trackInformation, View view) {
            if (player.g(29)) {
                player.E(player.h().A().H(new TrackSelectionOverride(trackGroup, com.google.common.collect.a0.y(Integer.valueOf(trackInformation.trackIndex)))).K(trackInformation.trackGroup.e(), false).A());
                l(trackInformation.trackName);
                PlayerControlView.this.settingsWindow.dismiss();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.tracks.isEmpty()) {
                return 0;
            }
            return this.tracks.size() + 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: i */
        public void onBindViewHolder(SubSettingViewHolder subSettingViewHolder, int i10) {
            final Player player = PlayerControlView.this.player;
            if (player == null) {
                return;
            }
            if (i10 == 0) {
                j(subSettingViewHolder);
                return;
            }
            final TrackInformation trackInformation = this.tracks.get(i10 - 1);
            final TrackGroup trackGroupB = trackInformation.trackGroup.b();
            boolean z6 = player.h().overrides.get(trackGroupB) != null && trackInformation.a();
            subSettingViewHolder.textView.setText(trackInformation.trackName);
            subSettingViewHolder.checkView.setVisibility(z6 ? 0 : 4);
            subSettingViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f733a.h(player, trackGroupB, trackInformation, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public SubSettingViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return new SubSettingViewHolder(LayoutInflater.from(PlayerControlView.this.getContext()).inflate(R.layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }

        protected void clear() {
            this.tracks = Collections.emptyList();
        }
    }

    @Deprecated
    public interface VisibilityListener {
        void onVisibilityChange(int i10);
    }

    public PlayerControlView(Context context) {
        this(context, null);
    }

    @SuppressLint({"InlinedApi"})
    private static boolean c0(int i10) {
        return i10 == 90 || i10 == 89 || i10 == 85 || i10 == 79 || i10 == 126 || i10 == 127 || i10 == 87 || i10 == 88;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g0(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        int i18 = i13 - i11;
        int i19 = i17 - i15;
        if (!(i12 - i10 == i16 - i14 && i18 == i19) && this.settingsWindow.isShowing()) {
            z0();
            this.settingsWindow.update(view, (getWidth() - this.settingsWindow.getWidth()) - this.settingsWindowMargin, (-this.settingsWindow.getHeight()) - this.settingsWindowMargin, -1, -1);
        }
    }

    @Nullable
    public Player getPlayer() {
        return this.player;
    }

    public int getRepeatToggleModes() {
        return this.repeatToggleModes;
    }

    public int getShowTimeoutMs() {
        return this.showTimeoutMs;
    }

    public void setProgressUpdateListener(@Nullable ProgressUpdateListener progressUpdateListener) {
        this.progressUpdateListener = progressUpdateListener;
    }

    private static class SubSettingViewHolder extends RecyclerView.ViewHolder {
        public final View checkView;
        public final TextView textView;

        public SubSettingViewHolder(View view) {
            super(view);
            if (Util.SDK_INT < 26) {
                view.setFocusable(true);
            }
            this.textView = (TextView) view.findViewById(R.id.exo_text);
            this.checkView = view.findViewById(R.id.exo_check);
        }
    }

    static {
        MediaLibraryInfo.a("media3.ui");
        PLAYBACK_SPEEDS = new float[]{0.25f, 0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 2.0f};
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:44:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:62:0x0107  */
    /* JADX WARN: Code duplicated, block: B:79:0x00dd A[SYNTHETIC] */
    public void B0() {
        long jK0;
        int i10;
        Timeline.Window window;
        long jR;
        long[] jArr;
        int length;
        Player player = this.player;
        if (player == null) {
            return;
        }
        boolean z6 = true;
        this.multiWindowTimeBar = this.showMultiWindowTimeBar && S(player, this.window);
        this.currentWindowOffset = 0L;
        Timeline currentTimeline = player.g(17) ? player.getCurrentTimeline() : Timeline.EMPTY;
        if (currentTimeline.u()) {
            if (player.g(16)) {
                long jC = player.C();
                if (jC != -9223372036854775807L) {
                    jK0 = Util.K0(jC);
                } else {
                    jK0 = 0;
                }
            } else {
                jK0 = 0;
            }
            i10 = 0;
        } else {
            int iX = player.x();
            boolean z10 = this.multiWindowTimeBar;
            int i11 = z10 ? 0 : iX;
            int iT = z10 ? currentTimeline.t() - 1 : iX;
            long j6 = 0;
            i10 = 0;
            while (i11 <= iT) {
                if (i11 == iX) {
                    this.currentWindowOffset = Util.q1(j6);
                }
                currentTimeline.r(i11, this.window);
                Timeline.Window window2 = this.window;
                if (window2.durationUs == -9223372036854775807L) {
                    Assertions.g(this.multiWindowTimeBar ^ z6);
                    break;
                }
                int i12 = window2.firstPeriodIndex;
                while (true) {
                    window = this.window;
                    if (i12 <= window.lastPeriodIndex) {
                        currentTimeline.j(i12, this.period);
                        int iF = this.period.f();
                        for (int iS = this.period.s(); iS < iF; iS++) {
                            long jI = this.period.i(iS);
                            if (jI == Long.MIN_VALUE) {
                                long j10 = this.period.durationUs;
                                if (j10 != -9223372036854775807L) {
                                    jI = j10;
                                    jR = jI + this.period.r();
                                    if (jR >= 0) {
                                        jArr = this.adGroupTimesMs;
                                        if (i10 == jArr.length) {
                                            if (jArr.length == 0) {
                                                length = 1;
                                            } else {
                                                length = jArr.length * 2;
                                            }
                                            this.adGroupTimesMs = Arrays.copyOf(jArr, length);
                                            this.playedAdGroups = Arrays.copyOf(this.playedAdGroups, length);
                                        }
                                        this.adGroupTimesMs[i10] = Util.q1(j6 + jR);
                                        this.playedAdGroups[i10] = this.period.t(iS);
                                        i10++;
                                    }
                                }
                            } else {
                                jR = jI + this.period.r();
                                if (jR >= 0) {
                                    jArr = this.adGroupTimesMs;
                                    if (i10 == jArr.length) {
                                        if (jArr.length == 0) {
                                            length = 1;
                                        } else {
                                            length = jArr.length * 2;
                                        }
                                        this.adGroupTimesMs = Arrays.copyOf(jArr, length);
                                        this.playedAdGroups = Arrays.copyOf(this.playedAdGroups, length);
                                    }
                                    this.adGroupTimesMs[i10] = Util.q1(j6 + jR);
                                    this.playedAdGroups[i10] = this.period.t(iS);
                                    i10++;
                                }
                            }
                        }
                        i12++;
                    }
                }
                j6 += window.durationUs;
                i11++;
                z6 = true;
            }
            jK0 = j6;
        }
        long jQ1 = Util.q1(jK0);
        TextView textView = this.durationView;
        if (textView != null) {
            textView.setText(Util.k0(this.formatBuilder, this.formatter, jQ1));
        }
        TimeBar timeBar = this.timeBar;
        if (timeBar != null) {
            timeBar.setDuration(jQ1);
            int length2 = this.extraAdGroupTimesMs.length;
            int i13 = i10 + length2;
            long[] jArr2 = this.adGroupTimesMs;
            if (i13 > jArr2.length) {
                this.adGroupTimesMs = Arrays.copyOf(jArr2, i13);
                this.playedAdGroups = Arrays.copyOf(this.playedAdGroups, i13);
            }
            System.arraycopy(this.extraAdGroupTimesMs, 0, this.adGroupTimesMs, i10, length2);
            System.arraycopy(this.extraPlayedAdGroups, 0, this.playedAdGroups, i10, length2);
            this.timeBar.setAdGroupTimesMs(this.adGroupTimesMs, this.playedAdGroups, i13);
        }
        v0();
    }

    private static boolean S(Player player, Timeline.Window window) {
        Timeline currentTimeline;
        int iT;
        if (!player.g(17) || (iT = (currentTimeline = player.getCurrentTimeline()).t()) <= 1 || iT > 100) {
            return false;
        }
        for (int i10 = 0; i10 < iT; i10++) {
            if (currentTimeline.r(i10, window).durationUs == -9223372036854775807L) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(RecyclerView.Adapter<?> adapter, View view) {
        this.settingsView.setAdapter(adapter);
        z0();
        this.needToHideBars = false;
        this.settingsWindow.dismiss();
        this.needToHideBars = true;
        this.settingsWindow.showAsDropDown(view, (getWidth() - this.settingsWindow.getWidth()) - this.settingsWindowMargin, (-this.settingsWindow.getHeight()) - this.settingsWindowMargin);
    }

    private com.google.common.collect.a0<TrackInformation> V(Tracks tracks, int i10) {
        com.google.common.collect.a0.a aVar = new com.google.common.collect.a0.a();
        com.google.common.collect.a0<Tracks.Group> a0VarB = tracks.b();
        for (int i11 = 0; i11 < a0VarB.size(); i11++) {
            Tracks.Group group = a0VarB.get(i11);
            if (group.e() == i10) {
                for (int i12 = 0; i12 < group.length; i12++) {
                    if (group.j(i12)) {
                        Format formatC = group.c(i12);
                        if ((formatC.selectionFlags & 2) == 0) {
                            aVar.d(new TrackInformation(tracks, i11, i12, this.trackNameProvider.a(formatC)));
                        }
                    }
                }
            }
        }
        return aVar.k();
    }

    private static int W(TypedArray typedArray, int i10) {
        return typedArray.getInt(R.styleable.PlayerControlView_repeat_toggle_modes, i10);
    }

    private void Z() {
        this.textTrackSelectionAdapter.clear();
        this.audioTrackSelectionAdapter.clear();
        Player player = this.player;
        if (player != null && player.g(30) && this.player.g(29)) {
            Tracks tracksE = this.player.e();
            this.audioTrackSelectionAdapter.o(V(tracksE, 1));
            if (this.controlViewLayoutManager.A(this.subtitleButton)) {
                this.textTrackSelectionAdapter.n(V(tracksE, 3));
            } else {
                this.textTrackSelectionAdapter.n(com.google.common.collect.a0.x());
            }
        }
    }

    private static void a0(View view, View.OnClickListener onClickListener) {
        if (view == null) {
            return;
        }
        view.setVisibility(8);
        view.setOnClickListener(onClickListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0(View view) {
        if (this.onFullScreenModeChangedListener == null) {
            return;
        }
        boolean z6 = !this.isFullScreen;
        this.isFullScreen = z6;
        q0(this.fullScreenButton, z6);
        q0(this.minimalFullScreenButton, this.isFullScreen);
        OnFullScreenModeChangedListener onFullScreenModeChangedListener = this.onFullScreenModeChangedListener;
        if (onFullScreenModeChangedListener != null) {
            onFullScreenModeChangedListener.j(this.isFullScreen);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h0(int i10) {
        if (i10 == 0) {
            U(this.playbackSpeedAdapter, (View) Assertions.e(this.settingsButton));
        } else if (i10 == 1) {
            U(this.audioTrackSelectionAdapter, (View) Assertions.e(this.settingsButton));
        } else {
            this.settingsWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0(Player player, long j6) {
        if (this.multiWindowTimeBar) {
            if (player.g(17) && player.g(10)) {
                Timeline currentTimeline = player.getCurrentTimeline();
                int iT = currentTimeline.t();
                int i10 = 0;
                while (true) {
                    long jF = currentTimeline.r(i10, this.window).f();
                    if (j6 < jF) {
                        break;
                    }
                    if (i10 == iT - 1) {
                        j6 = jF;
                        break;
                    } else {
                        j6 -= jF;
                        i10++;
                    }
                }
                player.seekTo(i10, j6);
            }
        } else if (player.g(5)) {
            player.seekTo(j6);
        }
        v0();
    }

    private boolean l0() {
        Player player = this.player;
        return (player == null || !player.g(1) || (this.player.g(17) && this.player.getCurrentTimeline().u())) ? false : true;
    }

    private void o0(boolean z6, @Nullable View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z6);
        view.setAlpha(z6 ? this.buttonAlphaEnabled : this.buttonAlphaDisabled);
    }

    private void p0() {
        Player player = this.player;
        int iJ = (int) ((player != null ? player.j() : 15000L) / 1000);
        TextView textView = this.fastForwardButtonTextView;
        if (textView != null) {
            textView.setText(String.valueOf(iJ));
        }
        View view = this.fastForwardButton;
        if (view != null) {
            view.setContentDescription(this.resources.getQuantityString(R.plurals.exo_controls_fastforward_by_amount_description, iJ, Integer.valueOf(iJ)));
        }
    }

    private void q0(@Nullable ImageView imageView, boolean z6) {
        if (imageView == null) {
            return;
        }
        if (z6) {
            imageView.setImageDrawable(this.fullScreenExitDrawable);
            imageView.setContentDescription(this.fullScreenExitContentDescription);
        } else {
            imageView.setImageDrawable(this.fullScreenEnterDrawable);
            imageView.setContentDescription(this.fullScreenEnterContentDescription);
        }
    }

    private static void r0(@Nullable View view, boolean z6) {
        if (view == null) {
            return;
        }
        if (z6) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaybackSpeed(float f) {
        Player player = this.player;
        if (player == null || !player.g(13)) {
            return;
        }
        Player player2 = this.player;
        player2.b(player2.getPlaybackParameters().d(f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0() {
        Player player = this.player;
        if (player == null) {
            return;
        }
        this.playbackSpeedAdapter.l(player.getPlaybackParameters().speed);
        this.settingsAdapter.j(0, this.playbackSpeedAdapter.h());
        y0();
    }

    private void x0() {
        Player player = this.player;
        int iA = (int) ((player != null ? player.A() : 5000L) / 1000);
        TextView textView = this.rewindButtonTextView;
        if (textView != null) {
            textView.setText(String.valueOf(iA));
        }
        View view = this.rewindButton;
        if (view != null) {
            view.setContentDescription(this.resources.getQuantityString(R.plurals.exo_controls_rewind_by_amount_description, iA, Integer.valueOf(iA)));
        }
    }

    private void y0() {
        o0(this.settingsAdapter.g(), this.settingsButton);
    }

    private void z0() {
        this.settingsView.measure(0, 0);
        this.settingsWindow.setWidth(Math.min(this.settingsView.getMeasuredWidth(), getWidth() - (this.settingsWindowMargin * 2)));
        this.settingsWindow.setHeight(Math.min(getHeight() - (this.settingsWindowMargin * 2), this.settingsView.getMeasuredHeight()));
    }

    public void X() {
        this.controlViewLayoutManager.C();
    }

    public void Y() {
        this.controlViewLayoutManager.F();
    }

    public boolean b0() {
        return this.controlViewLayoutManager.I();
    }

    void e0() {
        Iterator<VisibilityListener> it = this.visibilityListeners.iterator();
        while (it.hasNext()) {
            it.next().onVisibilityChange(getVisibility());
        }
    }

    public boolean getShowShuffleButton() {
        return this.controlViewLayoutManager.A(this.shuffleButton);
    }

    public boolean getShowSubtitleButton() {
        return this.controlViewLayoutManager.A(this.subtitleButton);
    }

    public boolean getShowVrButton() {
        return this.controlViewLayoutManager.A(this.vrButton);
    }

    @Deprecated
    public void i0(VisibilityListener visibilityListener) {
        this.visibilityListeners.remove(visibilityListener);
    }

    void j0() {
        View view = this.playPauseButton;
        if (view != null) {
            view.requestFocus();
        }
    }

    public void m0() {
        this.controlViewLayoutManager.b0();
    }

    public void setAnimationEnabled(boolean z6) {
        this.controlViewLayoutManager.X(z6);
    }

    @Deprecated
    public void setOnFullScreenModeChangedListener(@Nullable OnFullScreenModeChangedListener onFullScreenModeChangedListener) {
        this.onFullScreenModeChangedListener = onFullScreenModeChangedListener;
        r0(this.fullScreenButton, onFullScreenModeChangedListener != null);
        r0(this.minimalFullScreenButton, onFullScreenModeChangedListener != null);
    }

    public void setRepeatToggleModes(int i10) {
        this.repeatToggleModes = i10;
        Player player = this.player;
        if (player != null && player.g(15)) {
            int repeatMode = this.player.getRepeatMode();
            if (i10 == 0 && repeatMode != 0) {
                this.player.setRepeatMode(0);
            } else if (i10 == 1 && repeatMode == 2) {
                this.player.setRepeatMode(1);
            } else if (i10 == 2 && repeatMode == 1) {
                this.player.setRepeatMode(2);
            }
        }
        this.controlViewLayoutManager.Y(this.repeatToggleButton, i10 != 0);
        w0();
    }

    public void setShowFastForwardButton(boolean z6) {
        this.controlViewLayoutManager.Y(this.fastForwardButton, z6);
        s0();
    }

    public void setShowMultiWindowTimeBar(boolean z6) {
        this.showMultiWindowTimeBar = z6;
        B0();
    }

    public void setShowNextButton(boolean z6) {
        this.controlViewLayoutManager.Y(this.nextButton, z6);
        s0();
    }

    public void setShowPreviousButton(boolean z6) {
        this.controlViewLayoutManager.Y(this.previousButton, z6);
        s0();
    }

    public void setShowRewindButton(boolean z6) {
        this.controlViewLayoutManager.Y(this.rewindButton, z6);
        s0();
    }

    public void setShowShuffleButton(boolean z6) {
        this.controlViewLayoutManager.Y(this.shuffleButton, z6);
        A0();
    }

    public void setShowSubtitleButton(boolean z6) {
        this.controlViewLayoutManager.Y(this.subtitleButton, z6);
    }

    public void setShowTimeoutMs(int i10) {
        this.showTimeoutMs = i10;
        if (b0()) {
            this.controlViewLayoutManager.W();
        }
    }

    public void setShowVrButton(boolean z6) {
        this.controlViewLayoutManager.Y(this.vrButton, z6);
    }

    public void setTimeBarMinUpdateInterval(int i10) {
        this.timeBarMinUpdateIntervalMs = Util.q(i10, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        View view = this.vrButton;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            o0(onClickListener != null, this.vrButton);
        }
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0() {
        ImageView imageView;
        Drawable drawable;
        String str;
        if (d0() && this.isAttachedToWindow && (imageView = this.shuffleButton) != null) {
            Player player = this.player;
            if (!this.controlViewLayoutManager.A(imageView)) {
                o0(false, this.shuffleButton);
                return;
            }
            if (player != null && player.g(14)) {
                o0(true, this.shuffleButton);
                ImageView imageView2 = this.shuffleButton;
                if (player.getShuffleModeEnabled()) {
                    drawable = this.shuffleOnButtonDrawable;
                } else {
                    drawable = this.shuffleOffButtonDrawable;
                }
                imageView2.setImageDrawable(drawable);
                ImageView imageView3 = this.shuffleButton;
                if (player.getShuffleModeEnabled()) {
                    str = this.shuffleOnContentDescription;
                } else {
                    str = this.shuffleOffContentDescription;
                }
                imageView3.setContentDescription(str);
                return;
            }
            o0(false, this.shuffleButton);
            this.shuffleButton.setImageDrawable(this.shuffleOffButtonDrawable);
            this.shuffleButton.setContentDescription(this.shuffleOffContentDescription);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C0() {
        boolean z6;
        Z();
        if (this.textTrackSelectionAdapter.getItemCount() > 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        o0(z6, this.subtitleButton);
        y0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0() {
        boolean zG;
        boolean zG2;
        boolean zG3;
        boolean zG4;
        boolean zG5;
        if (d0() && this.isAttachedToWindow) {
            Player player = this.player;
            if (player != null) {
                if (this.showMultiWindowTimeBar && S(player, this.window)) {
                    zG = player.g(10);
                } else {
                    zG = player.g(5);
                }
                zG3 = player.g(7);
                zG4 = player.g(11);
                zG5 = player.g(12);
                zG2 = player.g(9);
            } else {
                zG = false;
                zG2 = false;
                zG3 = false;
                zG4 = false;
                zG5 = false;
            }
            if (zG4) {
                x0();
            }
            if (zG5) {
                p0();
            }
            o0(zG3, this.previousButton);
            o0(zG4, this.rewindButton);
            o0(zG5, this.fastForwardButton);
            o0(zG2, this.nextButton);
            TimeBar timeBar = this.timeBar;
            if (timeBar != null) {
                timeBar.setEnabled(zG);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t0() {
        int i10;
        int i11;
        if (d0() && this.isAttachedToWindow && this.playPauseButton != null) {
            boolean zA1 = Util.a1(this.player);
            if (zA1) {
                i10 = R.drawable.exo_styled_controls_play;
            } else {
                i10 = R.drawable.exo_styled_controls_pause;
            }
            if (zA1) {
                i11 = R.string.exo_controls_play_description;
            } else {
                i11 = R.string.exo_controls_pause_description;
            }
            ((ImageView) this.playPauseButton).setImageDrawable(Util.W(getContext(), this.resources, i10));
            this.playPauseButton.setContentDescription(this.resources.getString(i11));
            o0(l0(), this.playPauseButton);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v0() {
        long contentPosition;
        long jL;
        int playbackState;
        long preferredUpdateDelay;
        if (d0() && this.isAttachedToWindow) {
            Player player = this.player;
            if (player != null && player.g(16)) {
                contentPosition = this.currentWindowOffset + player.getContentPosition();
                jL = this.currentWindowOffset + player.l();
            } else {
                contentPosition = 0;
                jL = 0;
            }
            TextView textView = this.positionView;
            if (textView != null && !this.scrubbing) {
                textView.setText(Util.k0(this.formatBuilder, this.formatter, contentPosition));
            }
            TimeBar timeBar = this.timeBar;
            if (timeBar != null) {
                timeBar.setPosition(contentPosition);
                this.timeBar.setBufferedPosition(jL);
            }
            ProgressUpdateListener progressUpdateListener = this.progressUpdateListener;
            if (progressUpdateListener != null) {
                progressUpdateListener.a(contentPosition, jL);
            }
            removeCallbacks(this.updateProgressAction);
            if (player == null) {
                playbackState = 1;
            } else {
                playbackState = player.getPlaybackState();
            }
            long j6 = 1000;
            if (player != null && player.isPlaying()) {
                TimeBar timeBar2 = this.timeBar;
                if (timeBar2 != null) {
                    preferredUpdateDelay = timeBar2.getPreferredUpdateDelay();
                } else {
                    preferredUpdateDelay = 1000;
                }
                long jMin = Math.min(preferredUpdateDelay, 1000 - (contentPosition % 1000));
                float f = player.getPlaybackParameters().speed;
                if (f > 0.0f) {
                    j6 = (long) (jMin / f);
                }
                postDelayed(this.updateProgressAction, Util.r(j6, this.timeBarMinUpdateIntervalMs, 1000L));
                return;
            }
            if (playbackState != 4 && playbackState != 1) {
                postDelayed(this.updateProgressAction, 1000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w0() {
        ImageView imageView;
        if (d0() && this.isAttachedToWindow && (imageView = this.repeatToggleButton) != null) {
            if (this.repeatToggleModes == 0) {
                o0(false, imageView);
                return;
            }
            Player player = this.player;
            if (player != null && player.g(15)) {
                o0(true, this.repeatToggleButton);
                int repeatMode = player.getRepeatMode();
                if (repeatMode != 0) {
                    if (repeatMode != 1) {
                        if (repeatMode == 2) {
                            this.repeatToggleButton.setImageDrawable(this.repeatAllButtonDrawable);
                            this.repeatToggleButton.setContentDescription(this.repeatAllButtonContentDescription);
                            return;
                        }
                        return;
                    }
                    this.repeatToggleButton.setImageDrawable(this.repeatOneButtonDrawable);
                    this.repeatToggleButton.setContentDescription(this.repeatOneButtonContentDescription);
                    return;
                }
                this.repeatToggleButton.setImageDrawable(this.repeatOffButtonDrawable);
                this.repeatToggleButton.setContentDescription(this.repeatOffButtonContentDescription);
                return;
            }
            o0(false, this.repeatToggleButton);
            this.repeatToggleButton.setImageDrawable(this.repeatOffButtonDrawable);
            this.repeatToggleButton.setContentDescription(this.repeatOffButtonContentDescription);
        }
    }

    @Deprecated
    public void R(VisibilityListener visibilityListener) {
        Assertions.e(visibilityListener);
        this.visibilityListeners.add(visibilityListener);
    }

    public boolean T(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        Player player = this.player;
        if (player != null && c0(keyCode)) {
            if (keyEvent.getAction() == 0) {
                if (keyCode == 90) {
                    if (player.getPlaybackState() != 4 && player.g(12)) {
                        player.m();
                        return true;
                    }
                    return true;
                }
                if (keyCode == 89 && player.g(11)) {
                    player.y();
                    return true;
                }
                if (keyEvent.getRepeatCount() == 0) {
                    if (keyCode != 79 && keyCode != 85) {
                        if (keyCode != 87) {
                            if (keyCode != 88) {
                                if (keyCode != 126) {
                                    if (keyCode == 127) {
                                        Util.r0(player);
                                        return true;
                                    }
                                    return true;
                                }
                                Util.s0(player);
                                return true;
                            }
                            if (player.g(7)) {
                                player.o();
                                return true;
                            }
                            return true;
                        }
                        if (player.g(9)) {
                            player.t();
                            return true;
                        }
                        return true;
                    }
                    Util.t0(player);
                    return true;
                }
                return true;
            }
            return true;
        }
        return false;
    }

    public boolean d0() {
        if (getVisibility() == 0) {
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!T(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
            return false;
        }
        return true;
    }

    void n0() {
        t0();
        s0();
        w0();
        A0();
        C0();
        u0();
        B0();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.controlViewLayoutManager.O();
        this.isAttachedToWindow = true;
        if (b0()) {
            this.controlViewLayoutManager.W();
        }
        n0();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.controlViewLayoutManager.P();
        this.isAttachedToWindow = false;
        removeCallbacks(this.updateProgressAction);
        this.controlViewLayoutManager.V();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        this.controlViewLayoutManager.Q(z6, i10, i11, i12, i13);
    }

    public void setPlayer(@Nullable Player player) {
        boolean z6;
        boolean z10 = false;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.g(z6);
        if (player == null || player.s() == Looper.getMainLooper()) {
            z10 = true;
        }
        Assertions.a(z10);
        Player player2 = this.player;
        if (player2 == player) {
            return;
        }
        if (player2 != null) {
            player2.K(this.componentListener);
        }
        this.player = player;
        if (player != null) {
            player.L(this.componentListener);
        }
        n0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v24, types: [android.view.LayoutInflater] */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v4, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r4v5, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r4v7, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r4v8, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7, types: [android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [android.view.ViewGroup, androidx.media3.ui.PlayerControlView$1] */
    /* JADX WARN: Type inference failed for: r8v7 */
    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i10, @Nullable AttributeSet attributeSet2) {
        boolean z6;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        ?? r10;
        boolean z17;
        super(context, attributeSet, i10);
        int resourceId = R.layout.exo_player_control_view;
        this.showTimeoutMs = 5000;
        this.repeatToggleModes = 0;
        this.timeBarMinUpdateIntervalMs = 200;
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R.styleable.PlayerControlView, i10, 0);
            try {
                resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_controller_layout_id, resourceId);
                this.showTimeoutMs = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerControlView_show_timeout, this.showTimeoutMs);
                this.repeatToggleModes = W(typedArrayObtainStyledAttributes, this.repeatToggleModes);
                boolean z18 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_rewind_button, true);
                boolean z19 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_fastforward_button, true);
                boolean z20 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_previous_button, true);
                boolean z21 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_next_button, true);
                boolean z22 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_shuffle_button, false);
                boolean z23 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_subtitle_button, false);
                boolean z24 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_vr_button, false);
                setTimeBarMinUpdateInterval(typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerControlView_time_bar_min_update_interval, this.timeBarMinUpdateIntervalMs));
                boolean z25 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_animation_enabled, true);
                typedArrayObtainStyledAttributes.recycle();
                z11 = z23;
                z15 = z20;
                z6 = z24;
                z16 = z21;
                z13 = z18;
                z14 = z19;
                z12 = z25;
                z10 = z22;
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            z6 = false;
            z10 = false;
            z11 = false;
            z12 = true;
            z13 = true;
            z14 = true;
            z15 = true;
            z16 = true;
        }
        LayoutInflater.from(context).inflate(resourceId, this);
        setDescendantFocusability(262144);
        ComponentListener componentListener = new ComponentListener();
        this.componentListener = componentListener;
        this.visibilityListeners = new CopyOnWriteArrayList<>();
        this.period = new Timeline.Period();
        this.window = new Timeline.Window();
        StringBuilder sb = new StringBuilder();
        this.formatBuilder = sb;
        this.formatter = new Formatter(sb, Locale.getDefault());
        this.adGroupTimesMs = new long[0];
        this.playedAdGroups = new boolean[0];
        this.extraAdGroupTimesMs = new long[0];
        this.extraPlayedAdGroups = new boolean[0];
        this.updateProgressAction = new Runnable() { // from class: androidx.media3.ui.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f723a.v0();
            }
        };
        this.durationView = (TextView) findViewById(R.id.exo_duration);
        this.positionView = (TextView) findViewById(R.id.exo_position);
        ImageView imageView = (ImageView) findViewById(R.id.exo_subtitle);
        this.subtitleButton = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(componentListener);
        }
        ImageView imageView2 = (ImageView) findViewById(R.id.exo_fullscreen);
        this.fullScreenButton = imageView2;
        a0(imageView2, new View.OnClickListener() { // from class: androidx.media3.ui.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f726a.f0(view);
            }
        });
        ImageView imageView3 = (ImageView) findViewById(R.id.exo_minimal_fullscreen);
        this.minimalFullScreenButton = imageView3;
        a0(imageView3, new View.OnClickListener() { // from class: androidx.media3.ui.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f726a.f0(view);
            }
        });
        View viewFindViewById = findViewById(R.id.exo_settings);
        this.settingsButton = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(componentListener);
        }
        View viewFindViewById2 = findViewById(R.id.exo_playback_speed);
        this.playbackSpeedButton = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(componentListener);
        }
        View viewFindViewById3 = findViewById(R.id.exo_audio_track);
        this.audioTrackButton = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(componentListener);
        }
        int i11 = R.id.exo_progress;
        TimeBar timeBar = (TimeBar) findViewById(i11);
        View viewFindViewById4 = findViewById(R.id.exo_progress_placeholder);
        if (timeBar != null) {
            this.timeBar = timeBar;
            r10 = 0;
        } else if (viewFindViewById4 != null) {
            r10 = 0;
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2, R.style.ExoStyledControls_TimeBar);
            defaultTimeBar.setId(i11);
            defaultTimeBar.setLayoutParams(viewFindViewById4.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById4.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById4);
            viewGroup.removeView(viewFindViewById4);
            viewGroup.addView(defaultTimeBar, iIndexOfChild);
            this.timeBar = defaultTimeBar;
        } else {
            r10 = 0;
            this.timeBar = null;
        }
        TimeBar timeBar2 = this.timeBar;
        if (timeBar2 != null) {
            timeBar2.addListener(componentListener);
        }
        View viewFindViewById5 = findViewById(R.id.exo_play_pause);
        this.playPauseButton = viewFindViewById5;
        if (viewFindViewById5 != null) {
            viewFindViewById5.setOnClickListener(componentListener);
        }
        View viewFindViewById6 = findViewById(R.id.exo_prev);
        this.previousButton = viewFindViewById6;
        if (viewFindViewById6 != null) {
            viewFindViewById6.setOnClickListener(componentListener);
        }
        View viewFindViewById7 = findViewById(R.id.exo_next);
        this.nextButton = viewFindViewById7;
        if (viewFindViewById7 != null) {
            viewFindViewById7.setOnClickListener(componentListener);
        }
        Typeface typefaceG = ResourcesCompat.g(context, R.font.roboto_medium_numbers);
        ?? FindViewById = findViewById(R.id.exo_rew);
        ?? r5 = FindViewById == 0 ? (TextView) findViewById(R.id.exo_rew_with_amount) : r10;
        this.rewindButtonTextView = r5;
        if (r5 != 0) {
            r5.setTypeface(typefaceG);
        }
        FindViewById = FindViewById == 0 ? r5 : FindViewById;
        this.rewindButton = FindViewById;
        if (FindViewById != 0) {
            FindViewById.setOnClickListener(componentListener);
        }
        ?? FindViewById2 = findViewById(R.id.exo_ffwd);
        ?? r11 = FindViewById2 == 0 ? (TextView) findViewById(R.id.exo_ffwd_with_amount) : r10;
        this.fastForwardButtonTextView = r11;
        if (r11 != 0) {
            r11.setTypeface(typefaceG);
        }
        FindViewById2 = FindViewById2 == 0 ? r11 : FindViewById2;
        this.fastForwardButton = FindViewById2;
        if (FindViewById2 != 0) {
            FindViewById2.setOnClickListener(componentListener);
        }
        ImageView imageView4 = (ImageView) findViewById(R.id.exo_repeat_toggle);
        this.repeatToggleButton = imageView4;
        if (imageView4 != null) {
            imageView4.setOnClickListener(componentListener);
        }
        ImageView imageView5 = (ImageView) findViewById(R.id.exo_shuffle);
        this.shuffleButton = imageView5;
        if (imageView5 != null) {
            imageView5.setOnClickListener(componentListener);
        }
        Resources resources = context.getResources();
        this.resources = resources;
        this.buttonAlphaEnabled = resources.getInteger(R.integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.buttonAlphaDisabled = resources.getInteger(R.integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        View viewFindViewById8 = findViewById(R.id.exo_vr);
        this.vrButton = viewFindViewById8;
        if (viewFindViewById8 != null) {
            o0(false, viewFindViewById8);
        }
        PlayerControlViewLayoutManager playerControlViewLayoutManager = new PlayerControlViewLayoutManager(this);
        this.controlViewLayoutManager = playerControlViewLayoutManager;
        playerControlViewLayoutManager.X(z12);
        SettingsAdapter settingsAdapter = new SettingsAdapter(new String[]{resources.getString(R.string.exo_controls_playback_speed), resources.getString(R.string.exo_track_selection_title_audio)}, new Drawable[]{Util.W(context, resources, R.drawable.exo_styled_controls_speed), Util.W(context, resources, R.drawable.exo_styled_controls_audiotrack)});
        this.settingsAdapter = settingsAdapter;
        this.settingsWindowMargin = resources.getDimensionPixelSize(R.dimen.exo_settings_offset);
        RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(context).inflate(R.layout.exo_styled_settings_list, r10);
        this.settingsView = recyclerView;
        recyclerView.setAdapter(settingsAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        PopupWindow popupWindow = new PopupWindow((View) recyclerView, -2, -2, true);
        this.settingsWindow = popupWindow;
        if (Util.SDK_INT < 23) {
            z17 = false;
            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        } else {
            z17 = false;
        }
        popupWindow.setOnDismissListener(componentListener);
        this.needToHideBars = true;
        this.trackNameProvider = new DefaultTrackNameProvider(getResources());
        this.subtitleOnButtonDrawable = Util.W(context, resources, R.drawable.exo_styled_controls_subtitle_on);
        this.subtitleOffButtonDrawable = Util.W(context, resources, R.drawable.exo_styled_controls_subtitle_off);
        this.subtitleOnContentDescription = resources.getString(R.string.exo_controls_cc_enabled_description);
        this.subtitleOffContentDescription = resources.getString(R.string.exo_controls_cc_disabled_description);
        this.textTrackSelectionAdapter = new TextTrackSelectionAdapter();
        this.audioTrackSelectionAdapter = new AudioTrackSelectionAdapter();
        this.playbackSpeedAdapter = new PlaybackSpeedAdapter(resources.getStringArray(R.array.exo_controls_playback_speeds), PLAYBACK_SPEEDS);
        this.fullScreenExitDrawable = Util.W(context, resources, R.drawable.exo_styled_controls_fullscreen_exit);
        this.fullScreenEnterDrawable = Util.W(context, resources, R.drawable.exo_styled_controls_fullscreen_enter);
        this.repeatOffButtonDrawable = Util.W(context, resources, R.drawable.exo_styled_controls_repeat_off);
        this.repeatOneButtonDrawable = Util.W(context, resources, R.drawable.exo_styled_controls_repeat_one);
        this.repeatAllButtonDrawable = Util.W(context, resources, R.drawable.exo_styled_controls_repeat_all);
        this.shuffleOnButtonDrawable = Util.W(context, resources, R.drawable.exo_styled_controls_shuffle_on);
        this.shuffleOffButtonDrawable = Util.W(context, resources, R.drawable.exo_styled_controls_shuffle_off);
        this.fullScreenExitContentDescription = resources.getString(R.string.exo_controls_fullscreen_exit_description);
        this.fullScreenEnterContentDescription = resources.getString(R.string.exo_controls_fullscreen_enter_description);
        this.repeatOffButtonContentDescription = resources.getString(R.string.exo_controls_repeat_off_description);
        this.repeatOneButtonContentDescription = resources.getString(R.string.exo_controls_repeat_one_description);
        this.repeatAllButtonContentDescription = resources.getString(R.string.exo_controls_repeat_all_description);
        this.shuffleOnContentDescription = this.resources.getString(R.string.exo_controls_shuffle_on_description);
        this.shuffleOffContentDescription = this.resources.getString(R.string.exo_controls_shuffle_off_description);
        this.controlViewLayoutManager.Y((ViewGroup) findViewById(R.id.exo_bottom_bar), true);
        this.controlViewLayoutManager.Y(this.fastForwardButton, z14);
        this.controlViewLayoutManager.Y(this.rewindButton, z13);
        this.controlViewLayoutManager.Y(this.previousButton, z15);
        this.controlViewLayoutManager.Y(this.nextButton, z16);
        this.controlViewLayoutManager.Y(this.shuffleButton, z10);
        this.controlViewLayoutManager.Y(this.subtitleButton, z11);
        this.controlViewLayoutManager.Y(this.vrButton, z6);
        this.controlViewLayoutManager.Y(this.repeatToggleButton, this.repeatToggleModes != 0 ? true : z17);
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.media3.ui.h
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
                this.f727a.g0(view, i12, i13, i14, i15, i16, i17, i18, i19);
            }
        });
    }
}
