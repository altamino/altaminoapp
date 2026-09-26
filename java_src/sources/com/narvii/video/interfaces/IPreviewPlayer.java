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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public interface IPreviewPlayer extends IExtraAudioTrackPlugin {

    public static final class DefaultImpls {
        public static /* synthetic */ ArrayList addAudioClip$default(IPreviewPlayer iPreviewPlayer, AVClipInfoPack aVClipInfoPack, boolean z6, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addAudioClip");
            }
            if ((i10 & 2) != 0) {
                z6 = false;
            }
            return iPreviewPlayer.addAudioClip(aVClipInfoPack, z6);
        }

        public static /* synthetic */ ArrayList addSticker$default(IPreviewPlayer iPreviewPlayer, StickerInfoPack stickerInfoPack, boolean z6, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addSticker");
            }
            if ((i10 & 2) != 0) {
                z6 = false;
            }
            return iPreviewPlayer.addSticker(stickerInfoPack, z6);
        }

        public static /* synthetic */ int getCurrentAudioPositionInClip$default(IPreviewPlayer iPreviewPlayer, int i10, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getCurrentAudioPositionInClip");
            }
            if ((i11 & 1) != 0) {
                i10 = 0;
            }
            return iPreviewPlayer.getCurrentAudioPositionInClip(i10);
        }

        public static /* synthetic */ int getCurrentAudioPositionInTimeline$default(IPreviewPlayer iPreviewPlayer, int i10, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getCurrentAudioPositionInTimeline");
            }
            if ((i11 & 1) != 0) {
                i10 = 0;
            }
            return iPreviewPlayer.getCurrentAudioPositionInTimeline(i10);
        }

        public static /* synthetic */ int getCurrentAudioRawPositionInClip$default(IPreviewPlayer iPreviewPlayer, int i10, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getCurrentAudioRawPositionInClip");
            }
            if ((i11 & 1) != 0) {
                i10 = 0;
            }
            return iPreviewPlayer.getCurrentAudioRawPositionInClip(i10);
        }

        public static /* synthetic */ boolean isAudioPlaying$default(IPreviewPlayer iPreviewPlayer, int i10, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: isAudioPlaying");
            }
            if ((i11 & 1) != 0) {
                i10 = -1;
            }
            return iPreviewPlayer.isAudioPlaying(i10);
        }

        public static /* synthetic */ AVClipInfoPack resetVideoClipList$default(IPreviewPlayer iPreviewPlayer, ArrayList arrayList, int i10, int i11, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resetVideoClipList");
            }
            if ((i12 & 2) != 0) {
                i10 = 0;
            }
            if ((i12 & 4) != 0) {
                i11 = 0;
            }
            return iPreviewPlayer.resetVideoClipList(arrayList, i10, i11);
        }

        public static /* synthetic */ AVClipInfoPack setActiveVideoClip$default(IPreviewPlayer iPreviewPlayer, int i10, int i11, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setActiveVideoClip");
            }
            if ((i12 & 2) != 0) {
                i11 = 0;
            }
            return iPreviewPlayer.setActiveVideoClip(i10, i11);
        }
    }

    @NotNull
    ArrayList<AVClipInfoPack> addAudioClip(@NotNull AVClipInfoPack aVClipInfoPack, boolean z6);

    void addAudioClipList(@NotNull ArrayList<AVClipInfoPack> arrayList);

    @NotNull
    ArrayList<Caption> addCaption(@NotNull Caption caption);

    void addMediaEventListener(@NotNull IMediaEventListener iMediaEventListener);

    @NotNull
    ArrayList<PipInfoPack> addPipVideo(@NotNull PipInfoPack pipInfoPack);

    void addPlayingEventListener(@NotNull IPlayingEventListener iPlayingEventListener);

    void addSeekingPositionChangeListener(@NotNull OnSeekingPositionListener onSeekingPositionListener);

    @NotNull
    ArrayList<StickerInfoPack> addSticker(@NotNull StickerInfoPack stickerInfoPack, boolean z6);

    @NotNull
    ArrayList<AVClipInfoPack> addVideoClip(@NotNull AVClipInfoPack aVClipInfoPack);

    @Nullable
    AVClipInfoPack addVideoClipList(@NotNull ArrayList<AVClipInfoPack> arrayList);

    void adjustAllViceTrackRange(int i10);

    @Nullable
    AttachmentDrawRect getAttachmentDrawRectByTimelinePosition(int i10, @NotNull PointF pointF);

    @NotNull
    ArrayList<AVClipInfoPack> getAudioClipInfoList();

    @NotNull
    ArrayList<Caption> getCaptionList();

    @Nullable
    List<PointF> getCaptionViewPoints(@NotNull Caption caption);

    int getCurrentAudioPositionInClip(int i10);

    int getCurrentAudioPositionInTimeline(int i10);

    int getCurrentAudioRawPositionInClip(int i10);

    int getCurrentVideoPositionInClip();

    int getCurrentVideoPositionInTimeline();

    int getCurrentVideoRawPositionInClip();

    @NotNull
    ArrayList<PipInfoPack> getPipVideoList();

    @Nullable
    Bitmap getSnapShot(@Nullable SceneInfo sceneInfo);

    @NotNull
    ArrayList<StickerInfoPack> getStickerList();

    @Nullable
    List<PointF> getStickerViewPoints(@NotNull StickerInfoPack stickerInfoPack);

    @NotNull
    ArrayList<AVClipInfoPack> getVideoClipInfoList();

    @NotNull
    Point getVideoSize(@NotNull String str);

    @NotNull
    View getVideoView();

    boolean isAudioPlaying(int i10);

    boolean isLoop();

    boolean isSeeking();

    boolean isVideoPlaying();

    @Nullable
    PointF mapViewToCanonical(@Nullable PointF pointF);

    void mute();

    void onAudioTrackOffsetChanged(int i10);

    void onPipVideoOffsetChanged(int i10);

    void pause();

    boolean pauseWhenNextSeek();

    void playVideo(int i10, int i11);

    void refreshBackgroundTrack();

    void refreshCurrentPosition();

    void release();

    void release(@NotNull Object... objArr);

    void removeAllAudios();

    void removeAllVideos();

    @NotNull
    ArrayList<AVClipInfoPack> removeAudioClip(@NotNull AVClipInfoPack aVClipInfoPack);

    @NotNull
    ArrayList<Caption> removeCaption(@NotNull Caption caption);

    void removeGlobalAudioClip();

    void removeMediaEventListener(@NotNull IMediaEventListener iMediaEventListener);

    @NotNull
    ArrayList<PipInfoPack> removePipVideo(@NotNull PipInfoPack pipInfoPack, int i10);

    void removePlayingEventListener(@NotNull IPlayingEventListener iPlayingEventListener);

    void removePositionChangeEventListener(@NotNull OnSeekingPositionListener onSeekingPositionListener);

    @NotNull
    ArrayList<StickerInfoPack> removeSticker(@NotNull StickerInfoPack stickerInfoPack);

    @NotNull
    ArrayList<AVClipInfoPack> removeVideoClip(@NotNull AVClipInfoPack aVClipInfoPack);

    void resetAudioClip(@NotNull AVClipInfoPack aVClipInfoPack);

    void resetAudioClipList(@NotNull List<? extends AVClipInfoPack> list);

    void resetCaption(@NotNull Caption caption, boolean z6);

    void resetCaptionList(@NotNull List<? extends Caption> list);

    void resetPipVideoList(@NotNull List<? extends PipInfoPack> list);

    void resetSticker(@NotNull StickerInfoPack stickerInfoPack);

    void resetStickerList(@NotNull List<? extends StickerInfoPack> list);

    @Nullable
    AVClipInfoPack resetVideoClipList(@NotNull ArrayList<AVClipInfoPack> arrayList, int i10, int i11);

    void restoreStates();

    void rotateCaption(@NotNull Caption caption, float f);

    void rotateSticker(@NotNull StickerInfoPack stickerInfoPack, float f);

    void scaleCaption(@NotNull Caption caption, float f, @Nullable PointF pointF);

    void scaleSticker(@NotNull StickerInfoPack stickerInfoPack, float f, @Nullable PointF pointF);

    void seekTimeLineTo(int i10);

    void seekTimeLineTo(int i10, int i11);

    @Nullable
    AVClipInfoPack setActiveVideoClip(int i10, int i11);

    void setGlobalBgmFade(boolean z6, boolean z10);

    void setLoop(boolean z6);

    void setPipVideoVolume(@NotNull PipInfoPack pipInfoPack, float f, int i10);

    void setVolume(@NotNull AVClipInfoPack aVClipInfoPack, boolean z6);

    void setVolumePercent(float f);

    void start();

    void start(long j6);

    void startFromBeginning();

    void startFromBeginning(long j6);

    void stop();

    void translateCaption(@NotNull Caption caption, @Nullable PointF pointF);

    void translateSticker(@NotNull StickerInfoPack stickerInfoPack, @Nullable PointF pointF);

    void unMute();

    void updateClipSpeed(@NotNull AVClipInfoPack aVClipInfoPack);

    void updateClipTransform(@NotNull AVClipInfoPack aVClipInfoPack);

    void updateGlobalAudioVolumeContrast(float f);

    void updatePipVideoTransform(@NotNull PipInfoPack pipInfoPack);
}
