package androidx.media3.exoplayer.util;

import android.annotation.SuppressLint;
import android.os.Looper;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.os.EnvironmentCompat;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.ColorInfo;
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
import androidx.media3.common.c0;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.ExoPlayer;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
public class DebugTextViewHelper {
    private static final int REFRESH_INTERVAL_MS = 1000;
    private final ExoPlayer player;
    private boolean started;
    private final TextView textView;
    private final Updater updater;

    private final class Updater implements Player.Listener, Runnable {
        private Updater() {
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
            c0.a(this, audioAttributes);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
            c0.c(this, commands);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onCues(CueGroup cueGroup) {
            c0.d(this, cueGroup);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
            c0.f(this, deviceInfo);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onDeviceVolumeChanged(int i10, boolean z6) {
            c0.g(this, i10, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onEvents(Player player, Player.Events events) {
            c0.h(this, player, events);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onIsLoadingChanged(boolean z6) {
            c0.i(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onIsPlayingChanged(boolean z6) {
            c0.j(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onLoadingChanged(boolean z6) {
            c0.k(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j6) {
            c0.l(this, j6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i10) {
            c0.m(this, mediaItem, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
            c0.n(this, mediaMetadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onMetadata(Metadata metadata) {
            c0.o(this, metadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
            c0.q(this, playbackParameters);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i10) {
            c0.s(this, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlayerError(PlaybackException playbackException) {
            c0.t(this, playbackException);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
            c0.u(this, playbackException);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlayerStateChanged(boolean z6, int i10) {
            c0.v(this, z6, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
            c0.w(this, mediaMetadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onPositionDiscontinuity(int i10) {
            c0.x(this, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onRenderedFirstFrame() {
            c0.z(this);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onRepeatModeChanged(int i10) {
            c0.A(this, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onSeekBackIncrementChanged(long j6) {
            c0.B(this, j6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onSeekForwardIncrementChanged(long j6) {
            c0.C(this, j6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onShuffleModeEnabledChanged(boolean z6) {
            c0.D(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z6) {
            c0.E(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onSurfaceSizeChanged(int i10, int i11) {
            c0.F(this, i10, i11);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onTimelineChanged(Timeline timeline, int i10) {
            c0.G(this, timeline, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
            c0.H(this, trackSelectionParameters);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onTracksChanged(Tracks tracks) {
            c0.I(this, tracks);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
            c0.J(this, videoSize);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onVolumeChanged(float f) {
            c0.K(this, f);
        }

        @Override // androidx.media3.common.Player.Listener
        public /* synthetic */ void onCues(List list) {
            c0.e(this, list);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlayWhenReadyChanged(boolean z6, int i10) {
            DebugTextViewHelper.this.i();
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlaybackStateChanged(int i10) {
            DebugTextViewHelper.this.i();
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i10) {
            DebugTextViewHelper.this.i();
        }

        @Override // java.lang.Runnable
        public void run() {
            DebugTextViewHelper.this.i();
        }
    }

    private static String b(@Nullable ColorInfo colorInfo) {
        if (colorInfo == null || !colorInfo.g()) {
            return "";
        }
        return " colr:" + colorInfo.k();
    }

    private static String d(DecoderCounters decoderCounters) {
        if (decoderCounters == null) {
            return "";
        }
        decoderCounters.c();
        return " sib:" + decoderCounters.skippedInputBufferCount + " sb:" + decoderCounters.skippedOutputBufferCount + " rb:" + decoderCounters.renderedOutputBufferCount + " db:" + decoderCounters.droppedBufferCount + " mcdb:" + decoderCounters.maxConsecutiveDroppedBufferCount + " dk:" + decoderCounters.droppedToKeyframeCount;
    }

    private static String e(float f) {
        if (f == -1.0f || f == 1.0f) {
            return "";
        }
        return " par:" + String.format(Locale.US, "%.02f", Float.valueOf(f));
    }

    private static String g(long j6, int i10) {
        return i10 == 0 ? "N/A" : String.valueOf((long) (j6 / ((double) i10)));
    }

    @UnstableApi
    protected String a() {
        Format formatM = this.player.M();
        DecoderCounters decoderCountersF = this.player.F();
        if (formatM == null || decoderCountersF == null) {
            return "";
        }
        return "\n" + formatM.sampleMimeType + "(id:" + formatM.id + " hz:" + formatM.sampleRate + " ch:" + formatM.channelCount + d(decoderCountersF) + ")";
    }

    @UnstableApi
    protected String c() {
        return f() + h() + a();
    }

    @UnstableApi
    protected String f() {
        String str;
        int playbackState = this.player.getPlaybackState();
        if (playbackState == 1) {
            str = "idle";
        } else if (playbackState == 2) {
            str = "buffering";
        } else if (playbackState != 3) {
            str = playbackState != 4 ? EnvironmentCompat.MEDIA_UNKNOWN : "ended";
        } else {
            str = "ready";
        }
        return String.format("playWhenReady:%s playbackState:%s item:%s", Boolean.valueOf(this.player.getPlayWhenReady()), str, Integer.valueOf(this.player.x()));
    }

    @UnstableApi
    protected String h() {
        Format formatI = this.player.I();
        DecoderCounters decoderCountersD = this.player.D();
        if (formatI == null || decoderCountersD == null) {
            return "";
        }
        return "\n" + formatI.sampleMimeType + "(id:" + formatI.id + " r:" + formatI.width + "x" + formatI.height + b(formatI.colorInfo) + e(formatI.pixelWidthHeightRatio) + d(decoderCountersD) + " vfpo: " + g(decoderCountersD.totalVideoFrameProcessingOffsetUs, decoderCountersD.videoFrameProcessingOffsetCount) + ")";
    }

    @SuppressLint({"SetTextI18n"})
    @UnstableApi
    protected final void i() {
        this.textView.setText(c());
        this.textView.removeCallbacks(this.updater);
        this.textView.postDelayed(this.updater, 1000L);
    }

    public DebugTextViewHelper(ExoPlayer exoPlayer, TextView textView) {
        boolean z6;
        if (exoPlayer.s() == Looper.getMainLooper()) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.a(z6);
        this.player = exoPlayer;
        this.textView = textView;
        this.updater = new Updater();
    }
}
