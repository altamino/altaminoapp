package com.narvii.video.player;

import android.content.Context;
import android.net.Uri;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ExoPlayerFactory;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.ClippingMediaSource;
import com.google.android.exoplayer2.source.ConcatenatingMediaSource;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.upstream.DefaultDataSourceFactory;
import com.narvii.video.interfaces.IEditorAudioPlayer;
import com.narvii.video.model.AVClipInfoPack;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ExoEditorAudioPlayer.kt */
/* loaded from: classes3.dex */
public final class ExoEditorAudioPlayer implements IEditorAudioPlayer, Player.EventListener {
    private final ArrayList<AVClipInfoPack> audioClipList;
    private final ArrayList<IEditorAudioPlayer.IAudioEventListener> audioEventListenerList;
    private final Context context;
    private final SimpleExoPlayer player;

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

    public ExoEditorAudioPlayer(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
        SimpleExoPlayer simpleExoPlayerNewSimpleInstance = ExoPlayerFactory.newSimpleInstance(this.context, new DefaultTrackSelector());
        Intrinsics.checkExpressionValueIsNotNull(simpleExoPlayerNewSimpleInstance, "ExoPlayerFactory.newSimp…, DefaultTrackSelector())");
        this.player = simpleExoPlayerNewSimpleInstance;
        this.audioEventListenerList = new ArrayList<>();
        this.audioClipList = new ArrayList<>();
        this.player.addListener(this);
    }

    public final Context getContext() {
        return this.context;
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        Iterator<IEditorAudioPlayer.IAudioEventListener> it = this.audioEventListenerList.iterator();
        while (it.hasNext()) {
            it.next().onAudioError();
        }
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public void onPlayerStateChanged(boolean z, int i) {
        if (i == 4 || i == 3) {
            Iterator<IEditorAudioPlayer.IAudioEventListener> it = this.audioEventListenerList.iterator();
            while (it.hasNext()) {
                IEditorAudioPlayer.IAudioEventListener next = it.next();
                if (i == 3) {
                    next.onAudioPrepared();
                } else if (i == 4) {
                    next.onAudioCompleted();
                }
            }
        }
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void setDataSource(AVClipInfoPack clipInfoPack, boolean z) {
        Intrinsics.checkParameterIsNotNull(clipInfoPack, "clipInfoPack");
        this.audioClipList.clear();
        this.audioClipList.add(clipInfoPack);
        this.player.prepare(new ClippingMediaSource(buildMediaSource(clipInfoPack), clipInfoPack.hasInvisibleFrames() ? clipInfoPack.trimStartInMs * 1000 : 0L, (clipInfoPack.hasInvisibleFrames() ? clipInfoPack.trimEndInMs : clipInfoPack.orgDurationInMs) * 1000));
        this.player.setPlayWhenReady(z);
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void setConcatenatingDataSource(List<? extends AVClipInfoPack> clipInfoList, boolean z) {
        Intrinsics.checkParameterIsNotNull(clipInfoList, "clipInfoList");
        this.audioClipList.clear();
        this.audioClipList.addAll(clipInfoList);
        ConcatenatingMediaSource concatenatingMediaSource = new ConcatenatingMediaSource(new MediaSource[0]);
        for (AVClipInfoPack aVClipInfoPack : clipInfoList) {
            concatenatingMediaSource.addMediaSource(new ClippingMediaSource(buildMediaSource(aVClipInfoPack), aVClipInfoPack.hasInvisibleFrames() ? aVClipInfoPack.trimStartInMs * 1000 : 0L, (aVClipInfoPack.hasInvisibleFrames() ? aVClipInfoPack.trimEndInMs : aVClipInfoPack.orgDurationInMs) * 1000));
        }
        this.player.prepare(concatenatingMediaSource);
        this.player.setPlayWhenReady(z);
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void addAudioEventListener(IEditorAudioPlayer.IAudioEventListener listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        if (this.audioEventListenerList.contains(listener)) {
            return;
        }
        this.audioEventListenerList.add(listener);
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void removeAudioEventListener(IEditorAudioPlayer.IAudioEventListener listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        this.audioEventListenerList.remove(listener);
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public boolean hasPrepared() {
        return this.player.getPlaybackState() >= 3;
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void start() {
        this.player.setPlayWhenReady(true);
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void pause() {
        this.player.setPlayWhenReady(false);
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void seekTo(long j) {
        Iterator<AVClipInfoPack> it = this.audioClipList.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            i2 += it.next().visibleDurationInMs;
        }
        long j2 = 0;
        if (j < 0 || j > i2) {
            return;
        }
        int size = this.audioClipList.size();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= size) {
                break;
            }
            if (this.audioClipList.get(i3).visibleDurationInMs + i4 >= j) {
                j2 = j - i4;
                i = i3;
                break;
            } else {
                i4 += this.audioClipList.get(i3).visibleDurationInMs;
                i3++;
            }
        }
        this.player.seekTo(i, j2);
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void seekTo(int i, long j) {
        if (i >= 0) {
            Timeline currentTimeline = this.player.getCurrentTimeline();
            Intrinsics.checkExpressionValueIsNotNull(currentTimeline, "player.currentTimeline");
            if (!currentTimeline.isEmpty()) {
                Timeline currentTimeline2 = this.player.getCurrentTimeline();
                Intrinsics.checkExpressionValueIsNotNull(currentTimeline2, "player.currentTimeline");
                if (i >= currentTimeline2.getWindowCount()) {
                    return;
                }
            }
            this.player.seekTo(i, j);
        }
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void stop() {
        this.player.stop(true);
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void release() {
        this.player.release();
        this.player.removeListener(this);
        this.audioEventListenerList.clear();
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public boolean isPlaying() {
        return this.player.getPlayWhenReady() && this.player.getPlaybackState() == 3;
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public Pair<Integer, Long> getCurrentPositionInClip() {
        return new Pair<>(Integer.valueOf(this.player.getCurrentWindowIndex()), Long.valueOf(this.player.getCurrentPosition()));
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public long getCurrentPositionInTimeLine() {
        if (this.audioClipList.isEmpty()) {
            return 0L;
        }
        int currentWindowIndex = this.player.getCurrentWindowIndex();
        int i = 0;
        for (int i2 = 0; i2 < currentWindowIndex; i2++) {
            i += this.audioClipList.get(i2).visibleDurationInMs;
        }
        return this.player.getCurrentPosition() + i;
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public int getCurrentWindowIndex() {
        return this.player.getCurrentWindowIndex();
    }

    @Override // com.narvii.video.interfaces.IEditorAudioPlayer
    public void setVolume(float f) {
        this.player.setVolume(f);
    }

    private final MediaSource buildMediaSource(AVClipInfoPack aVClipInfoPack) {
        ExtractorMediaSource extractorMediaSourceCreateMediaSource = new ExtractorMediaSource.Factory(new DefaultDataSourceFactory(this.context, "ExoPlayer")).createMediaSource(Uri.parse(aVClipInfoPack.inputPath));
        Intrinsics.checkExpressionValueIsNotNull(extractorMediaSourceCreateMediaSource, "ExtractorMediaSource.Fac…ri.parse(clip.inputPath))");
        return extractorMediaSourceCreateMediaSource;
    }
}
