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
import com.narvii.video.player.BaseScenePlayer;
import com.narvii.video.services.IEditorPackFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NvScenePlayer.kt */
/* loaded from: classes3.dex */
public final class NvScenePlayer extends BaseScenePlayer implements IMediaEventListener, IPlayingEventListener {
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "IScenePlayer";
    private final Context context;
    private boolean isWaitingPlay;
    private IPreviewPlayer previewPlayer;
    private final OnSeekingPositionListener seekingPositionListener;

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

    public NvScenePlayer(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
        this.seekingPositionListener = new OnSeekingPositionListener() { // from class: com.narvii.video.player.NvScenePlayer$seekingPositionListener$1
            @Override // com.narvii.video.interfaces.OnSeekingPositionListener
            public final void onSeekingPositionChanged(long j) {
                if (this.this$0.isWaitingPlay) {
                    this.this$0.startPlay();
                }
                this.this$0.isWaitingPlay = false;
            }
        };
        NVContext nVContext = Utils.getNVContext(this.context);
        if (nVContext == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        this.previewPlayer = ((IEditorPackFactory) nVContext.getService("editorPackFactory")).getPreviewPlayer(this.context);
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.addMediaEventListener(this);
        }
        IPreviewPlayer iPreviewPlayer2 = this.previewPlayer;
        if (iPreviewPlayer2 != null) {
            iPreviewPlayer2.addPlayingEventListener(this);
        }
        IPreviewPlayer iPreviewPlayer3 = this.previewPlayer;
        if (iPreviewPlayer3 != null) {
            iPreviewPlayer3.addSeekingPositionChangeListener(this.seekingPositionListener);
        }
    }

    public final Context getContext() {
        return this.context;
    }

    @Override // com.narvii.video.interfaces.IMediaEventListener
    public void onVideoWindowIndexChanged(int i, boolean z) {
        IMediaEventListener.DefaultImpls.onVideoWindowIndexChanged(this, i, z);
    }

