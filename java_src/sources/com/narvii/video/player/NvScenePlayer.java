package com.narvii.video.player;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.pip.PipInfoPack;
import com.narvii.scene.interfaces.IScenePlayer;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.IMediaEventListener;
import com.narvii.video.interfaces.IPlayingEventListener;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.interfaces.OnSeekingPositionListener;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.services.IEditorPackFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class NvScenePlayer extends BaseScenePlayer implements IMediaEventListener, IPlayingEventListener {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String TAG = "IScenePlayer";

    @NotNull
    private final Context context;
    private boolean isWaitingPlay;

    @Nullable
    private IPreviewPlayer previewPlayer;

    @NotNull
    private final OnSeekingPositionListener seekingPositionListener;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    private final void seekTimeLineTo(int i10, int i11, boolean z6) {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            this.isWaitingPlay = z6;
            iPreviewPlayer.seekTimeLineTo(i10, i11);
        }
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Override // com.narvii.video.interfaces.IMediaEventListener
    public void onAudioTrackAllPrepared() {
    }

    @Override // com.narvii.video.interfaces.IMediaEventListener
    public void onDoNextVideoSeek() {
    }

    @Override // com.narvii.video.interfaces.IPlayingEventListener
    public void onPlayingStopped() {
    }

    @Override // com.narvii.video.interfaces.IMediaEventListener
    public void onVideoCompleted() {
    }

    @Override // com.narvii.video.interfaces.IMediaEventListener
    public void onVideoPrepared() {
    }

    @Override // com.narvii.video.player.BaseScenePlayer, com.narvii.scene.interfaces.IScenePlayer
    public void release() {
        super.release();
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.release();
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void seek(long j6, boolean z6) {
        seekTimeLineTo((int) j6, z6);
        setPlayingSceneId(getSceneIdByPosition(j6));
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingProgress(getCurrentPosition(), getTotalDuration());
        }
    }

    public NvScenePlayer(@NotNull Context context) {
        t.j(context, "context");
        this.context = context;
        OnSeekingPositionListener onSeekingPositionListener = new OnSeekingPositionListener() { // from class: com.narvii.video.player.a
            @Override // com.narvii.video.interfaces.OnSeekingPositionListener
            public final void onSeekingPositionChanged(long j6) {
                NvScenePlayer.seekingPositionListener$lambda$0(this.f2913a, j6);
            }
        };
        this.seekingPositionListener = onSeekingPositionListener;
        NVContext nVContext = Utils.getNVContext(context);
        t.g(nVContext);
        IPreviewPlayer previewPlayer = ((IEditorPackFactory) nVContext.getService("editorPackFactory")).getPreviewPlayer(context);
        this.previewPlayer = previewPlayer;
        if (previewPlayer != null) {
            previewPlayer.addMediaEventListener(this);
        }
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.addPlayingEventListener(this);
        }
        IPreviewPlayer iPreviewPlayer2 = this.previewPlayer;
        if (iPreviewPlayer2 != null) {
            iPreviewPlayer2.addSeekingPositionChangeListener(onSeekingPositionListener);
        }
    }

    private final void seekTimeLineTo(int i10, boolean z6) {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            this.isWaitingPlay = z6;
            iPreviewPlayer.seekTimeLineTo(i10);
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void fadeBackgroundMusic(boolean z6, boolean z10) {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.setGlobalBgmFade(z6, z10);
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public long getCurrentPosition() {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            return iPreviewPlayer.getCurrentVideoPositionInTimeline();
        }
        return 0L;
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    @NotNull
    public View getPreviewView() {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        View videoView = iPreviewPlayer != null ? iPreviewPlayer.getVideoView() : null;
        t.g(videoView);
        return videoView;
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public boolean isPlaying() {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            return iPreviewPlayer.isVideoPlaying();
        }
        return false;
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void mute() {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.mute();
        }
    }

    @Override // com.narvii.video.interfaces.IPlayingEventListener
    public void onPlayingEOF() {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null && iPreviewPlayer.isLoop() && !isPreciseOperation()) {
            startPlayFromBegining();
            return;
        }
        if (!isPreciseOperation()) {
            seekTimeLineTo(getStopLocationStatus() == IScenePlayer.Companion.getBACK_TO_CURRENT_SCENE_BEGINNING() ? getSceneFirstClipIndex(getCurrentSceneId()) : 0, 0, false);
        }
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingPause();
        }
        IScenePlayer.OnPlayingListener onPlayListener2 = getOnPlayListener();
        if (onPlayListener2 != null) {
            onPlayListener2.onSceneEnd(getCurrentSceneId(), getCurrentSceneIndex());
        }
        IScenePlayer.OnPlayingListener onPlayListener3 = getOnPlayListener();
        if (onPlayListener3 != null) {
            onPlayListener3.onPlayingStop();
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void pause() {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.pause();
        }
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingPause();
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void restoreStatus() {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.restoreStates();
        }
    }

    @Override // com.narvii.video.player.BaseScenePlayer, com.narvii.scene.interfaces.IScenePlayer
    public void setBackgroundMusic(@NotNull Context context, @Nullable AVClipInfoPack aVClipInfoPack) {
        IPreviewPlayer iPreviewPlayer;
        t.j(context, "context");
        if (getGlobalBgmClipInfo() != null) {
            IPreviewPlayer iPreviewPlayer2 = this.previewPlayer;
            if (iPreviewPlayer2 != null) {
                iPreviewPlayer2.removeGlobalAudioClip();
            }
            setGlobalBgmClipInfo(null);
        }
        if (aVClipInfoPack != null && (iPreviewPlayer = this.previewPlayer) != null) {
            iPreviewPlayer.addAudioClip(aVClipInfoPack, true);
        }
        super.setBackgroundMusic(context, aVClipInfoPack);
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void setLoop(boolean z6) {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.setLoop(z6);
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void setVolume(float f, float f6) {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.updateGlobalAudioVolumeContrast(f);
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void setVolumePercent(float f) {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.setVolumePercent(f);
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void unMute() {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.unMute();
        }
    }

    private final int getCurrentClipIndex() {
        return getCurrentClipIndex(getCurrentPosition());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void seekingPositionListener$lambda$0(NvScenePlayer this$0, long j6) {
        t.j(this$0, "this$0");
        if (this$0.isWaitingPlay) {
            this$0.startPlay();
        }
        this$0.isWaitingPlay = false;
    }

    private final void startPlay() {
        if (isPreciseOperation()) {
            BaseScenePlayer.SceneClip sceneClip = getSceneClipMap().get(getCurrentSceneId());
            if (sceneClip != null) {
                IPreviewPlayer iPreviewPlayer = this.previewPlayer;
                if (iPreviewPlayer != null) {
                    iPreviewPlayer.start(sceneClip.getEndOffSet() * 1000);
                    return;
                }
                return;
            }
            IPreviewPlayer iPreviewPlayer2 = this.previewPlayer;
            if (iPreviewPlayer2 != null) {
                iPreviewPlayer2.start();
                return;
            }
            return;
        }
        IPreviewPlayer iPreviewPlayer3 = this.previewPlayer;
        if (iPreviewPlayer3 != null) {
            iPreviewPlayer3.start();
        }
    }

    private final void startPlayFromBegining() {
        if (isPreciseOperation()) {
            BaseScenePlayer.SceneClip sceneClip = getSceneClipMap().get(getCurrentSceneId());
            if (sceneClip != null) {
                IPreviewPlayer iPreviewPlayer = this.previewPlayer;
                if (iPreviewPlayer != null) {
                    iPreviewPlayer.startFromBeginning(sceneClip.getEndOffSet() * 1000);
                    return;
                }
                return;
            }
            IPreviewPlayer iPreviewPlayer2 = this.previewPlayer;
            if (iPreviewPlayer2 != null) {
                iPreviewPlayer2.startFromBeginning();
                return;
            }
            return;
        }
        IPreviewPlayer iPreviewPlayer3 = this.previewPlayer;
        if (iPreviewPlayer3 != null) {
            iPreviewPlayer3.startFromBeginning();
        }
    }

    @Override // com.narvii.video.interfaces.IPlayingEventListener
    public void onPlayingProgress(long j6, long j10) {
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingProgress(j6, j10);
        }
        String sceneIdByPosition = getSceneIdByPosition(j6 + ((long) 100));
        if (sceneIdByPosition == null) {
            return;
        }
        String currentSceneId = getCurrentSceneId();
        if (!TextUtils.isEmpty(sceneIdByPosition) && !TextUtils.equals(currentSceneId, sceneIdByPosition) && !isPreciseOperation()) {
            IScenePlayer.OnPlayingListener onPlayListener2 = getOnPlayListener();
            if (onPlayListener2 != null) {
                onPlayListener2.onSceneEnd(currentSceneId, getCurrentSceneIndex());
            }
            setPlayingSceneId(sceneIdByPosition);
            IScenePlayer.OnPlayingListener onPlayListener3 = getOnPlayListener();
            if (onPlayListener3 != null) {
                onPlayListener3.onSceneChanged(sceneIdByPosition, getCurrentSceneIndex());
            }
            Log.d(TAG, "onSceneChanged  >>> currentSceneId = " + sceneIdByPosition + "   currentSceneIndex = " + getCurrentSceneIndex());
        }
    }

    @Override // com.narvii.video.interfaces.IMediaEventListener
    public void onVideoError(@Nullable Exception exc) {
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingError(exc);
        }
    }

    @Override // com.narvii.video.interfaces.IMediaEventListener
    public void onVideoWindowIndexChanged(int i10, boolean z6) {
        IMediaEventListener.DefaultImpls.onVideoWindowIndexChanged(this, i10, z6);
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void play() {
        startPlay();
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingStart();
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    @NotNull
    public String playLastScene() {
        int currentClipIndex = getCurrentClipIndex();
        if (currentClipIndex > getVideoClipList().size() - 1) {
            return getCurrentSceneId();
        }
        String sceneId = getVideoClipList().get(currentClipIndex).getSceneId();
        if (sceneId == null) {
            sceneId = "";
        }
        setPlayingSceneId(sceneId);
        int i10 = -1;
        while (-1 < currentClipIndex) {
            BaseScenePlayer.VideoClip videoClip = getVideoClipList().get(currentClipIndex);
            t.i(videoClip, "get(...)");
            BaseScenePlayer.VideoClip videoClip2 = videoClip;
            if (!TextUtils.equals(getCurrentSceneId(), videoClip2.getSceneId())) {
                setPlayingSceneId(videoClip2.getSceneId());
                while (currentClipIndex > 0 && TextUtils.equals(getPlayingSceneId(), getVideoClipList().get(currentClipIndex - 1).getSceneId())) {
                    currentClipIndex--;
                }
                i10 = currentClipIndex;
                break;
            }
            if (currentClipIndex == 0) {
                String sceneId2 = getVideoClipList().get(0).getSceneId();
                if (sceneId2 == null) {
                    sceneId2 = "";
                }
                setPlayingSceneId(sceneId2);
                i10 = 0;
            }
            currentClipIndex--;
        }
        if (i10 == -1) {
            return getCurrentSceneId();
        }
        seekTimeLineTo(i10, 0, true);
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onSceneChanged(getCurrentSceneId(), i10);
        }
        return getCurrentSceneId();
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    @NotNull
    public String playNextScene() {
        int currentClipIndex = getCurrentClipIndex();
        if (currentClipIndex <= getVideoClipList().size() - 1 && currentClipIndex >= 0) {
            String sceneId = getVideoClipList().get(currentClipIndex).getSceneId();
            if (sceneId == null) {
                sceneId = "";
            }
            setPlayingSceneId(sceneId);
            int size = getVideoClipList().size();
            int i10 = -1;
            while (true) {
                if (currentClipIndex < size) {
                    BaseScenePlayer.VideoClip videoClip = getVideoClipList().get(currentClipIndex);
                    t.i(videoClip, "get(...)");
                    BaseScenePlayer.VideoClip videoClip2 = videoClip;
                    if (!TextUtils.equals(getCurrentSceneId(), videoClip2.getSceneId())) {
                        setPlayingSceneId(videoClip2.getSceneId());
                        break;
                    }
                    if (currentClipIndex == getVideoClipList().size() - 1) {
                        String sceneId2 = getVideoClipList().get(0).getSceneId();
                        if (sceneId2 == null) {
                            sceneId2 = "";
                        }
                        setPlayingSceneId(sceneId2);
                        i10 = 0;
                    }
                    currentClipIndex++;
                } else {
                    currentClipIndex = i10;
                    break;
                }
            }
            if (currentClipIndex == -1) {
                return getCurrentSceneId();
            }
            seekTimeLineTo(currentClipIndex, 0, true);
            IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
            if (onPlayListener != null) {
                onPlayListener.onSceneChanged(getCurrentSceneId(), currentClipIndex);
            }
            return getCurrentSceneId();
        }
        return getCurrentSceneId();
    }

    @Override // com.narvii.video.player.BaseScenePlayer, com.narvii.scene.interfaces.IScenePlayer
    public void release(@NotNull Object... args) {
        t.j(args, "args");
        super.release(Arrays.copyOf(args, args.length));
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.release(Arrays.copyOf(args, args.length));
        }
    }

    @Override // com.narvii.video.player.BaseScenePlayer
    public void setClipInfoList(@NotNull List<BaseScenePlayer.VideoClip> videoClipList, @NotNull ArrayList<AVClipInfoPack> audioClipList, @NotNull ArrayList<Caption> captionClpList, @NotNull ArrayList<StickerInfoPack> stickerList, @NotNull ArrayList<PipInfoPack> pipList) {
        t.j(videoClipList, "videoClipList");
        t.j(audioClipList, "audioClipList");
        t.j(captionClpList, "captionClpList");
        t.j(stickerList, "stickerList");
        t.j(pipList, "pipList");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = videoClipList.iterator();
        while (it.hasNext()) {
            AVClipInfoPack clip = ((BaseScenePlayer.VideoClip) it.next()).getClip();
            if (clip != null) {
                arrayList.add(clip);
            }
        }
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            IPreviewPlayer.DefaultImpls.resetVideoClipList$default(iPreviewPlayer, arrayList, 0, 0, 6, null);
        }
        IPreviewPlayer iPreviewPlayer2 = this.previewPlayer;
        if (iPreviewPlayer2 != null) {
            iPreviewPlayer2.resetAudioClipList(audioClipList);
        }
        IPreviewPlayer iPreviewPlayer3 = this.previewPlayer;
        if (iPreviewPlayer3 != null) {
            iPreviewPlayer3.resetCaptionList(captionClpList);
        }
        IPreviewPlayer iPreviewPlayer4 = this.previewPlayer;
        if (iPreviewPlayer4 != null) {
            iPreviewPlayer4.resetStickerList(stickerList);
        }
        IPreviewPlayer iPreviewPlayer5 = this.previewPlayer;
        if (iPreviewPlayer5 != null) {
            iPreviewPlayer5.resetPipVideoList(pipList);
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void seek(int i10, long j6, boolean z6) {
        seekTimeLineTo(i10, (int) j6, z6);
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingProgress(getCurrentPosition(), getTotalDuration());
        }
    }
}
