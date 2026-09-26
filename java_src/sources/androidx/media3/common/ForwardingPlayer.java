package androidx.media3.common;

import android.os.Looper;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.Nullable;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.UnstableApi;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public class ForwardingPlayer implements Player {
    private final Player player;

    private static final class ForwardingListener implements Player.Listener {
        private final ForwardingPlayer forwardingPlayer;
        private final Player.Listener listener;

        @Override // androidx.media3.common.Player.Listener
        public void onCues(List<Cue> list) {
            this.listener.onCues(list);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPositionDiscontinuity(int i10) {
            this.listener.onPositionDiscontinuity(i10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ForwardingListener)) {
                return false;
            }
            ForwardingListener forwardingListener = (ForwardingListener) obj;
            if (this.forwardingPlayer.equals(forwardingListener.forwardingPlayer)) {
                return this.listener.equals(forwardingListener.listener);
            }
            return false;
        }

        public int hashCode() {
            return (this.forwardingPlayer.hashCode() * 31) + this.listener.hashCode();
        }

        @Override // androidx.media3.common.Player.Listener
        public void onAudioAttributesChanged(AudioAttributes audioAttributes) {
            this.listener.onAudioAttributesChanged(audioAttributes);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onAvailableCommandsChanged(Player.Commands commands) {
            this.listener.onAvailableCommandsChanged(commands);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onCues(CueGroup cueGroup) {
            this.listener.onCues(cueGroup);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onDeviceInfoChanged(DeviceInfo deviceInfo) {
            this.listener.onDeviceInfoChanged(deviceInfo);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onDeviceVolumeChanged(int i10, boolean z6) {
            this.listener.onDeviceVolumeChanged(i10, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onEvents(Player player, Player.Events events) {
            this.listener.onEvents(this.forwardingPlayer, events);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onIsLoadingChanged(boolean z6) {
            this.listener.onIsLoadingChanged(z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onIsPlayingChanged(boolean z6) {
            this.listener.onIsPlayingChanged(z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onLoadingChanged(boolean z6) {
            this.listener.onIsLoadingChanged(z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onMaxSeekToPreviousPositionChanged(long j6) {
            this.listener.onMaxSeekToPreviousPositionChanged(j6);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onMediaItemTransition(@Nullable MediaItem mediaItem, int i10) {
            this.listener.onMediaItemTransition(mediaItem, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
            this.listener.onMediaMetadataChanged(mediaMetadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onMetadata(Metadata metadata) {
            this.listener.onMetadata(metadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlayWhenReadyChanged(boolean z6, int i10) {
            this.listener.onPlayWhenReadyChanged(z6, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
            this.listener.onPlaybackParametersChanged(playbackParameters);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlaybackStateChanged(int i10) {
            this.listener.onPlaybackStateChanged(i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlaybackSuppressionReasonChanged(int i10) {
            this.listener.onPlaybackSuppressionReasonChanged(i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlayerError(PlaybackException playbackException) {
            this.listener.onPlayerError(playbackException);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlayerErrorChanged(@Nullable PlaybackException playbackException) {
            this.listener.onPlayerErrorChanged(playbackException);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlayerStateChanged(boolean z6, int i10) {
            this.listener.onPlayerStateChanged(z6, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
            this.listener.onPlaylistMetadataChanged(mediaMetadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i10) {
            this.listener.onPositionDiscontinuity(positionInfo, positionInfo2, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onRenderedFirstFrame() {
            this.listener.onRenderedFirstFrame();
        }

        @Override // androidx.media3.common.Player.Listener
        public void onRepeatModeChanged(int i10) {
            this.listener.onRepeatModeChanged(i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onSeekBackIncrementChanged(long j6) {
            this.listener.onSeekBackIncrementChanged(j6);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onSeekForwardIncrementChanged(long j6) {
            this.listener.onSeekForwardIncrementChanged(j6);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onShuffleModeEnabledChanged(boolean z6) {
            this.listener.onShuffleModeEnabledChanged(z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onSkipSilenceEnabledChanged(boolean z6) {
            this.listener.onSkipSilenceEnabledChanged(z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onSurfaceSizeChanged(int i10, int i11) {
            this.listener.onSurfaceSizeChanged(i10, i11);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onTimelineChanged(Timeline timeline, int i10) {
            this.listener.onTimelineChanged(timeline, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
            this.listener.onTrackSelectionParametersChanged(trackSelectionParameters);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onTracksChanged(Tracks tracks) {
            this.listener.onTracksChanged(tracks);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onVideoSizeChanged(VideoSize videoSize) {
            this.listener.onVideoSizeChanged(videoSize);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onVolumeChanged(float f) {
            this.listener.onVolumeChanged(f);
        }

        public ForwardingListener(ForwardingPlayer forwardingPlayer, Player.Listener listener) {
            this.forwardingPlayer = forwardingPlayer;
            this.listener = listener;
        }
    }

    @Override // androidx.media3.common.Player
    public void seekTo(long j6) {
        this.player.seekTo(j6);
    }

    @Override // androidx.media3.common.Player
    public long A() {
        return this.player.A();
    }

    @Override // androidx.media3.common.Player
    public long C() {
        return this.player.C();
    }

    @Override // androidx.media3.common.Player
    public void E(TrackSelectionParameters trackSelectionParameters) {
        this.player.E(trackSelectionParameters);
    }

    @Override // androidx.media3.common.Player
    public void G() {
        this.player.G();
    }

    @Override // androidx.media3.common.Player
    public void K(Player.Listener listener) {
        this.player.K(new ForwardingListener(this, listener));
    }

    @Override // androidx.media3.common.Player
    public void L(Player.Listener listener) {
        this.player.L(new ForwardingListener(this, listener));
    }

    @Override // androidx.media3.common.Player
    public void b(PlaybackParameters playbackParameters) {
        this.player.b(playbackParameters);
    }

    @Override // androidx.media3.common.Player
    public long c() {
        return this.player.c();
    }

    @Override // androidx.media3.common.Player
    public void clearVideoSurfaceView(@Nullable SurfaceView surfaceView) {
        this.player.clearVideoSurfaceView(surfaceView);
    }

    @Override // androidx.media3.common.Player
    public void clearVideoTextureView(@Nullable TextureView textureView) {
        this.player.clearVideoTextureView(textureView);
    }

    @Override // androidx.media3.common.Player
    @Nullable
    public PlaybackException d() {
        return this.player.d();
    }

    @Override // androidx.media3.common.Player
    public Tracks e() {
        return this.player.e();
    }

    @Override // androidx.media3.common.Player
    public boolean f() {
        return this.player.f();
    }

    @Override // androidx.media3.common.Player
    public boolean g(int i10) {
        return this.player.g(i10);
    }

    @Override // androidx.media3.common.Player
    public long getContentPosition() {
        return this.player.getContentPosition();
    }

    @Override // androidx.media3.common.Player
    public int getCurrentAdGroupIndex() {
        return this.player.getCurrentAdGroupIndex();
    }

    @Override // androidx.media3.common.Player
    public int getCurrentAdIndexInAdGroup() {
        return this.player.getCurrentAdIndexInAdGroup();
    }

    @Override // androidx.media3.common.Player
    public int getCurrentPeriodIndex() {
        return this.player.getCurrentPeriodIndex();
    }

    @Override // androidx.media3.common.Player
    public long getCurrentPosition() {
        return this.player.getCurrentPosition();
    }

    @Override // androidx.media3.common.Player
    public Timeline getCurrentTimeline() {
        return this.player.getCurrentTimeline();
    }

    @Override // androidx.media3.common.Player
    public boolean getPlayWhenReady() {
        return this.player.getPlayWhenReady();
    }

    @Override // androidx.media3.common.Player
    public PlaybackParameters getPlaybackParameters() {
        return this.player.getPlaybackParameters();
    }

    @Override // androidx.media3.common.Player
    public int getPlaybackState() {
        return this.player.getPlaybackState();
    }

    @Override // androidx.media3.common.Player
    public int getRepeatMode() {
        return this.player.getRepeatMode();
    }

    @Override // androidx.media3.common.Player
    public boolean getShuffleModeEnabled() {
        return this.player.getShuffleModeEnabled();
    }

    @Override // androidx.media3.common.Player
    public TrackSelectionParameters h() {
        return this.player.h();
    }

    @Override // androidx.media3.common.Player
    public boolean isPlaying() {
        return this.player.isPlaying();
    }

    @Override // androidx.media3.common.Player
    public boolean isPlayingAd() {
        return this.player.isPlayingAd();
    }

    @Override // androidx.media3.common.Player
    public long j() {
        return this.player.j();
    }

    @Override // androidx.media3.common.Player
    public boolean k() {
        return this.player.k();
    }

    @Override // androidx.media3.common.Player
    public long l() {
        return this.player.l();
    }

    @Override // androidx.media3.common.Player
    public void m() {
        this.player.m();
    }

    @Override // androidx.media3.common.Player
    public boolean n() {
        return this.player.n();
    }

    @Override // androidx.media3.common.Player
    public void o() {
        this.player.o();
    }

    @Override // androidx.media3.common.Player
    public CueGroup p() {
        return this.player.p();
    }

    @Override // androidx.media3.common.Player
    public void pause() {
        this.player.pause();
    }

    @Override // androidx.media3.common.Player
    public void play() {
        this.player.play();
    }

    @Override // androidx.media3.common.Player
    public void prepare() {
        this.player.prepare();
    }

    @Override // androidx.media3.common.Player
    public boolean q() {
        return this.player.q();
    }

    @Override // androidx.media3.common.Player
    public int r() {
        return this.player.r();
    }

    @Override // androidx.media3.common.Player
    public Looper s() {
        return this.player.s();
    }

    @Override // androidx.media3.common.Player
    public void seekTo(int i10, long j6) {
        this.player.seekTo(i10, j6);
    }

    @Override // androidx.media3.common.Player
    public void seekToDefaultPosition() {
        this.player.seekToDefaultPosition();
    }

    @Override // androidx.media3.common.Player
    public void setRepeatMode(int i10) {
        this.player.setRepeatMode(i10);
    }

    @Override // androidx.media3.common.Player
    public void setShuffleModeEnabled(boolean z6) {
        this.player.setShuffleModeEnabled(z6);
    }

    @Override // androidx.media3.common.Player
    public void setVideoSurfaceView(@Nullable SurfaceView surfaceView) {
        this.player.setVideoSurfaceView(surfaceView);
    }

    @Override // androidx.media3.common.Player
    public void setVideoTextureView(@Nullable TextureView textureView) {
        this.player.setVideoTextureView(textureView);
    }

    @Override // androidx.media3.common.Player
    public void stop() {
        this.player.stop();
    }

    @Override // androidx.media3.common.Player
    public void t() {
        this.player.t();
    }

    @Override // androidx.media3.common.Player
    public VideoSize v() {
        return this.player.v();
    }

    @Override // androidx.media3.common.Player
    public boolean w() {
        return this.player.w();
    }

    @Override // androidx.media3.common.Player
    public int x() {
        return this.player.x();
    }

    @Override // androidx.media3.common.Player
    public void y() {
        this.player.y();
    }

    @Override // androidx.media3.common.Player
    public MediaMetadata z() {
        return this.player.z();
    }

    public ForwardingPlayer(Player player) {
        this.player = player;
    }
}
