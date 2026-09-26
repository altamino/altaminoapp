package com.narvii.pre_editing.player;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import androidx.annotation.OptIn;
import androidx.core.os.EnvironmentCompat;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
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
import androidx.media3.common.c0;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.database.DatabaseProvider;
import androidx.media3.datasource.DefaultDataSourceFactory;
import androidx.media3.datasource.DefaultHttpDataSource;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import com.narvii.nvplayerview.ISurfaceListener;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import java.io.File;
import java.util.LinkedList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class PreEditMediaPlayer {

    @Nullable
    private PlayerStateCallback callback;

    @NotNull
    private final Context context;
    private boolean continuousSeekingFlag;
    private int currentPausePriority;
    private boolean isPrepared;

    @NotNull
    private final ExoPlayer player;
    private boolean playingFlag;
    private long replayEndTime;
    private long replayStartTime;

    @NotNull
    private final LinkedList<Long> seekReqQueue;

    @NotNull
    private final PreEditMediaPlayer$updateTimeRunnable$1 updateTimeRunnable;

    @NotNull
    private final NVVideoView view;

    public interface PlayerStateCallback {

        public static final class DefaultImpls {
            public static void onComplete(@NotNull PlayerStateCallback playerStateCallback) {
            }

            public static void onError(@NotNull PlayerStateCallback playerStateCallback, @NotNull String msg) {
                t.j(msg, "msg");
            }

            public static void onPlayPauseStateChanged(@NotNull PlayerStateCallback playerStateCallback, boolean z6) {
            }

            public static void onPrepared(@NotNull PlayerStateCallback playerStateCallback) {
            }

            public static void onProgressUpdate(@NotNull PlayerStateCallback playerStateCallback, long j6) {
            }
        }

        void onBufferingEnd();

        void onBufferingStart();

        void onComplete();

        void onError(@NotNull String str);

        void onPlayPauseStateChanged(boolean z6);

        void onPrepared();

        void onProgressUpdate(long j6);
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final NVVideoView getView() {
        return this.view;
    }

    public final boolean isPrepared() {
        return this.isPrepared;
    }

    public final void release() {
        this.isPrepared = false;
        this.player.release();
        Utils.handler.removeCallbacks(this.updateTimeRunnable);
    }

    public final void setInContinuousSeekingMode(boolean z6) {
        this.continuousSeekingFlag = z6;
    }

    public final void setPlayStateCallback(@NotNull PlayerStateCallback callback) {
        t.j(callback, "callback");
        this.callback = callback;
    }

    public final void setReplayTime(long j6, long j10) {
        this.replayStartTime = j6;
        this.replayEndTime = j10;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [com.narvii.pre_editing.player.PreEditMediaPlayer$updateTimeRunnable$1] */
    public PreEditMediaPlayer(@NotNull Context context, @NotNull NVVideoView view) {
        t.j(context, "context");
        t.j(view, "view");
        this.context = context;
        this.view = view;
        ExoPlayer exoPlayerT = new ExoPlayer.Builder(context).t();
        t.i(exoPlayerT, "build(...)");
        this.player = exoPlayerT;
        this.replayEndTime = Long.MAX_VALUE;
        this.seekReqQueue = new LinkedList<>();
        this.updateTimeRunnable = new Runnable() { // from class: com.narvii.pre_editing.player.PreEditMediaPlayer$updateTimeRunnable$1
            @Override // java.lang.Runnable
            public void run() {
                if (this.this$0.player.getCurrentPosition() > this.this$0.replayEndTime) {
                    this.this$0.player.seekTo(this.this$0.replayStartTime);
                } else {
                    PreEditMediaPlayer.PlayerStateCallback playerStateCallback = this.this$0.callback;
                    if (playerStateCallback != null) {
                        playerStateCallback.onProgressUpdate(this.this$0.player.getCurrentPosition());
                    }
                }
                Utils.postDelayed(this, 50L);
            }
        };
        exoPlayerT.L(new Player.Listener() { // from class: com.narvii.pre_editing.player.PreEditMediaPlayer.1
            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
                c0.a(this, audioAttributes);
            }

            @UnstableApi
            public /* bridge */ /* synthetic */ void onAudioSessionIdChanged(int i10) {
                c0.b(this, i10);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
                c0.c(this, commands);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onCues(CueGroup cueGroup) {
                c0.d(this, cueGroup);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
                c0.f(this, deviceInfo);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onDeviceVolumeChanged(int i10, boolean z6) {
                c0.g(this, i10, z6);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onEvents(Player player, Player.Events events) {
                c0.h(this, player, events);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onIsLoadingChanged(boolean z6) {
                c0.i(this, z6);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onIsPlayingChanged(boolean z6) {
                c0.j(this, z6);
            }

            @Override // androidx.media3.common.Player.Listener
            @UnstableApi
            @Deprecated
            public /* bridge */ /* synthetic */ void onLoadingChanged(boolean z6) {
                c0.k(this, z6);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j6) {
                c0.l(this, j6);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onMediaItemTransition(@androidx.annotation.Nullable MediaItem mediaItem, int i10) {
                c0.m(this, mediaItem, i10);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
                c0.n(this, mediaMetadata);
            }

            @Override // androidx.media3.common.Player.Listener
            @UnstableApi
            public /* bridge */ /* synthetic */ void onMetadata(Metadata metadata) {
                c0.o(this, metadata);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
                c0.q(this, playbackParameters);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onPlaybackSuppressionReasonChanged(int i10) {
                c0.s(this, i10);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onPlayerErrorChanged(@androidx.annotation.Nullable PlaybackException playbackException) {
                c0.u(this, playbackException);
            }

            @Override // androidx.media3.common.Player.Listener
            @UnstableApi
            @Deprecated
            public /* bridge */ /* synthetic */ void onPlayerStateChanged(boolean z6, int i10) {
                c0.v(this, z6, i10);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
                c0.w(this, mediaMetadata);
            }

            @Override // androidx.media3.common.Player.Listener
            @UnstableApi
            @Deprecated
            public /* bridge */ /* synthetic */ void onPositionDiscontinuity(int i10) {
                c0.x(this, i10);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onRenderedFirstFrame() {
                c0.z(this);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onRepeatModeChanged(int i10) {
                c0.A(this, i10);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onSeekBackIncrementChanged(long j6) {
                c0.B(this, j6);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onSeekForwardIncrementChanged(long j6) {
                c0.C(this, j6);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onShuffleModeEnabledChanged(boolean z6) {
                c0.D(this, z6);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onSkipSilenceEnabledChanged(boolean z6) {
                c0.E(this, z6);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onSurfaceSizeChanged(int i10, int i11) {
                c0.F(this, i10, i11);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onTimelineChanged(Timeline timeline, int i10) {
                c0.G(this, timeline, i10);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
                c0.H(this, trackSelectionParameters);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onTracksChanged(Tracks tracks) {
                c0.I(this, tracks);
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onVolumeChanged(float f) {
                c0.K(this, f);
            }

            @Override // androidx.media3.common.Player.Listener
            @UnstableApi
            @Deprecated
            public /* bridge */ /* synthetic */ void onCues(List list) {
                c0.e(this, list);
            }

            @Override // androidx.media3.common.Player.Listener
            public void onPlayerError(@NotNull PlaybackException error) {
                t.j(error, "error");
                c0.t(this, error);
                PlayerStateCallback playerStateCallback = PreEditMediaPlayer.this.callback;
                if (playerStateCallback != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = EnvironmentCompat.MEDIA_UNKNOWN;
                    }
                    playerStateCallback.onError(message);
                }
            }

            @Override // androidx.media3.common.Player.Listener
            public /* bridge */ /* synthetic */ void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i10) {
                c0.y(this, positionInfo, positionInfo2, i10);
            }

            @Override // androidx.media3.common.Player.Listener
            public void onVideoSizeChanged(@NotNull VideoSize videoSize) {
                t.j(videoSize, "videoSize");
                c0.J(this, videoSize);
                PreEditMediaPlayer.this.getView().setVideoSize(videoSize.width, videoSize.height);
            }

            @Override // androidx.media3.common.Player.Listener
            public void onPlayWhenReadyChanged(boolean z6, int i10) {
                c0.p(this, z6, i10);
                if (PreEditMediaPlayer.this.playingFlag != z6) {
                    PreEditMediaPlayer.this.playingFlag = z6;
                    PlayerStateCallback playerStateCallback = PreEditMediaPlayer.this.callback;
                    if (playerStateCallback != null) {
                        playerStateCallback.onPlayPauseStateChanged(PreEditMediaPlayer.this.playingFlag);
                    }
                    Utils.handler.removeCallbacks(PreEditMediaPlayer.this.updateTimeRunnable);
                    if (PreEditMediaPlayer.this.playingFlag) {
                        Utils.post(PreEditMediaPlayer.this.updateTimeRunnable);
                    }
                }
            }

            @Override // androidx.media3.common.Player.Listener
            public void onPlaybackStateChanged(int i10) {
                PlayerStateCallback playerStateCallback;
                PlayerStateCallback playerStateCallback2;
                PlayerStateCallback playerStateCallback3;
                c0.r(this, i10);
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4 && (playerStateCallback3 = PreEditMediaPlayer.this.callback) != null) {
                            playerStateCallback3.onComplete();
                            return;
                        }
                        return;
                    }
                    if (!PreEditMediaPlayer.this.isPrepared) {
                        PreEditMediaPlayer.this.isPrepared = true;
                        PreEditMediaPlayer.this.replayStartTime = 0L;
                        PreEditMediaPlayer preEditMediaPlayer = PreEditMediaPlayer.this;
                        preEditMediaPlayer.replayEndTime = preEditMediaPlayer.player.getDuration();
                        PlayerStateCallback playerStateCallback4 = PreEditMediaPlayer.this.callback;
                        if (playerStateCallback4 != null) {
                            playerStateCallback4.onPrepared();
                        }
                    }
                    PreEditMediaPlayer.this.checkSeekRequest();
                    if (!PreEditMediaPlayer.this.continuousSeekingFlag && (playerStateCallback2 = PreEditMediaPlayer.this.callback) != null) {
                        playerStateCallback2.onBufferingEnd();
                        return;
                    }
                    return;
                }
                if (!PreEditMediaPlayer.this.continuousSeekingFlag && (playerStateCallback = PreEditMediaPlayer.this.callback) != null) {
                    playerStateCallback.onBufferingStart();
                }
            }
        });
        view.setKeepScreenOn(true);
        view.init(new ISurfaceListener() { // from class: com.narvii.pre_editing.player.PreEditMediaPlayer.2
            @Override // com.narvii.nvplayerview.ISurfaceListener
            public /* synthetic */ void surfaceDestroyed(Surface surface) {
                com.narvii.nvplayerview.a.b(this, surface);
            }

            @Override // com.narvii.nvplayerview.ISurfaceListener
            public /* synthetic */ void surfaceSizeChanged(Surface surface, int i10, int i11) {
                com.narvii.nvplayerview.a.c(this, surface, i10, i11);
            }

            @Override // com.narvii.nvplayerview.ISurfaceListener
            public void surfaceCreated(@Nullable Surface surface) {
                PreEditMediaPlayer.this.player.setVideoSurface(surface);
                PreEditMediaPlayer.this.start(5);
            }
        });
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.pre_editing.player.a
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return PreEditMediaPlayer._init_$lambda$0(this.f2616a, view2, motionEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$0(PreEditMediaPlayer this$0, View view, MotionEvent motionEvent) {
        t.j(this$0, "this$0");
        if (motionEvent.getActionMasked() == 0) {
            if (!this$0.player.getPlayWhenReady()) {
                this$0.start(50);
            } else {
                this$0.pause(50);
            }
            PlayerStateCallback playerStateCallback = this$0.callback;
            if (playerStateCallback != null) {
                playerStateCallback.onPlayPauseStateChanged(this$0.player.getPlayWhenReady());
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkSeekRequest() {
        synchronized (this.seekReqQueue) {
            try {
                if (!this.seekReqQueue.isEmpty()) {
                    Long lRemoveFirst = this.seekReqQueue.removeFirst();
                    ExoPlayer exoPlayer = this.player;
                    t.g(lRemoveFirst);
                    exoPlayer.seekTo(lRemoveFirst.longValue());
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ void seekTo$default(PreEditMediaPlayer preEditMediaPlayer, long j6, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        preEditMediaPlayer.seekTo(j6, z6);
    }

    public final long getDuration() {
        return this.player.getDuration();
    }

    public final void handlePause() {
        pause(10);
    }

    public final void handleResume() {
        this.player.setVideoSurface(this.view.getSurface());
        start(10);
    }

    public final void pause(int i10) {
        if (this.currentPausePriority < i10) {
            this.currentPausePriority = i10;
            this.player.setPlayWhenReady(false);
        }
    }

    public final void seekTo(long j6, boolean z6) {
        synchronized (this.seekReqQueue) {
            try {
                if (z6) {
                    this.seekReqQueue.clear();
                    this.player.seekTo(j6);
                } else {
                    this.seekReqQueue.add(Long.valueOf(j6));
                    if (this.seekReqQueue.size() >= 2) {
                        this.seekReqQueue.removeFirst();
                    }
                    if (this.player.getPlaybackState() == 3) {
                        checkSeekRequest();
                    }
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void start(int i10) {
        if (this.currentPausePriority <= i10) {
            this.player.setPlayWhenReady(true);
            this.currentPausePriority = 0;
        }
    }

    @OptIn
    public final void prepare(@Nullable String str) {
        ProgressiveMediaSource progressiveMediaSourceD;
        if (TextUtils.isEmpty(str)) {
            PlayerStateCallback playerStateCallback = this.callback;
            if (playerStateCallback != null) {
                playerStateCallback.onError("empty url");
                return;
            }
            return;
        }
        if (new File(str).exists()) {
            progressiveMediaSourceD = new ProgressiveMediaSource.Factory(new DefaultDataSourceFactory(this.context, DatabaseProvider.TABLE_PREFIX)).d(MediaItem.d(Uri.parse(str)));
        } else {
            progressiveMediaSourceD = new ProgressiveMediaSource.Factory(new DefaultHttpDataSource.Factory().e(DatabaseProvider.TABLE_PREFIX)).d(MediaItem.d(Uri.parse(str)));
        }
        t.g(progressiveMediaSourceD);
        this.player.a(progressiveMediaSourceD);
    }
}