    /* compiled from: NvScenePlayer.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final int getCurrentClipIndex() {
        return getCurrentClipIndex(getCurrentPosition());
    }

    private final void seekTimeLineTo(int i, int i2, boolean z) {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            this.isWaitingPlay = z;
            iPreviewPlayer.seekTimeLineTo(i, i2);
        }
    }

    private final void seekTimeLineTo(int i, boolean z) {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            this.isWaitingPlay = z;
            iPreviewPlayer.seekTimeLineTo(i);
        }
    }

    @Override // com.narvii.video.player.BaseScenePlayer
    public void setClipInfoList(List<BaseScenePlayer.VideoClip> videoClipList, ArrayList<AVClipInfoPack> audioClipList, ArrayList<Caption> captionClpList, ArrayList<StickerInfoPack> stickerList, ArrayList<PipInfoPack> pipList) {
        Intrinsics.checkParameterIsNotNull(videoClipList, "videoClipList");
        Intrinsics.checkParameterIsNotNull(audioClipList, "audioClipList");
        Intrinsics.checkParameterIsNotNull(captionClpList, "captionClpList");
        Intrinsics.checkParameterIsNotNull(stickerList, "stickerList");
        Intrinsics.checkParameterIsNotNull(pipList, "pipList");
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
    public void restoreStatus() {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.restoreStates();
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public View getPreviewView() {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        View videoView = iPreviewPlayer != null ? iPreviewPlayer.getVideoView() : null;
        if (videoView != null) {
            return videoView;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.video.player.BaseScenePlayer, com.narvii.scene.interfaces.IScenePlayer
    public void release() {
        super.release();
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.release();
        }
    }

    @Override // com.narvii.video.player.BaseScenePlayer, com.narvii.scene.interfaces.IScenePlayer
    public void release(Object... args) {
        Intrinsics.checkParameterIsNotNull(args, "args");
        super.release(Arrays.copyOf(args, args.length));
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.release(Arrays.copyOf(args, args.length));
        }
    }

    @Override // com.narvii.video.player.BaseScenePlayer, com.narvii.scene.interfaces.IScenePlayer
    public void setBackgroundMusic(Context context, AVClipInfoPack aVClipInfoPack) {
        IPreviewPlayer iPreviewPlayer;
        Intrinsics.checkParameterIsNotNull(context, "context");
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
    public void setVolume(float f, float f2) {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.updateGlobalAudioVolumeContrast(f);
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void fadeBackgroundMusic(boolean z, boolean z2) {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.setGlobalBgmFade(z, z2);
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void setLoop(boolean z) {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.setLoop(z);
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void play() {
        startPlay();
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingStart();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startPlay() {
        if (isPreciseOperation()) {
            if (getSceneClipMap().get(getCurrentSceneId()) != null) {
                IPreviewPlayer iPreviewPlayer = this.previewPlayer;
                if (iPreviewPlayer != null) {
                    iPreviewPlayer.start(r0.getEndOffSet() * 1000);
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
            if (getSceneClipMap().get(getCurrentSceneId()) != null) {
                IPreviewPlayer iPreviewPlayer = this.previewPlayer;
                if (iPreviewPlayer != null) {
                    iPreviewPlayer.startFromBeginning(r0.getEndOffSet() * 1000);
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

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public String playNextScene() {
        int currentClipIndex = getCurrentClipIndex();
        if (currentClipIndex > getVideoClipList().size() - 1 || currentClipIndex < 0) {
            return getCurrentSceneId();
        }
        String sceneId = getVideoClipList().get(currentClipIndex).getSceneId();
        if (sceneId == null) {
            sceneId = "";
        }
        setPlayingSceneId(sceneId);
        int size = getVideoClipList().size();
        int i = -1;
        while (true) {
            if (currentClipIndex >= size) {
                currentClipIndex = i;
                break;
            }
            BaseScenePlayer.VideoClip videoClip = getVideoClipList().get(currentClipIndex);
            Intrinsics.checkExpressionValueIsNotNull(videoClip, "videoClipList[i]");
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
                i = 0;
            }
            currentClipIndex++;
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

    @Override // com.narvii.scene.interfaces.IScenePlayer
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
        int i = -1;
        while (true) {
            if (currentClipIndex < 0) {
                break;
            }
            BaseScenePlayer.VideoClip videoClip = getVideoClipList().get(currentClipIndex);
            Intrinsics.checkExpressionValueIsNotNull(videoClip, "videoClipList[i]");
            BaseScenePlayer.VideoClip videoClip2 = videoClip;
            if (TextUtils.equals(getCurrentSceneId(), videoClip2.getSceneId())) {
                if (currentClipIndex == 0) {
                    String sceneId2 = getVideoClipList().get(0).getSceneId();
                    if (sceneId2 == null) {
                        sceneId2 = "";
                    }
                    setPlayingSceneId(sceneId2);
                    i = 0;
                }
                currentClipIndex--;
            } else {
                setPlayingSceneId(videoClip2.getSceneId());
                i = currentClipIndex;
                while (i > 0 && TextUtils.equals(getPlayingSceneId(), getVideoClipList().get(i - 1).getSceneId())) {
                    i--;
                }
            }
        }
        if (i == -1) {
            return getCurrentSceneId();
        }
        seekTimeLineTo(i, 0, true);
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onSceneChanged(getCurrentSceneId(), i);
        }
        return getCurrentSceneId();
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
    public void seek(long j, boolean z) {
        seekTimeLineTo((int) j, z);
        setPlayingSceneId(getSceneIdByPosition(j));
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingProgress(getCurrentPosition(), getTotalDuration());
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void seek(int i, long j, boolean z) {
        seekTimeLineTo(i, (int) j, z);
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingProgress(getCurrentPosition(), getTotalDuration());
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void mute() {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.mute();
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public void unMute() {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.unMute();
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
    public long getCurrentPosition() {
        if (this.previewPlayer != null) {
            return r0.getCurrentVideoPositionInTimeline();
        }
        return 0L;
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer
    public boolean isPlaying() {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            return iPreviewPlayer.isVideoPlaying();
        }
        return false;
    }

    @Override // com.narvii.video.interfaces.IMediaEventListener
    public void onVideoError(Exception exc) {
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingError(exc);
        }
    }

    @Override // com.narvii.video.interfaces.IPlayingEventListener
    public void onPlayingProgress(long j, long j2) {
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingProgress(j, j2);
        }
        String sceneIdByPosition = getSceneIdByPosition(j + 100);
        if (sceneIdByPosition != null) {
            String currentSceneId = getCurrentSceneId();
            if (TextUtils.isEmpty(sceneIdByPosition) || TextUtils.equals(currentSceneId, sceneIdByPosition) || isPreciseOperation()) {
                return;
            }
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
}
