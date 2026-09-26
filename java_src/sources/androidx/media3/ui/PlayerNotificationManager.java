package androidx.media3.ui;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
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
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@UnstableApi
public class PlayerNotificationManager {
    private static final String ACTION_DISMISS = "androidx.media3.ui.notification.dismiss";
    public static final String ACTION_FAST_FORWARD = "androidx.media3.ui.notification.ffwd";
    public static final String ACTION_NEXT = "androidx.media3.ui.notification.next";
    public static final String ACTION_PAUSE = "androidx.media3.ui.notification.pause";
    public static final String ACTION_PLAY = "androidx.media3.ui.notification.play";
    public static final String ACTION_PREVIOUS = "androidx.media3.ui.notification.prev";
    public static final String ACTION_REWIND = "androidx.media3.ui.notification.rewind";
    public static final String ACTION_STOP = "androidx.media3.ui.notification.stop";
    public static final String EXTRA_INSTANCE_ID = "INSTANCE_ID";
    private static final int MSG_START_OR_UPDATE_NOTIFICATION = 0;
    private static final int MSG_UPDATE_NOTIFICATION_BITMAP = 1;
    private static int instanceIdCounter;
    private int badgeIconType;

    @Nullable
    private NotificationCompat.Builder builder;

    @Nullable
    private List<NotificationCompat.Action> builderActions;
    private final String channelId;
    private int color;
    private boolean colorized;
    private final Context context;
    private int currentNotificationTag;

    @Nullable
    private final CustomActionReceiver customActionReceiver;
    private final Map<String, NotificationCompat.Action> customActions;
    private int defaults;
    private final PendingIntent dismissPendingIntent;

    @Nullable
    private String groupKey;
    private final int instanceId;
    private final IntentFilter intentFilter;
    private boolean isNotificationStarted;
    private final Handler mainHandler;
    private final MediaDescriptionAdapter mediaDescriptionAdapter;

    @Nullable
    private MediaSessionCompat.Token mediaSessionToken;
    private final NotificationBroadcastReceiver notificationBroadcastReceiver;
    private final int notificationId;

    @Nullable
    private final NotificationListener notificationListener;
    private final NotificationManagerCompat notificationManager;
    private final Map<String, NotificationCompat.Action> playbackActions;

    @Nullable
    private Player player;
    private final Player.Listener playerListener;
    private int priority;

    @DrawableRes
    private int smallIconResourceId;
    private boolean useChronometer;
    private boolean useFastForwardAction;
    private boolean useFastForwardActionInCompactView;
    private boolean useNextAction;
    private boolean useNextActionInCompactView;
    private boolean usePlayPauseActions;
    private boolean usePreviousAction;
    private boolean usePreviousActionInCompactView;
    private boolean useRewindAction;
    private boolean useRewindActionInCompactView;
    private boolean useStopAction;
    private int visibility;

    public final class BitmapCallback {
        private final int notificationTag;
        final /* synthetic */ PlayerNotificationManager this$0;
    }

    public static class Builder {
        protected int channelDescriptionResourceId;
        protected final String channelId;
        protected int channelImportance;
        protected int channelNameResourceId;
        protected final Context context;

        @Nullable
        protected CustomActionReceiver customActionReceiver;
        protected int fastForwardActionIconResourceId;

        @Nullable
        protected String groupKey;
        protected MediaDescriptionAdapter mediaDescriptionAdapter;
        protected int nextActionIconResourceId;
        protected final int notificationId;

        @Nullable
        protected NotificationListener notificationListener;
        protected int pauseActionIconResourceId;
        protected int playActionIconResourceId;
        protected int previousActionIconResourceId;
        protected int rewindActionIconResourceId;
        protected int smallIconResourceId;
        protected int stopActionIconResourceId;

        @Deprecated
        public Builder(Context context, int i10, String str, MediaDescriptionAdapter mediaDescriptionAdapter) {
            this(context, i10, str);
            this.mediaDescriptionAdapter = mediaDescriptionAdapter;
        }

