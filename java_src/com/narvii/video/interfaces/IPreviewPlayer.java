package com.narvii.video.interfaces;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.PointF;
import android.view.View;
import com.narvii.pip.PipInfoPack;
import com.narvii.scene.model.SceneInfo;
import com.narvii.video.attachment.caption.AttachmentDrawRect;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import java.util.ArrayList;
import java.util.List;

/* compiled from: IPreviewPlayer.kt */
/* loaded from: classes3.dex */
public interface IPreviewPlayer extends IExtraAudioTrackPlugin {
    ArrayList<AVClipInfoPack> addAudioClip(AVClipInfoPack aVClipInfoPack, boolean z);

    void addAudioClipList(ArrayList<AVClipInfoPack> arrayList);

    ArrayList<Caption> addCaption(Caption caption);

    void addMediaEventListener(IMediaEventListener iMediaEventListener);

    ArrayList<PipInfoPack> addPipVideo(PipInfoPack pipInfoPack);

    void addPlayingEventListener(IPlayingEventListener iPlayingEventListener);

    void addSeekingPositionChangeListener(OnSeekingPositionListener onSeekingPositionListener);

    ArrayList<StickerInfoPack> addSticker(StickerInfoPack stickerInfoPack, boolean z);

    ArrayList<AVClipInfoPack> addVideoClip(AVClipInfoPack aVClipInfoPack);

    AVClipInfoPack addVideoClipList(ArrayList<AVClipInfoPack> arrayList);

    void adjustAllViceTrackRange(int i);

    AttachmentDrawRect getAttachmentDrawRectByTimelinePosition(int i, PointF pointF);

    ArrayList<AVClipInfoPack> getAudioClipInfoList();

    ArrayList<Caption> getCaptionList();

    List<PointF> getCaptionViewPoints(Caption caption);

    int getCurrentAudioPositionInClip(int i);

    int getCurrentAudioPositionInTimeline(int i);

    int getCurrentAudioRawPositionInClip(int i);

    int getCurrentVideoPositionInClip();

    int getCurrentVideoPositionInTimeline();

    int getCurrentVideoRawPositionInClip();

    ArrayList<PipInfoPack> getPipVideoList();

    Bitmap getSnapShot(SceneInfo sceneInfo);

    ArrayList<StickerInfoPack> getStickerList();

    List<PointF> getStickerViewPoints(StickerInfoPack stickerInfoPack);

    ArrayList<AVClipInfoPack> getVideoClipInfoList();

    Point getVideoSize(String str);

    View getVideoView();

    boolean isAudioPlaying(int i);

    boolean isLoop();

    boolean isSeeking();

    boolean isVideoPlaying();

    PointF mapViewToCanonical(PointF pointF);

    void mute();

    void onAudioTrackOffsetChanged(int i);

    void onPipVideoOffsetChanged(int i);

    void pause();

    boolean pauseWhenNextSeek();

    void playVideo(int i, int i2);

    void refreshBackgroundTrack();

    void refreshCurrentPosition();

    void release();

    void release(Object... objArr);

    void removeAllAudios();

    void removeAllVideos();

    ArrayList<AVClipInfoPack> removeAudioClip(AVClipInfoPack aVClipInfoPack);

    ArrayList<Caption> removeCaption(Caption caption);

    void removeGlobalAudioClip();

    void removeMediaEventListener(IMediaEventListener iMediaEventListener);

    ArrayList<PipInfoPack> removePipVideo(PipInfoPack pipInfoPack, int i);

    void removePlayingEventListener(IPlayingEventListener iPlayingEventListener);

    void removePositionChangeEventListener(OnSeekingPositionListener onSeekingPositionListener);

    ArrayList<StickerInfoPack> removeSticker(StickerInfoPack stickerInfoPack);

    ArrayList<AVClipInfoPack> removeVideoClip(AVClipInfoPack aVClipInfoPack);

    void resetAudioClip(AVClipInfoPack aVClipInfoPack);

    void resetAudioClipList(List<? extends AVClipInfoPack> list);

    void resetCaption(Caption caption, boolean z);

    void resetCaptionList(List<? extends Caption> list);

    void resetPipVideoList(List<? extends PipInfoPack> list);

    void resetSticker(StickerInfoPack stickerInfoPack);

    void resetStickerList(List<? extends StickerInfoPack> list);

