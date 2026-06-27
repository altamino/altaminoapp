package com.narvii.pre_editing.player;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ExoPlayerFactory;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.upstream.DefaultDataSourceFactory;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSourceFactory;
import com.google.android.exoplayer2.video.VideoListener;
import com.narvii.nvplayerview.ISurfaceListener;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.pre_editing.player.PreEditMediaPlayer;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import java.io.File;
import java.util.LinkedList;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: PreEditMediaPlayer.kt */
/* loaded from: classes3.dex */
public final class PreEditMediaPlayer {
    private PlayerStateCallback callback;
    private final Context context;
    private boolean continuousSeekingFlag;
    private int currentPausePriority;
    private boolean isPrepared;
    private final SimpleExoPlayer player;
    private boolean playingFlag;
    private long replayEndTime;
    private long replayStartTime;
    private final LinkedList<Long> seekReqQueue;
    private final PreEditMediaPlayer$updateTimeRunnable$1 updateTimeRunnable;
    private final NVVideoView view;

    /* compiled from: PreEditMediaPlayer.kt */
    public interface PlayerStateCallback {

        /* compiled from: PreEditMediaPlayer.kt */
        public static final class DefaultImpls {
            public static void onComplete(PlayerStateCallback playerStateCallback) {
            }

            public static void onError(PlayerStateCallback playerStateCallback, String msg) {
                Intrinsics.checkParameterIsNotNull(msg, "msg");
            }

            public static void onPlayPauseStateChanged(PlayerStateCallback playerStateCallback, boolean z) {
            }

            public static void onPrepared(PlayerStateCallback playerStateCallback) {
            }

            public static void onProgressUpdate(PlayerStateCallback playerStateCallback, long j) {
            }
        }

        void onBufferingEnd();

        void onBufferingStart();

        void onComplete();

        void onError(String str);

        void onPlayPauseStateChanged(boolean z);

        void onPrepared();

        void onProgressUpdate(long j);
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [com.narvii.pre_editing.player.PreEditMediaPlayer$updateTimeRunnable$1] */
    public PreEditMediaPlayer(Context context, NVVideoView view) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.context = context;
        this.view = view;
        this.player = ExoPlayerFactory.newSimpleInstance(this.context);
        this.replayEndTime = Long.MAX_VALUE;
        this.seekReqQueue = new LinkedList<>();
        this.updateTimeRunnable = new Runnable() { // from class: com.narvii.pre_editing.player.PreEditMediaPlayer$updateTimeRunnable$1
            @Override // java.lang.Runnable
            public void run() {
                SimpleExoPlayer player = this.this$0.player;
                Intrinsics.checkExpressionValueIsNotNull(player, "player");
                if (player.getCurrentPosition() > this.this$0.replayEndTime) {
                    this.this$0.player.seekTo(this.this$0.replayStartTime);
                } else {
                    PreEditMediaPlayer.PlayerStateCallback playerStateCallback = this.this$0.callback;
                    if (playerStateCallback != null) {
                        SimpleExoPlayer player2 = this.this$0.player;
                        Intrinsics.checkExpressionValueIsNotNull(player2, "player");
                        playerStateCallback.onProgressUpdate(player2.getCurrentPosition());
                    }
                }
                Utils.postDelayed(this, 50L);
            }
        };
        this.player.addListener(new Player.EventListener() { // from class: com.narvii.pre_editing.player.PreEditMediaPlayer.1
            @Override // com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onIsPlayingChanged(boolean z) {
                Player.EventListener.CC.$default$onIsPlayingChanged(this, z);
            }

            @Override // com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onLoadingChanged(boolean z) {
                Player.EventListener.CC.$default$onLoadingChanged(this, z);
            }

            @Override // com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
                Player.EventListener.CC.$default$onPlaybackParametersChanged(this, playbackParameters);
            }