        public Builder(Context context, @IntRange int i10, String str) {
            Assertions.a(i10 > 0);
            this.context = context;
            this.notificationId = i10;
            this.channelId = str;
            this.channelImportance = 2;
            this.mediaDescriptionAdapter = new DefaultMediaDescriptionAdapter(null);
            this.smallIconResourceId = R.drawable.exo_notification_small_icon;
            this.playActionIconResourceId = R.drawable.exo_notification_play;
            this.pauseActionIconResourceId = R.drawable.exo_notification_pause;
            this.stopActionIconResourceId = R.drawable.exo_notification_stop;
            this.rewindActionIconResourceId = R.drawable.exo_notification_rewind;
            this.fastForwardActionIconResourceId = R.drawable.exo_notification_fastforward;
            this.previousActionIconResourceId = R.drawable.exo_notification_previous;
            this.nextActionIconResourceId = R.drawable.exo_notification_next;
        }
    }

    public interface CustomActionReceiver {
        void a(Player player, String str, Intent intent);
    }

    public interface MediaDescriptionAdapter {
    }

    private class NotificationBroadcastReceiver extends BroadcastReceiver {
        final /* synthetic */ PlayerNotificationManager this$0;

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Player player = this.this$0.player;
            if (player != null && this.this$0.isNotificationStarted && intent.getIntExtra(PlayerNotificationManager.EXTRA_INSTANCE_ID, this.this$0.instanceId) == this.this$0.instanceId) {
                String action = intent.getAction();
                if (PlayerNotificationManager.ACTION_PLAY.equals(action)) {
                    Util.s0(player);
                    return;
                }
                if (PlayerNotificationManager.ACTION_PAUSE.equals(action)) {
                    Util.r0(player);
                    return;
                }
                if (PlayerNotificationManager.ACTION_PREVIOUS.equals(action)) {
                    if (player.g(7)) {
                        player.o();
                        return;
                    }
                    return;
                }
                if (PlayerNotificationManager.ACTION_REWIND.equals(action)) {
                    if (player.g(11)) {
                        player.y();
                        return;
                    }
                    return;
                }
                if (PlayerNotificationManager.ACTION_FAST_FORWARD.equals(action)) {
                    if (player.g(12)) {
                        player.m();
                        return;
                    }
                    return;
                }
                if (PlayerNotificationManager.ACTION_NEXT.equals(action)) {
                    if (player.g(9)) {
                        player.t();
                        return;
                    }
                    return;
                }
                if (PlayerNotificationManager.ACTION_STOP.equals(action)) {
                    if (player.g(3)) {
                        player.stop();
                    }
                    if (player.g(20)) {
                        player.G();
                        return;
                    }
                    return;
                }
                if (PlayerNotificationManager.ACTION_DISMISS.equals(action)) {
                    this.this$0.i(true);
                } else {
                    if (action == null || this.this$0.customActionReceiver == null || !this.this$0.customActions.containsKey(action)) {
                        return;
                    }
                    this.this$0.customActionReceiver.a(player, action, intent);
                }
            }
        }
    }

    public interface NotificationListener {
        void a(int i10, boolean z6);
    }

    private class PlayerListener implements Player.Listener {
        final /* synthetic */ PlayerNotificationManager this$0;

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

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onCues(List list) {
            androidx.media3.common.c0.e(this, list);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onEvents(Player player, Player.Events events) {
            if (events.b(4, 5, 7, 0, 12, 11, 8, 9, 14)) {
                this.this$0.h();
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i10) {
            androidx.media3.common.c0.y(this, positionInfo, positionInfo2, i10);
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Priority {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Visibility {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.mainHandler.hasMessages(0)) {
            return;
        }
        this.mainHandler.sendEmptyMessage(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(boolean z6) {
        if (this.isNotificationStarted) {
            this.isNotificationStarted = false;
            this.mainHandler.removeMessages(0);
            this.notificationManager.b(this.notificationId);
            this.context.unregisterReceiver(this.notificationBroadcastReceiver);
            NotificationListener notificationListener = this.notificationListener;
            if (notificationListener != null) {
                notificationListener.a(this.notificationId, z6);
            }
        }
    }
}
