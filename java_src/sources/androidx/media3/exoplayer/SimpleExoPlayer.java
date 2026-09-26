package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.BasePlayer;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.extractor.ExtractorsFactory;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
@Deprecated
public class SimpleExoPlayer extends BasePlayer implements ExoPlayer, ExoPlayer.AudioComponent, ExoPlayer.VideoComponent, ExoPlayer.TextComponent, ExoPlayer.DeviceComponent {
    private final ConditionVariable constructorFinished;
    private final ExoPlayerImpl player;

    @Deprecated
    public static final class Builder {
        private final ExoPlayer.Builder wrappedBuilder;

        @Deprecated
        public Builder(Context context) {
            this.wrappedBuilder = new ExoPlayer.Builder(context);
        }

        @Deprecated
        public Builder(Context context, RenderersFactory renderersFactory) {
            this.wrappedBuilder = new ExoPlayer.Builder(context, renderersFactory);
        }

        @Deprecated
        public Builder(Context context, ExtractorsFactory extractorsFactory) {
            this.wrappedBuilder = new ExoPlayer.Builder(context, new DefaultMediaSourceFactory(context, extractorsFactory));
        }

        @Deprecated
        public Builder(Context context, RenderersFactory renderersFactory, ExtractorsFactory extractorsFactory) {
            this.wrappedBuilder = new ExoPlayer.Builder(context, renderersFactory, new DefaultMediaSourceFactory(context, extractorsFactory));
        }

        @Deprecated
        public Builder(Context context, RenderersFactory renderersFactory, TrackSelector trackSelector, MediaSource.Factory factory, LoadControl loadControl, BandwidthMeter bandwidthMeter, AnalyticsCollector analyticsCollector) {
            this.wrappedBuilder = new ExoPlayer.Builder(context, renderersFactory, factory, trackSelector, loadControl, bandwidthMeter, analyticsCollector);
        }
    }

    private void a0() {
        this.constructorFinished.c();
    }

    @Override // androidx.media3.common.Player
    public long A() {
        a0();
        return this.player.A();
    }

