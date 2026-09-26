package com.narvii.video.player;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.PointF;
import android.net.Uri;
import android.view.Surface;
import android.view.View;
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
import com.narvii.nvplayerview.ISurfaceListener;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.pip.PipInfoPack;
import com.narvii.scene.model.SceneInfo;
import com.narvii.video.attachment.caption.AttachmentDrawRect;
import com.narvii.video.interfaces.IEditorAudioPlayer;
import com.narvii.video.interfaces.IMediaEventListener;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class ExoEditorPreviewPlayer extends BaseEditorPreviewPlayer implements ISurfaceListener {

    @Nullable
    private IEditorAudioPlayer attachedExtraAudioPlayer;

    @NotNull
    private final Context context;
    private int currentMainTrackWindowIndex;
    private int currentPlaybackState;

    @NotNull
    private final ExtraAudioTrackPlugin extraAudioTrackPlugin;
    private boolean inWindowChangingDuringPlayback;
    private boolean isMute;
    private boolean isVideoSeeking;
    private boolean onVideoPrepared;
    private int preparedViceTrackCount;

    @Nullable
    private Surface surface;

    @NotNull
    private final ArrayList<IEditorAudioPlayer> viceTrackPlayerList;

    @NotNull
    private final ExoPlayer videoPlayer;

    @NotNull
    private final NVVideoView videoView;

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @Nullable
    public AttachmentDrawRect getAttachmentDrawRectByTimelinePosition(int i10, @NotNull PointF curPoint) {
        t.j(curPoint, "curPoint");
        return null;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @Nullable
    public List<PointF> getCaptionViewPoints(@NotNull Caption caption) {
        t.j(caption, "caption");
        return null;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @Nullable
    public List<PointF> getStickerViewPoints(@NotNull StickerInfoPack sticker) {
        t.j(sticker, "sticker");
        return null;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public View getVideoView() {
        return this.videoView;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public boolean isAudioPlaying(int i10) {
        if (i10 != -1) {
            if (i10 < 0 || i10 >= this.viceTrackPlayerList.size()) {
                return false;
            }
            return this.viceTrackPlayerList.get(i10).isPlaying();
        }
        Iterator<IEditorAudioPlayer> it = this.viceTrackPlayerList.iterator();
        while (it.hasNext()) {
            if (it.next().isPlaying()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public boolean isSeeking() {
        return this.isVideoSeeking;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @Nullable
    public PointF mapViewToCanonical(@Nullable PointF pointF) {
        return pointF;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void mute() {
        this.isMute = true;
        this.videoPlayer.setVolume(0.0f);
        Iterator<IEditorAudioPlayer> it = this.viceTrackPlayerList.iterator();
        while (it.hasNext()) {
            it.next().setVolume(0.0f);
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public boolean pauseWhenNextSeek() {
        return true;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void playVideo(int i10, int i11) {
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void refreshBackgroundTrack() {
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void refreshCurrentPosition() {
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public void release() {
        super.release();
        this.isMute = false;
        this.videoPlayer.release();
        this.onVideoPrepared = false;
        Iterator<IEditorAudioPlayer> it = this.viceTrackPlayerList.iterator();
        while (it.hasNext()) {
            it.next().release();
        }
        IEditorAudioPlayer iEditorAudioPlayer = this.attachedExtraAudioPlayer;
        if (iEditorAudioPlayer != null) {
            iEditorAudioPlayer.release();
        }
        this.currentPlaybackState = 1;
        this.currentMainTrackWindowIndex = 0;
        this.surface = null;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void removeGlobalAudioClip() {
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void restoreStates() {
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void rotateCaption(@NotNull Caption caption, float f) {
        t.j(caption, "caption");
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void rotateSticker(@NotNull StickerInfoPack sticker, float f) {
        t.j(sticker, "sticker");
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void scaleCaption(@NotNull Caption caption, float f, @Nullable PointF pointF) {
        t.j(caption, "caption");
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void scaleSticker(@NotNull StickerInfoPack sticker, float f, @Nullable PointF pointF) {
        t.j(sticker, "sticker");
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void seekTimeLineTo(int i10) {
        int i11;
        if (this.isVideoSeeking) {
            return;
        }
        Iterator<AVClipInfoPack> it = getVideoClipList().iterator();
        int i12 = 0;
        int i13 = 0;
        while (it.hasNext()) {
            i13 += it.next().visibleDurationInMs;
        }
        if (i10 < 0 || i10 > i13) {
            return;
        }
        int size = getVideoClipList().size();
        int i14 = 0;
        int i15 = 0;
        while (true) {
            if (i14 >= size) {
                i11 = 0;
                break;
            } else if (getVideoClipList().get(i14).visibleDurationInMs + i15 >= i10) {
                i11 = i10 - i15;
                i12 = i14;
                break;
            } else {
                i15 += getVideoClipList().get(i14).visibleDurationInMs;
                i14++;
            }
        }
        this.isVideoSeeking = true;
        this.videoPlayer.seekTo(i12, i11);
        for (AVClipInfoPack aVClipInfoPack : getAdditionalAudioClipList()) {
            t.g(aVClipInfoPack);
            innerSeekAudioTrack(aVClipInfoPack, i10);
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void setGlobalBgmFade(boolean z6, boolean z10) {
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void setPipVideoVolume(@NotNull PipInfoPack pipVideo, float f, int i10) {
        t.j(pipVideo, "pipVideo");
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void setVolumePercent(float f) {
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void start(long j6) {
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void startFromBeginning() {
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public /* synthetic */ void surfaceDestroyed(Surface surface) {
        com.narvii.nvplayerview.a.b(this, surface);
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public /* synthetic */ void surfaceSizeChanged(Surface surface, int i10, int i11) {
        com.narvii.nvplayerview.a.c(this, surface, i10, i11);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void translateCaption(@NotNull Caption caption, @Nullable PointF pointF) {
        t.j(caption, "caption");
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void translateSticker(@NotNull StickerInfoPack sticker, @Nullable PointF pointF) {
        t.j(sticker, "sticker");
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void unMute() {
        this.isMute = false;
        int size = getVideoClipList().size();
        int currentWindowIndex = this.videoPlayer.getCurrentWindowIndex();
        if (currentWindowIndex >= 0 && currentWindowIndex < size) {
            this.videoPlayer.setVolume(getVideoClipList().get(this.videoPlayer.getCurrentWindowIndex()).trackVolume);
        }
        int size2 = getAdditionalAudioClipList().size();
        for (int i10 = 0; i10 < size2; i10++) {
            this.viceTrackPlayerList.get(i10).setVolume(getAdditionalAudioClipList().get(i10).trackVolume);
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void updateClipSpeed(@NotNull AVClipInfoPack clip) {
        t.j(clip, "clip");
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void updateClipTransform(@NotNull AVClipInfoPack clip) {
        t.j(clip, "clip");
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void updatePipVideoTransform(@NotNull PipInfoPack pipVideo) {
        t.j(pipVideo, "pipVideo");
    }

    public ExoEditorPreviewPlayer(@NotNull Context context) {
        t.j(context, "context");
        this.context = context;
        ExoPlayer exoPlayerT = new ExoPlayer.Builder(context).P(new DefaultTrackSelector(context)).t();
        t.i(exoPlayerT, "build(...)");
        this.videoPlayer = exoPlayerT;
        this.viceTrackPlayerList = new ArrayList<>();
        NVVideoView nVVideoView = new NVVideoView(context);
        this.videoView = nVVideoView;
        this.extraAudioTrackPlugin = new ExtraAudioTrackPlugin(context);
        this.currentPlaybackState = 1;
        nVVideoView.init(this, 1);
        nVVideoView.setPredictedRatio(0.5625f);
        exoPlayerT.L(new Player.Listener() { // from class: com.narvii.video.player.ExoEditorPreviewPlayer.1
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
                Iterator<IMediaEventListener> it = ExoEditorPreviewPlayer.this.getMediaEventListeners().iterator();
                while (it.hasNext()) {
                    it.next().onVideoError(null);
                }
            }

            @Override // androidx.media3.common.Player.Listener
            public void onPositionDiscontinuity(@NotNull Player.PositionInfo oldPosition, @NotNull Player.PositionInfo newPosition, int i10) {
                t.j(oldPosition, "oldPosition");
                t.j(newPosition, "newPosition");
                c0.y(this, oldPosition, newPosition, i10);
                if (ExoEditorPreviewPlayer.this.currentMainTrackWindowIndex == ExoEditorPreviewPlayer.this.videoPlayer.getCurrentWindowIndex()) {
                    return;
                }
                if (i10 == 0) {
                    ExoEditorPreviewPlayer.this.inWindowChangingDuringPlayback = true;
                }
                ExoEditorPreviewPlayer exoEditorPreviewPlayer = ExoEditorPreviewPlayer.this;
                exoEditorPreviewPlayer.currentMainTrackWindowIndex = exoEditorPreviewPlayer.videoPlayer.getCurrentWindowIndex();
                int size = ExoEditorPreviewPlayer.this.getVideoClipList().size();
                int i11 = ExoEditorPreviewPlayer.this.currentMainTrackWindowIndex;
                if (i11 >= 0 && i11 < size) {
                    ExoEditorPreviewPlayer exoEditorPreviewPlayer2 = ExoEditorPreviewPlayer.this;
                    exoEditorPreviewPlayer2.setActiveVideoClip(exoEditorPreviewPlayer2.getVideoClipList().get(ExoEditorPreviewPlayer.this.currentMainTrackWindowIndex));
                    ExoPlayer exoPlayer = ExoEditorPreviewPlayer.this.videoPlayer;
                    AVClipInfoPack activeVideoClip = ExoEditorPreviewPlayer.this.getActiveVideoClip();
                    exoPlayer.setVolume(activeVideoClip != null ? activeVideoClip.trackVolume : 1.0f);
                }
                Iterator<IMediaEventListener> it = ExoEditorPreviewPlayer.this.getMediaEventListeners().iterator();
                while (it.hasNext()) {
                    it.next().onVideoWindowIndexChanged(ExoEditorPreviewPlayer.this.currentMainTrackWindowIndex, false);
                }
            }

            @Override // androidx.media3.common.Player.Listener
            public void onPlaybackStateChanged(int i10) {
                c0.r(this, i10);
                if (i10 != ExoEditorPreviewPlayer.this.currentPlaybackState) {
                    ExoEditorPreviewPlayer.this.currentPlaybackState = i10;
                    if (i10 == 3 || i10 == 4) {
                        if (i10 != 3) {
                            if (i10 == 4) {
                                if (ExoEditorPreviewPlayer.this.isVideoSeeking) {
                                    ExoEditorPreviewPlayer.this.isVideoSeeking = false;
                                    Iterator<IMediaEventListener> it = ExoEditorPreviewPlayer.this.getMediaEventListeners().iterator();
                                    while (it.hasNext()) {
                                        it.next().onDoNextVideoSeek();
                                    }
                                }
                                Iterator<IMediaEventListener> it2 = ExoEditorPreviewPlayer.this.getMediaEventListeners().iterator();
                                while (it2.hasNext()) {
                                    it2.next().onVideoCompleted();
                                }
                                return;
                            }
                            return;
                        }
                        if (ExoEditorPreviewPlayer.this.inWindowChangingDuringPlayback) {
                            ExoEditorPreviewPlayer.this.inWindowChangingDuringPlayback = false;
                            if (ExoEditorPreviewPlayer.this.isVideoSeeking) {
                                ExoEditorPreviewPlayer.this.isVideoSeeking = false;
                                Iterator<IMediaEventListener> it3 = ExoEditorPreviewPlayer.this.getMediaEventListeners().iterator();
                                while (it3.hasNext()) {
                                    it3.next().onDoNextVideoSeek();
                                }
                                return;
                            }
                            return;
                        }
                        if (!ExoEditorPreviewPlayer.this.onVideoPrepared) {
                            ExoEditorPreviewPlayer.this.onVideoPrepared = true;
                            Iterator<IMediaEventListener> it4 = ExoEditorPreviewPlayer.this.getMediaEventListeners().iterator();
                            while (it4.hasNext()) {
                                it4.next().onVideoPrepared();
                            }
                        }
                        if (ExoEditorPreviewPlayer.this.isVideoSeeking) {
                            ExoEditorPreviewPlayer.this.isVideoSeeking = false;
                            Iterator<IMediaEventListener> it5 = ExoEditorPreviewPlayer.this.getMediaEventListeners().iterator();
                            while (it5.hasNext()) {
                                it5.next().onDoNextVideoSeek();
                            }
                        }
                    }
                }
            }

            @Override // androidx.media3.common.Player.Listener
            public void onVideoSizeChanged(@NotNull VideoSize videoSize) {
                t.j(videoSize, "videoSize");
                ExoEditorPreviewPlayer.this.videoView.setVideoSize(videoSize.width, videoSize.height);
            }
        });
    }

    private final void activeViceTrackPlayer(final AVClipInfoPack aVClipInfoPack) {
        final ExoEditorAudioPlayer exoEditorAudioPlayer = new ExoEditorAudioPlayer(this.context);
        this.viceTrackPlayerList.add(exoEditorAudioPlayer);
        exoEditorAudioPlayer.addAudioEventListener(new IEditorAudioPlayer.IAudioEventListener() { // from class: com.narvii.video.player.ExoEditorPreviewPlayer.activeViceTrackPlayer.1
            private final void onTrackPrepared() {
                ExoEditorPreviewPlayer.this.preparedViceTrackCount++;
                if (ExoEditorPreviewPlayer.this.preparedViceTrackCount == ExoEditorPreviewPlayer.this.getAdditionalAudioClipList().size()) {
                    Iterator<IMediaEventListener> it = ExoEditorPreviewPlayer.this.getMediaEventListeners().iterator();
                    while (it.hasNext()) {
                        it.next().onAudioTrackAllPrepared();
                    }
                }
            }

            @Override // com.narvii.video.interfaces.IEditorAudioPlayer.IAudioEventListener
            public void onAudioCompleted() {
                IEditorAudioPlayer.IAudioEventListener.DefaultImpls.onAudioCompleted(this);
            }

            @Override // com.narvii.video.interfaces.IEditorAudioPlayer.IAudioEventListener
            public void onAudioError() {
                IEditorAudioPlayer.IAudioEventListener.DefaultImpls.onAudioError(this);
                onTrackPrepared();
            }

            @Override // com.narvii.video.interfaces.IEditorAudioPlayer.IAudioEventListener
            public void onAudioPrepared() {
                IEditorAudioPlayer.IAudioEventListener.DefaultImpls.onAudioPrepared(this);
                if (!ExoEditorPreviewPlayer.this.isMute) {
                    exoEditorAudioPlayer.setVolume(aVClipInfoPack.trackVolume);
                }
                onTrackPrepared();
            }
        });
        exoEditorAudioPlayer.setDataSource(aVClipInfoPack, false);
    }

    private final MediaSource buildMediaSource(AVClipInfoPack aVClipInfoPack) {
        ProgressiveMediaSource progressiveMediaSourceD = new ProgressiveMediaSource.Factory(new DefaultDataSourceFactory(this.context, DatabaseProvider.TABLE_PREFIX)).d(MediaItem.d(Uri.parse(aVClipInfoPack.inputPath)));
        t.i(progressiveMediaSourceD, "createMediaSource(...)");
        return progressiveMediaSourceD;
    }

    private final void innerSeekAudioTrack(AVClipInfoPack aVClipInfoPack, int i10) {
        int size = this.viceTrackPlayerList.size();
        int i11 = aVClipInfoPack.indexInScene;
        if (i11 < 0 || i11 >= size) {
            return;
        }
        this.viceTrackPlayerList.get(i11).seekTo(i10 >= aVClipInfoPack.startOffsetToMainTrackInMs ? i10 - aVClipInfoPack.startOffsetToMainTrackInMs : 0L);
    }

    private final void launchVideoPlayer() {
        this.videoPlayer.G();
        this.videoPlayer.stop();
        this.onVideoPrepared = false;
        if (getVideoClipList().isEmpty() || this.surface == null) {
            return;
        }
        ConcatenatingMediaSource concatenatingMediaSource = new ConcatenatingMediaSource(new MediaSource[0]);
        Iterator<AVClipInfoPack> it = getVideoClipList().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            AVClipInfoPack next = it.next();
            t.g(next);
            concatenatingMediaSource.y0(new ClippingMediaSource(buildMediaSource(next), next.hasInvisibleFrames() ? ((long) next.trimStartInMs) * 1000 : 0L, ((long) (next.hasInvisibleFrames() ? next.trimEndInMs : next.orgDurationInMs)) * 1000));
        }
        this.videoPlayer.a(concatenatingMediaSource);
        this.videoPlayer.setPlayWhenReady(true);
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        if (activeVideoClip != null) {
            this.videoPlayer.seekTo(activeVideoClip.indexInScene, 0L);
            if (this.isMute) {
                return;
            }
            this.videoPlayer.setVolume(activeVideoClip.trackVolume);
        }
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public ArrayList<AVClipInfoPack> addAudioClip(@NotNull AVClipInfoPack clip, boolean z6) {
        t.j(clip, "clip");
        ArrayList<AVClipInfoPack> arrayListAddAudioClip = super.addAudioClip(clip, z6);
        activeViceTrackPlayer(clip);
        return arrayListAddAudioClip;
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public void addAudioClipList(@NotNull ArrayList<AVClipInfoPack> clipList) {
        t.j(clipList, "clipList");
        super.addAudioClipList(clipList);
        for (AVClipInfoPack aVClipInfoPack : clipList) {
            t.g(aVClipInfoPack);
            activeViceTrackPlayer(aVClipInfoPack);
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public int getCurrentAudioPositionInClip(int i10) {
        if (i10 < 0 || i10 >= this.viceTrackPlayerList.size()) {
            return 0;
        }
        return (int) this.viceTrackPlayerList.get(i10).getCurrentPositionInClip().d().longValue();
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public int getCurrentAudioPositionInTimeline(int i10) {
        if (i10 < 0 || i10 >= this.viceTrackPlayerList.size()) {
            return 0;
        }
        return (int) this.viceTrackPlayerList.get(i10).getCurrentPositionInTimeLine();
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public int getCurrentAudioRawPositionInClip(int i10) {
        if (i10 < 0 || i10 >= this.viceTrackPlayerList.size()) {
            return 0;
        }
        u<Integer, Long> currentPositionInClip = this.viceTrackPlayerList.get(i10).getCurrentPositionInClip();
        currentPositionInClip.a().intValue();
        long jLongValue = currentPositionInClip.b().longValue();
        if (getAdditionalAudioClipList().get(i10).hasInvisibleFrames()) {
            jLongValue += (long) getAdditionalAudioClipList().get(i10).trimStartInMs;
        }
        return (int) jLongValue;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public int getCurrentVideoPositionInClip() {
        return (int) this.videoPlayer.getCurrentPosition();
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @Nullable
    public Bitmap getSnapShot(@Nullable SceneInfo sceneInfo) {
        return this.videoView.getSnapshot();
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public Point getVideoSize(@NotNull String path) {
        t.j(path, "path");
        return new Point(0, 0);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public boolean isVideoPlaying() {
        return this.videoPlayer.getPlayWhenReady() && this.videoPlayer.getPlaybackState() == 3;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void onAudioTrackOffsetChanged(int i10) {
        if (i10 < 0 || i10 >= getAdditionalAudioClipList().size()) {
            return;
        }
        AVClipInfoPack aVClipInfoPack = getAdditionalAudioClipList().get(i10);
        t.i(aVClipInfoPack, "get(...)");
        innerSeekAudioTrack(aVClipInfoPack, getCurrentVideoPositionInTimeline());
    }

    @Override // com.narvii.video.interfaces.IExtraAudioTrackPlugin
    @Nullable
    public IEditorAudioPlayer openSingleAudio(@NotNull AVClipInfoPack audioClip, boolean z6) {
        t.j(audioClip, "audioClip");
        IEditorAudioPlayer iEditorAudioPlayerOpenSingleAudio = this.extraAudioTrackPlugin.openSingleAudio(audioClip, z6);
        this.attachedExtraAudioPlayer = iEditorAudioPlayerOpenSingleAudio;
        return iEditorAudioPlayerOpenSingleAudio;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void pause() {
        this.videoPlayer.setPlayWhenReady(false);
        int size = this.viceTrackPlayerList.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.viceTrackPlayerList.get(i10).pause();
        }
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public ArrayList<AVClipInfoPack> removeAudioClip(@NotNull AVClipInfoPack clip) {
        t.j(clip, "clip");
        int size = this.viceTrackPlayerList.size();
        int i10 = clip.indexInScene;
        if (i10 >= 0 && i10 < size) {
            IEditorAudioPlayer iEditorAudioPlayerRemove = this.viceTrackPlayerList.remove(i10);
            t.i(iEditorAudioPlayerRemove, "removeAt(...)");
            IEditorAudioPlayer iEditorAudioPlayer = iEditorAudioPlayerRemove;
            if (iEditorAudioPlayer.hasPrepared()) {
                this.preparedViceTrackCount--;
            }
            iEditorAudioPlayer.release();
        }
        return super.removeAudioClip(clip);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void setVolume(@NotNull AVClipInfoPack clip, boolean z6) {
        t.j(clip, "clip");
        if (z6) {
            this.videoPlayer.setVolume(clip.trackVolume);
            return;
        }
        int size = this.viceTrackPlayerList.size();
        int i10 = clip.indexInScene;
        if (i10 < 0 || i10 >= size) {
            return;
        }
        this.viceTrackPlayerList.get(i10).setVolume(clip.trackVolume);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void start() {
        if (!isVideoPlaying()) {
            if (!this.isMute) {
                ExoPlayer exoPlayer = this.videoPlayer;
                AVClipInfoPack activeVideoClip = getActiveVideoClip();
                exoPlayer.setVolume(activeVideoClip != null ? activeVideoClip.trackVolume : 1.0f);
            }
            this.videoPlayer.setPlayWhenReady(true);
        }
        int currentVideoPositionInTimeline = getCurrentVideoPositionInTimeline();
        int size = this.viceTrackPlayerList.size();
        for (int i10 = 0; i10 < size; i10++) {
            int i11 = getAdditionalAudioClipList().get(i10).startOffsetToMainTrackInMs;
            if (currentVideoPositionInTimeline < i11 || currentVideoPositionInTimeline > i11 + getAdditionalAudioClipList().get(i10).trimmedDurationInMs()) {
                if (isAudioPlaying(i10)) {
                    this.viceTrackPlayerList.get(i10).pause();
                }
            } else if (!isAudioPlaying(i10) && isVideoPlaying()) {
                if (!this.isMute) {
                    this.viceTrackPlayerList.get(i10).setVolume(getAdditionalAudioClipList().get(i10).trackVolume);
                }
                this.viceTrackPlayerList.get(i10).start();
            }
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void startFromBeginning(long j6) {
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void stop() {
        this.videoPlayer.G();
        this.videoPlayer.stop();
        this.onVideoPrepared = false;
        this.currentPlaybackState = 1;
        this.currentMainTrackWindowIndex = 0;
        Iterator<IEditorAudioPlayer> it = this.viceTrackPlayerList.iterator();
        while (it.hasNext()) {
            it.next().stop();
        }
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public void surfaceCreated(@Nullable Surface surface) {
        this.videoPlayer.setVideoSurface(surface);
        if (this.surface == null) {
            this.surface = surface;
            launchVideoPlayer();
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void updateGlobalAudioVolumeContrast(float f) {
        throw new w7.t("An operation is not implemented: not implemented");
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public int getCurrentVideoPositionInTimeline() {
        if (getVideoClipList().isEmpty()) {
            return 0;
        }
        int currentWindowIndex = this.videoPlayer.getCurrentWindowIndex();
        int i10 = 0;
        for (int i11 = 0; i11 < currentWindowIndex; i11++) {
            i10 += getVideoClipList().get(i11).visibleDurationInMs;
        }
        return (int) (this.videoPlayer.getCurrentPosition() + ((long) i10));
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public int getCurrentVideoRawPositionInClip() {
        if (getVideoClipList().isEmpty()) {
            return 0;
        }
        AVClipInfoPack aVClipInfoPack = getVideoClipList().get(this.videoPlayer.getCurrentWindowIndex());
        t.i(aVClipInfoPack, "get(...)");
        AVClipInfoPack aVClipInfoPack2 = aVClipInfoPack;
        if (aVClipInfoPack2.hasInvisibleFrames()) {
            return (int) (this.videoPlayer.getCurrentPosition() + ((long) aVClipInfoPack2.trimStartInMs));
        }
        return (int) this.videoPlayer.getCurrentPosition();
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer
    public void onActiveVideoClipChanged(boolean z6, int i10) {
        int i11;
        for (IMediaEventListener iMediaEventListener : getMediaEventListeners()) {
            if (getActiveVideoClip() == null) {
                i11 = -1;
            } else {
                AVClipInfoPack activeVideoClip = getActiveVideoClip();
                t.g(activeVideoClip);
                i11 = activeVideoClip.indexInScene;
            }
            iMediaEventListener.onVideoWindowIndexChanged(i11, true);
        }
        if (getActiveVideoClip() == null) {
            this.videoPlayer.G();
            this.videoPlayer.stop();
            this.onVideoPrepared = false;
        } else {
            if (!z6) {
                AVClipInfoPack activeVideoClip2 = getActiveVideoClip();
                t.g(activeVideoClip2);
                seekTimeLineTo(activeVideoClip2.indexInScene, i10);
                if (!this.isMute) {
                    ExoPlayer exoPlayer = this.videoPlayer;
                    AVClipInfoPack activeVideoClip3 = getActiveVideoClip();
                    t.g(activeVideoClip3);
                    exoPlayer.setVolume(activeVideoClip3.trackVolume);
                    return;
                }
                return;
            }
            launchVideoPlayer();
        }
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer
    public void onAudioClipListChanged(boolean z6, int i10) {
        super.onAudioClipListChanged(z6, i10);
        if (z6) {
            Iterator<IEditorAudioPlayer> it = this.viceTrackPlayerList.iterator();
            while (it.hasNext()) {
                it.next().release();
            }
            this.viceTrackPlayerList.clear();
            this.preparedViceTrackCount = 0;
            for (AVClipInfoPack aVClipInfoPack : getAdditionalAudioClipList()) {
                t.g(aVClipInfoPack);
                activeViceTrackPlayer(aVClipInfoPack);
                innerSeekAudioTrack(aVClipInfoPack, getCurrentVideoPositionInTimeline());
            }
            return;
        }
        if (i10 >= 0 && i10 < this.viceTrackPlayerList.size()) {
            IEditorAudioPlayer iEditorAudioPlayer = this.viceTrackPlayerList.get(i10);
            t.i(iEditorAudioPlayer, "get(...)");
            IEditorAudioPlayer iEditorAudioPlayer2 = iEditorAudioPlayer;
            this.preparedViceTrackCount--;
            iEditorAudioPlayer2.stop();
            AVClipInfoPack aVClipInfoPack2 = getAdditionalAudioClipList().get(i10);
            t.i(aVClipInfoPack2, "get(...)");
            iEditorAudioPlayer2.setDataSource(aVClipInfoPack2, false);
            AVClipInfoPack aVClipInfoPack3 = getAdditionalAudioClipList().get(i10);
            t.i(aVClipInfoPack3, "get(...)");
            innerSeekAudioTrack(aVClipInfoPack3, getCurrentVideoPositionInTimeline());
        }
    }

    @Override // com.narvii.video.player.BaseEditorPreviewPlayer, com.narvii.video.interfaces.IPreviewPlayer
    public void release(@NotNull Object... args) {
        t.j(args, "args");
        release();
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void seekTimeLineTo(int i10, int i11) {
        if (i10 < 0 || this.isVideoSeeking) {
            return;
        }
        if (this.videoPlayer.getCurrentTimeline().u() || i10 < this.videoPlayer.getCurrentTimeline().t()) {
            this.isVideoSeeking = true;
            this.videoPlayer.seekTo(i10, i11);
            int i12 = 0;
            for (int i13 = 0; i13 < i10; i13++) {
                i12 += getVideoClipList().get(i13).visibleDurationInMs;
            }
            int i14 = i12 + i11;
            for (AVClipInfoPack aVClipInfoPack : getAdditionalAudioClipList()) {
                t.g(aVClipInfoPack);
                innerSeekAudioTrack(aVClipInfoPack, i14);
            }
        }
    }
}