    AVClipInfoPack resetVideoClipList(ArrayList<AVClipInfoPack> arrayList, int i, int i2);

    void restoreStates();

    void rotateCaption(Caption caption, float f);

    void rotateSticker(StickerInfoPack stickerInfoPack, float f);

    void scaleCaption(Caption caption, float f, PointF pointF);

    void scaleSticker(StickerInfoPack stickerInfoPack, float f, PointF pointF);

    void seekTimeLineTo(int i);

    void seekTimeLineTo(int i, int i2);

    AVClipInfoPack setActiveVideoClip(int i, int i2);

    void setGlobalBgmFade(boolean z, boolean z2);

    void setLoop(boolean z);

    void setPipVideoVolume(PipInfoPack pipInfoPack, float f, int i);

    void setVolume(AVClipInfoPack aVClipInfoPack, boolean z);

    void setVolumePercent(float f);

    void start();

    void start(long j);

    void startFromBeginning();

    void startFromBeginning(long j);

    void stop();

    void translateCaption(Caption caption, PointF pointF);

    void translateSticker(StickerInfoPack stickerInfoPack, PointF pointF);

    void unMute();

    void updateClipSpeed(AVClipInfoPack aVClipInfoPack);

    void updateClipTransform(AVClipInfoPack aVClipInfoPack);

    void updateGlobalAudioVolumeContrast(float f);

    void updatePipVideoTransform(PipInfoPack pipInfoPack);

    /* compiled from: IPreviewPlayer.kt */
    public static final class DefaultImpls {
        public static /* synthetic */ AVClipInfoPack resetVideoClipList$default(IPreviewPlayer iPreviewPlayer, ArrayList arrayList, int i, int i2, int i3, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resetVideoClipList");
            }
            if ((i3 & 2) != 0) {
                i = 0;
            }
            if ((i3 & 4) != 0) {
                i2 = 0;
            }
            return iPreviewPlayer.resetVideoClipList(arrayList, i, i2);
        }

        public static /* synthetic */ AVClipInfoPack setActiveVideoClip$default(IPreviewPlayer iPreviewPlayer, int i, int i2, int i3, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setActiveVideoClip");
            }
            if ((i3 & 2) != 0) {
                i2 = 0;
            }
            return iPreviewPlayer.setActiveVideoClip(i, i2);
        }

        public static /* synthetic */ ArrayList addAudioClip$default(IPreviewPlayer iPreviewPlayer, AVClipInfoPack aVClipInfoPack, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addAudioClip");
            }
            if ((i & 2) != 0) {
                z = false;
            }
            return iPreviewPlayer.addAudioClip(aVClipInfoPack, z);
        }

        public static /* synthetic */ ArrayList addSticker$default(IPreviewPlayer iPreviewPlayer, StickerInfoPack stickerInfoPack, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addSticker");
            }
            if ((i & 2) != 0) {
                z = false;
            }
            return iPreviewPlayer.addSticker(stickerInfoPack, z);
        }

        public static /* synthetic */ boolean isAudioPlaying$default(IPreviewPlayer iPreviewPlayer, int i, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: isAudioPlaying");
            }
            if ((i2 & 1) != 0) {
                i = -1;
            }
            return iPreviewPlayer.isAudioPlaying(i);
        }

        public static /* synthetic */ int getCurrentAudioPositionInClip$default(IPreviewPlayer iPreviewPlayer, int i, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getCurrentAudioPositionInClip");
            }
            if ((i2 & 1) != 0) {
                i = 0;
            }
            return iPreviewPlayer.getCurrentAudioPositionInClip(i);
        }

        public static /* synthetic */ int getCurrentAudioRawPositionInClip$default(IPreviewPlayer iPreviewPlayer, int i, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getCurrentAudioRawPositionInClip");
            }
            if ((i2 & 1) != 0) {
                i = 0;
            }
            return iPreviewPlayer.getCurrentAudioRawPositionInClip(i);
        }

        public static /* synthetic */ int getCurrentAudioPositionInTimeline$default(IPreviewPlayer iPreviewPlayer, int i, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getCurrentAudioPositionInTimeline");
            }
            if ((i2 & 1) != 0) {
                i = 0;
            }
            return iPreviewPlayer.getCurrentAudioPositionInTimeline(i);
        }
    }
}