            @Override // com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
                Player.EventListener.CC.$default$onPlaybackSuppressionReasonChanged(this, i);
            }

            @Override // com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onPositionDiscontinuity(int i) {
                Player.EventListener.CC.$default$onPositionDiscontinuity(this, i);
            }

            @Override // com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onSeekProcessed() {
                Player.EventListener.CC.$default$onSeekProcessed(this);
            }

            @Override // com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onTimelineChanged(Timeline timeline, Object obj, int i) {
                Player.EventListener.CC.$default$onTimelineChanged(this, timeline, obj, i);
            }

            @Override // com.google.android.exoplayer2.Player.EventListener
            public /* synthetic */ void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
                Player.EventListener.CC.$default$onTracksChanged(this, trackGroupArray, trackSelectionArray);
            }

            @Override // com.google.android.exoplayer2.Player.EventListener
            public void onPlayerStateChanged(boolean z, int i) {
                PlayerStateCallback playerStateCallback;
                PlayerStateCallback playerStateCallback2;
                PlayerStateCallback playerStateCallback3;
                if (i != 2) {
                    if (i == 3) {
                        if (!PreEditMediaPlayer.this.isPrepared) {
                            PreEditMediaPlayer.this.isPrepared = true;
                            PreEditMediaPlayer.this.replayStartTime = 0L;
                            PreEditMediaPlayer preEditMediaPlayer = PreEditMediaPlayer.this;
                            SimpleExoPlayer player = preEditMediaPlayer.player;
                            Intrinsics.checkExpressionValueIsNotNull(player, "player");
                            preEditMediaPlayer.replayEndTime = player.getDuration();
                            PlayerStateCallback playerStateCallback4 = PreEditMediaPlayer.this.callback;
                            if (playerStateCallback4 != null) {
                                playerStateCallback4.onPrepared();
                            }
                        }
                        PreEditMediaPlayer.this.checkSeekRequest();
                        if (!PreEditMediaPlayer.this.continuousSeekingFlag && (playerStateCallback2 = PreEditMediaPlayer.this.callback) != null) {
                            playerStateCallback2.onBufferingEnd();
                        }
                    } else if (i == 4 && (playerStateCallback3 = PreEditMediaPlayer.this.callback) != null) {
                        playerStateCallback3.onComplete();
                    }
                } else if (!PreEditMediaPlayer.this.continuousSeekingFlag && (playerStateCallback = PreEditMediaPlayer.this.callback) != null) {
                    playerStateCallback.onBufferingStart();
                }
                if (PreEditMediaPlayer.this.playingFlag != z) {
                    PreEditMediaPlayer.this.playingFlag = z;
                    PlayerStateCallback playerStateCallback5 = PreEditMediaPlayer.this.callback;
                    if (playerStateCallback5 != null) {
                        playerStateCallback5.onPlayPauseStateChanged(PreEditMediaPlayer.this.playingFlag);
                    }
                    Utils.handler.removeCallbacks(PreEditMediaPlayer.this.updateTimeRunnable);
                    if (PreEditMediaPlayer.this.playingFlag) {
                        Utils.post(PreEditMediaPlayer.this.updateTimeRunnable);
                    }
                }
            }

            @Override // com.google.android.exoplayer2.Player.EventListener
            public void onPlayerError(ExoPlaybackException exoPlaybackException) {
                String message;
                PlayerStateCallback playerStateCallback = PreEditMediaPlayer.this.callback;
                if (playerStateCallback != null) {
                    if (exoPlaybackException == null || (message = exoPlaybackException.getMessage()) == null) {
                        message = IjkMediaMeta.IJKM_VAL_TYPE__UNKNOWN;
                    }
                    playerStateCallback.onError(message);
                }
            }
        });
        this.player.addVideoListener(new VideoListener() { // from class: com.narvii.pre_editing.player.PreEditMediaPlayer.2
            @Override // com.google.android.exoplayer2.video.VideoListener
            public /* synthetic */ void onRenderedFirstFrame() {
                VideoListener.CC.$default$onRenderedFirstFrame(this);
            }

            @Override // com.google.android.exoplayer2.video.VideoListener
            public /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
                VideoListener.CC.$default$onSurfaceSizeChanged(this, i, i2);
            }

            @Override // com.google.android.exoplayer2.video.VideoListener
            public void onVideoSizeChanged(int i, int i2, int i3, float f) {
                PreEditMediaPlayer.this.getView().setVideoSize(i, i2);
            }
        });
        this.view.setKeepScreenOn(true);
        this.view.init(new ISurfaceListener() { // from class: com.narvii.pre_editing.player.PreEditMediaPlayer.3
            @Override // com.narvii.nvplayerview.ISurfaceListener
            public /* synthetic */ void surfaceDestroyed(Surface surface) {
                ISurfaceListener.CC.$default$surfaceDestroyed(this, surface);
            }

            @Override // com.narvii.nvplayerview.ISurfaceListener
            public /* synthetic */ void surfaceSizeChanged(Surface surface, int i, int i2) {
                ISurfaceListener.CC.$default$surfaceSizeChanged(this, surface, i, i2);
            }

            @Override // com.narvii.nvplayerview.ISurfaceListener
            public void surfaceCreated(Surface surface) {
                PreEditMediaPlayer.this.player.setVideoSurface(surface);
                PreEditMediaPlayer.this.start(5);
            }
        });
        this.view.setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.pre_editing.player.PreEditMediaPlayer.4
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent event) {
                Intrinsics.checkExpressionValueIsNotNull(event, "event");
                if (event.getActionMasked() == 0) {
                    SimpleExoPlayer player = PreEditMediaPlayer.this.player;
                    Intrinsics.checkExpressionValueIsNotNull(player, "player");
                    if (!player.getPlayWhenReady()) {
                        PreEditMediaPlayer.this.start(50);
                    } else {
                        PreEditMediaPlayer.this.pause(50);
                    }
                    PlayerStateCallback playerStateCallback = PreEditMediaPlayer.this.callback;
                    if (playerStateCallback != null) {
                        SimpleExoPlayer player2 = PreEditMediaPlayer.this.player;
                        Intrinsics.checkExpressionValueIsNotNull(player2, "player");
                        playerStateCallback.onPlayPauseStateChanged(player2.getPlayWhenReady());
                    }
                }
                return true;
            }
        });
    }

    public final Context getContext() {
        return this.context;
    }

    public final NVVideoView getView() {
        return this.view;
    }

    public final void prepare(String str) {
        ExtractorMediaSource extractorMediaSourceCreateMediaSource;
        if (TextUtils.isEmpty(str)) {
            PlayerStateCallback playerStateCallback = this.callback;
            if (playerStateCallback != null) {
                playerStateCallback.onError("empty url");
                return;
            }
            return;
        }
        if (new File(str).exists()) {
            extractorMediaSourceCreateMediaSource = new ExtractorMediaSource.Factory(new DefaultDataSourceFactory(this.context, "ExoPlayer")).createMediaSource(Uri.parse(str));
        } else {
            extractorMediaSourceCreateMediaSource = new ExtractorMediaSource.Factory(new DefaultHttpDataSourceFactory("ExoPlayer")).createMediaSource(Uri.parse(str));
        }
        this.player.prepare(extractorMediaSourceCreateMediaSource);
    }

    public final void handleResume() {
        this.player.setVideoSurface(this.view.getSurface());
        start(10);
    }

    public final void handlePause() {
        pause(10);
    }

    public final void pause(int i) {
        if (this.currentPausePriority < i) {
            this.currentPausePriority = i;
            SimpleExoPlayer player = this.player;
            Intrinsics.checkExpressionValueIsNotNull(player, "player");
            player.setPlayWhenReady(false);
        }
    }

    public final void start(int i) {
        if (this.currentPausePriority <= i) {
            SimpleExoPlayer player = this.player;
            Intrinsics.checkExpressionValueIsNotNull(player, "player");
            player.setPlayWhenReady(true);
            this.currentPausePriority = 0;
        }
    }

    public final void release() {
        this.isPrepared = false;
        this.player.release();
        Utils.handler.removeCallbacks(this.updateTimeRunnable);
    }

    public static /* synthetic */ void seekTo$default(PreEditMediaPlayer preEditMediaPlayer, long j, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        preEditMediaPlayer.seekTo(j, z);
    }

    public final void seekTo(long j, boolean z) {
        synchronized (this.seekReqQueue) {
            if (z) {
                this.seekReqQueue.clear();
                this.player.seekTo(j);
            } else {
                this.seekReqQueue.add(Long.valueOf(j));
                if (this.seekReqQueue.size() >= 2) {
                    this.seekReqQueue.removeFirst();
                }
                SimpleExoPlayer player = this.player;
                Intrinsics.checkExpressionValueIsNotNull(player, "player");
                if (player.getPlaybackState() == 3) {
                    checkSeekRequest();
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final boolean isPrepared() {
        return this.isPrepared;
    }

    public final long getDuration() {
        SimpleExoPlayer player = this.player;
        Intrinsics.checkExpressionValueIsNotNull(player, "player");
        return player.getDuration();
    }

    public final void setReplayTime(long j, long j2) {
        this.replayStartTime = j;
        this.replayEndTime = j2;
    }

    public final void setPlayStateCallback(PlayerStateCallback callback) {
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        this.callback = callback;
    }

    public final void setInContinuousSeekingMode(boolean z) {
        this.continuousSeekingFlag = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkSeekRequest() {
        synchronized (this.seekReqQueue) {
            if (!this.seekReqQueue.isEmpty()) {
                Long time = this.seekReqQueue.removeFirst();
                SimpleExoPlayer simpleExoPlayer = this.player;
                Intrinsics.checkExpressionValueIsNotNull(time, "time");
                simpleExoPlayer.seekTo(time.longValue());
            }
            Unit unit = Unit.INSTANCE;
        }
    }
}