    @Override // androidx.media3.common.Player
    public void B(int i10, int i11) {
        a0();
        this.player.B(i10, i11);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    @Nullable
    public DecoderCounters D() {
        a0();
        return this.player.D();
    }

    @Override // androidx.media3.common.Player
    public void E(TrackSelectionParameters trackSelectionParameters) {
        a0();
        this.player.E(trackSelectionParameters);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    @Nullable
    public DecoderCounters F() {
        a0();
        return this.player.F();
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void H(boolean z6) {
        a0();
        this.player.H(z6);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    @Nullable
    public Format I() {
        a0();
        return this.player.I();
    }

    @Override // androidx.media3.common.Player
    public void K(Player.Listener listener) {
        a0();
        this.player.K(listener);
    }

    @Override // androidx.media3.common.Player
    public void L(Player.Listener listener) {
        a0();
        this.player.L(listener);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    @Nullable
    public Format M() {
        a0();
        return this.player.M();
    }

    @Override // androidx.media3.common.Player
    public void N(int i10, List<MediaItem> list) {
        a0();
        this.player.N(i10, list);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void O(MediaSource mediaSource) {
        a0();
        this.player.O(mediaSource);
    }

    @Override // androidx.media3.common.BasePlayer
    @VisibleForTesting
    public void U(int i10, long j6, int i11, boolean z6) {
        a0();
        this.player.U(i10, j6, i11, z6);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    @Deprecated
    public void a(MediaSource mediaSource) {
        a0();
        this.player.a(mediaSource);
    }

    @Override // androidx.media3.common.Player
    public void b(PlaybackParameters playbackParameters) {
        a0();
        this.player.b(playbackParameters);
    }

    @Override // androidx.media3.common.Player
    @Nullable
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public ExoPlaybackException d() {
        a0();
        return this.player.d();
    }

    @Override // androidx.media3.common.Player
    public long c() {
        a0();
        return this.player.c();
    }

    @Override // androidx.media3.common.Player
    public void clearVideoSurface() {
        a0();
        this.player.clearVideoSurface();
    }

    @Override // androidx.media3.common.Player
    public void clearVideoSurfaceView(@Nullable SurfaceView surfaceView) {
        a0();
        this.player.clearVideoSurfaceView(surfaceView);
    }

    @Override // androidx.media3.common.Player
    public void clearVideoTextureView(@Nullable TextureView textureView) {
        a0();
        this.player.clearVideoTextureView(textureView);
    }

    @Override // androidx.media3.common.Player
    public Tracks e() {
        a0();
        return this.player.e();
    }

    @Override // androidx.media3.common.Player
    public long getContentPosition() {
        a0();
        return this.player.getContentPosition();
    }

    @Override // androidx.media3.common.Player
    public int getCurrentAdGroupIndex() {
        a0();
        return this.player.getCurrentAdGroupIndex();
    }

    @Override // androidx.media3.common.Player
    public int getCurrentAdIndexInAdGroup() {
        a0();
        return this.player.getCurrentAdIndexInAdGroup();
    }

    @Override // androidx.media3.common.Player
    public int getCurrentPeriodIndex() {
        a0();
        return this.player.getCurrentPeriodIndex();
    }

    @Override // androidx.media3.common.Player
    public long getCurrentPosition() {
        a0();
        return this.player.getCurrentPosition();
    }

    @Override // androidx.media3.common.Player
    public Timeline getCurrentTimeline() {
        a0();
        return this.player.getCurrentTimeline();
    }

    @Override // androidx.media3.common.Player
    public long getDuration() {
        a0();
        return this.player.getDuration();
    }

    @Override // androidx.media3.common.Player
    public boolean getPlayWhenReady() {
        a0();
        return this.player.getPlayWhenReady();
    }

    @Override // androidx.media3.common.Player
    public PlaybackParameters getPlaybackParameters() {
        a0();
        return this.player.getPlaybackParameters();
    }

    @Override // androidx.media3.common.Player
    public int getPlaybackState() {
        a0();
        return this.player.getPlaybackState();
    }

    @Override // androidx.media3.common.Player
    public int getRepeatMode() {
        a0();
        return this.player.getRepeatMode();
    }

    @Override // androidx.media3.common.Player
    public boolean getShuffleModeEnabled() {
        a0();
        return this.player.getShuffleModeEnabled();
    }

    @Override // androidx.media3.common.Player
    public float getVolume() {
        a0();
        return this.player.getVolume();
    }

    @Override // androidx.media3.common.Player
    public TrackSelectionParameters h() {
        a0();
        return this.player.h();
    }

    @Override // androidx.media3.common.Player
    public long i() {
        a0();
        return this.player.i();
    }

    @Override // androidx.media3.common.Player
    public boolean isPlayingAd() {
        a0();
        return this.player.isPlayingAd();
    }

    @Override // androidx.media3.common.Player
    public long j() {
        a0();
        return this.player.j();
    }

    @Override // androidx.media3.common.Player
    public long l() {
        a0();
        return this.player.l();
    }

    @Override // androidx.media3.common.Player
    public CueGroup p() {
        a0();
        return this.player.p();
    }

    @Override // androidx.media3.common.Player
    public void prepare() {
        a0();
        this.player.prepare();
    }

    @Override // androidx.media3.common.Player
    public int r() {
        a0();
        return this.player.r();
    }

    @Override // androidx.media3.common.Player
    public void release() {
        a0();
        this.player.release();
    }

    @Override // androidx.media3.common.Player
    public Looper s() {
        a0();
        return this.player.s();
    }

    @Override // androidx.media3.common.Player
    public void setPlayWhenReady(boolean z6) {
        a0();
        this.player.setPlayWhenReady(z6);
    }

    @Override // androidx.media3.common.Player
    public void setRepeatMode(int i10) {
        a0();
        this.player.setRepeatMode(i10);
    }

    @Override // androidx.media3.common.Player
    public void setShuffleModeEnabled(boolean z6) {
        a0();
        this.player.setShuffleModeEnabled(z6);
    }

    @Override // androidx.media3.common.Player
    public void setVideoSurface(@Nullable Surface surface) {
        a0();
        this.player.setVideoSurface(surface);
    }

    @Override // androidx.media3.common.Player
    public void setVideoSurfaceView(@Nullable SurfaceView surfaceView) {
        a0();
        this.player.setVideoSurfaceView(surfaceView);
    }

    @Override // androidx.media3.common.Player
    public void setVideoTextureView(@Nullable TextureView textureView) {
        a0();
        this.player.setVideoTextureView(textureView);
    }

    @Override // androidx.media3.common.Player
    public void setVolume(float f) {
        a0();
        this.player.setVolume(f);
    }

    @Override // androidx.media3.common.Player
    public void stop() {
        a0();
        this.player.stop();
    }

    @Override // androidx.media3.common.Player
    public Player.Commands u() {
        a0();
        return this.player.u();
    }

    @Override // androidx.media3.common.Player
    public VideoSize v() {
        a0();
        return this.player.v();
    }

    @Override // androidx.media3.common.Player
    public int x() {
        a0();
        return this.player.x();
    }

    @Override // androidx.media3.common.Player
    public MediaMetadata z() {
        a0();
        return this.player.z();
    }
}
