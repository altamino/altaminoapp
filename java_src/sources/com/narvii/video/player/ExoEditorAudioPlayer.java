package com.narvii.video.player;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.Nullable;
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
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.source.ClippingMediaSource;
import androidx.media3.exoplayer.source.ConcatenatingMediaSource;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import com.narvii.video.interfaces.IEditorAudioPlayer;
import com.narvii.video.model.AVClipInfoPack;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.u;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class ExoEditorAudioPlayer implements IEditorAudioPlayer, Player.Listener {

    @NotNull
    private final ArrayList<AVClipInfoPack> audioClipList;

    @NotNull
    private final ArrayList<IEditorAudioPlayer.IAudioEventListener> audioEventListenerList;

    @NotNull
    private final Context context;

    @NotNull
    private final ExoPlayer player;

    @NotNull
    public final Context getContext() {
        return this.context;
    }

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
    public /* bridge */ /* synthetic */ void onMediaItemTransition(@Nullable MediaItem mediaItem, int i10) {
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
    public /* bridge */ /* synthetic */ void onPlayWhenReadyChanged(boolean z6, int i10) {
        c0.p(this, z6, i10);
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
    public /* bridge */ /* synthetic */ void onPlayerErrorChanged(@Nullable PlaybackException playbackException) {
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
    public /* bridge */ /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
        c0.J(this, videoSize);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onVolumeChanged(float f) {
        c0.K(this, f);
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void seekTo(long j6) {
        Iterator<AVClipInfoPack> it = this.audioClipList.iterator();
        int i10 = 0;
        int i11 = 0;
        while (it.hasNext()) {
            i11 += it.next().visibleDurationInMs;
        }
        long j10 = 0;
        if (j6 < 0 || j6 > i11) {
            return;
        }
        int size = this.audioClipList.size();
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            if (this.audioClipList.get(i13).visibleDurationInMs + i12 >= j6) {
                j10 = j6 - ((long) i12);
                i10 = i13;
                break;
            }
            i12 += this.audioClipList.get(i13).visibleDurationInMs;
        }
        this.player.seekTo(i10, j10);
    }

    public ExoEditorAudioPlayer(@NotNull Context context) {
        t.j(context, "context");
        this.context = context;
        ExoPlayer exoPlayerT = new ExoPlayer.Builder(context).P(new DefaultTrackSelector(context)).t();
        t.i(exoPlayerT, "build(...)");
        this.player = exoPlayerT;
        this.audioEventListenerList = new ArrayList<>();
        this.audioClipList = new ArrayList<>();
        exoPlayerT.L(this);
    }

    private final MediaSource buildMediaSource(AVClipInfoPack aVClipInfoPack) {
        MediaItem mediaItemD = MediaItem.d(Uri.parse(aVClipInfoPack.inputPath));
        t.i(mediaItemD, "fromUri(...)");
        ProgressiveMediaSource progressiveMediaSourceD = new ProgressiveMediaSource.Factory(new DefaultDataSourceFactory(this.context, DatabaseProvider.TABLE_PREFIX)).d(mediaItemD);
        t.i(progressiveMediaSourceD, "createMediaSource(...)");
        return progressiveMediaSourceD;
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void addAudioEventListener(@NotNull IEditorAudioPlayer.IAudioEventListener listener) {
        t.j(listener, "listener");
        if (this.audioEventListenerList.contains(listener)) {
            return;
        }
        this.audioEventListenerList.add(listener);
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    @NotNull
    public u<Integer, Long> getCurrentPositionInClip() {
        return new u<>(Integer.valueOf(this.player.getCurrentWindowIndex()), Long.valueOf(this.player.getCurrentPosition()));
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public long getCurrentPositionInTimeLine() {
        if (this.audioClipList.isEmpty()) {
            return 0L;
        }
        int currentWindowIndex = this.player.getCurrentWindowIndex();
        int i10 = 0;
        for (int i11 = 0; i11 < currentWindowIndex; i11++) {
            i10 += this.audioClipList.get(i11).visibleDurationInMs;
        }
        return this.player.getCurrentPosition() + ((long) i10);
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public int getCurrentWindowIndex() {
        return this.player.getCurrentWindowIndex();
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public boolean hasPrepared() {
        return this.player.getPlaybackState() >= 3;
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public boolean isPlaying() {
        return this.player.getPlayWhenReady() && this.player.getPlaybackState() == 3;
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
        Iterator<IEditorAudioPlayer.IAudioEventListener> it = this.audioEventListenerList.iterator();
        while (it.hasNext()) {
            it.next().onAudioError();
        }
    }

    @Override // androidx.media3.common.Player.Listener
    public /* bridge */ /* synthetic */ void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i10) {
        c0.y(this, positionInfo, positionInfo2, i10);
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void pause() {
        this.player.setPlayWhenReady(false);
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void release() {
        this.player.release();
        this.player.K(this);
        this.audioEventListenerList.clear();
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void removeAudioEventListener(@NotNull IEditorAudioPlayer.IAudioEventListener listener) {
        t.j(listener, "listener");
        this.audioEventListenerList.remove(listener);
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void setConcatenatingDataSource(@NotNull List<? extends AVClipInfoPack> clipInfoList, boolean z6) {
        t.j(clipInfoList, "clipInfoList");
        this.audioClipList.clear();
        this.audioClipList.addAll(clipInfoList);
        ConcatenatingMediaSource concatenatingMediaSource = new ConcatenatingMediaSource(new MediaSource[0]);
        for (AVClipInfoPack aVClipInfoPack : clipInfoList) {
            concatenatingMediaSource.y0(new ClippingMediaSource(buildMediaSource(aVClipInfoPack), aVClipInfoPack.hasInvisibleFrames() ? ((long) aVClipInfoPack.trimStartInMs) * 1000 : 0L, ((long) (aVClipInfoPack.hasInvisibleFrames() ? aVClipInfoPack.trimEndInMs : aVClipInfoPack.orgDurationInMs)) * 1000));
        }
        this.player.a(concatenatingMediaSource);
        this.player.setPlayWhenReady(z6);
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void setDataSource(@NotNull AVClipInfoPack clipInfoPack, boolean z6) {
        t.j(clipInfoPack, "clipInfoPack");
        this.audioClipList.clear();
        this.audioClipList.add(clipInfoPack);
        this.player.a(new ClippingMediaSource(buildMediaSource(clipInfoPack), clipInfoPack.hasInvisibleFrames() ? ((long) clipInfoPack.trimStartInMs) * 1000 : 0L, ((long) (clipInfoPack.hasInvisibleFrames() ? clipInfoPack.trimEndInMs : clipInfoPack.orgDurationInMs)) * 1000));
        this.player.setPlayWhenReady(z6);
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void setVolume(float f) {
        this.player.setVolume(f);
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void start() {
        this.player.setPlayWhenReady(true);
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void stop() {
        this.player.G();
        this.player.stop();
    }

    @Override // androidx.media3.common.Player.Listener
    public void onPlaybackStateChanged(int i10) {
        c0.r(this, i10);
        if (i10 != 3) {
            if (i10 == 4) {
                Iterator<IEditorAudioPlayer.IAudioEventListener> it = this.audioEventListenerList.iterator();
                while (it.hasNext()) {
                    it.next().onAudioCompleted();
                }
                return;
            }
            return;
        }
        Iterator<IEditorAudioPlayer.IAudioEventListener> it2 = this.audioEventListenerList.iterator();
        while (it2.hasNext()) {
            it2.next().onAudioPrepared();
        }
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void seekTo(int i10, long j6) {
        if (i10 >= 0) {
            if (this.player.getCurrentTimeline().u() || i10 < this.player.getCurrentTimeline().t()) {
                this.player.seekTo(i10, j6);
            }
        }
    }
}
