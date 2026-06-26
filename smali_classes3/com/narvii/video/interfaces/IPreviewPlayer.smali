.class public interface abstract Lcom/narvii/video/interfaces/IPreviewPlayer;
.super Ljava/lang/Object;
.source "IPreviewPlayer.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IExtraAudioTrackPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract addAudioClip(Lcom/narvii/video/model/AVClipInfoPack;Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract addAudioClipList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addCaption(Lcom/narvii/video/model/Caption;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/Caption;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation
.end method

.method public abstract addMediaEventListener(Lcom/narvii/video/interfaces/IMediaEventListener;)V
.end method

.method public abstract addPipVideo(Lcom/narvii/pip/PipInfoPack;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/pip/PipInfoPack;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract addPlayingEventListener(Lcom/narvii/video/interfaces/IPlayingEventListener;)V
.end method

.method public abstract addSeekingPositionChangeListener(Lcom/narvii/video/interfaces/OnSeekingPositionListener;)V
.end method

.method public abstract addSticker(Lcom/narvii/video/model/StickerInfoPack;Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/StickerInfoPack;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract addVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract addVideoClipList(Ljava/util/ArrayList;)Lcom/narvii/video/model/AVClipInfoPack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)",
            "Lcom/narvii/video/model/AVClipInfoPack;"
        }
    .end annotation
.end method

.method public abstract adjustAllViceTrackRange(I)V
.end method

.method public abstract getAttachmentDrawRectByTimelinePosition(ILandroid/graphics/PointF;)Lcom/narvii/video/attachment/caption/AttachmentDrawRect;
.end method

.method public abstract getAudioClipInfoList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCaptionList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCaptionViewPoints(Lcom/narvii/video/model/Caption;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/Caption;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentAudioPositionInClip(I)I
.end method

.method public abstract getCurrentAudioPositionInTimeline(I)I
.end method

.method public abstract getCurrentAudioRawPositionInClip(I)I
.end method

.method public abstract getCurrentVideoPositionInClip()I
.end method

.method public abstract getCurrentVideoPositionInTimeline()I
.end method

.method public abstract getCurrentVideoRawPositionInClip()I
.end method

.method public abstract getPipVideoList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSnapShot(Lcom/narvii/scene/model/SceneInfo;)Landroid/graphics/Bitmap;
.end method

.method public abstract getStickerList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStickerViewPoints(Lcom/narvii/video/model/StickerInfoPack;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoClipInfoList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoSize(Ljava/lang/String;)Landroid/graphics/Point;
.end method

.method public abstract getVideoView()Landroid/view/View;
.end method

.method public abstract isAudioPlaying(I)Z
.end method

.method public abstract isLoop()Z
.end method

.method public abstract isSeeking()Z
.end method

.method public abstract isVideoPlaying()Z
.end method

.method public abstract mapViewToCanonical(Landroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method public abstract mute()V
.end method

.method public abstract onAudioTrackOffsetChanged(I)V
.end method

.method public abstract onPipVideoOffsetChanged(I)V
.end method

.method public abstract pause()V
.end method

.method public abstract pauseWhenNextSeek()Z
.end method

.method public abstract playVideo(II)V
.end method

.method public abstract refreshBackgroundTrack()V
.end method

.method public abstract refreshCurrentPosition()V
.end method

.method public abstract release()V
.end method

.method public varargs abstract release([Ljava/lang/Object;)V
.end method

.method public abstract removeAllAudios()V
.end method

.method public abstract removeAllVideos()V
.end method

.method public abstract removeAudioClip(Lcom/narvii/video/model/AVClipInfoPack;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeCaption(Lcom/narvii/video/model/Caption;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/Caption;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeGlobalAudioClip()V
.end method

.method public abstract removeMediaEventListener(Lcom/narvii/video/interfaces/IMediaEventListener;)V
.end method

.method public abstract removePipVideo(Lcom/narvii/pip/PipInfoPack;I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/pip/PipInfoPack;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removePlayingEventListener(Lcom/narvii/video/interfaces/IPlayingEventListener;)V
.end method

.method public abstract removePositionChangeEventListener(Lcom/narvii/video/interfaces/OnSeekingPositionListener;)V
.end method

.method public abstract removeSticker(Lcom/narvii/video/model/StickerInfoPack;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract resetAudioClip(Lcom/narvii/video/model/AVClipInfoPack;)V
.end method

.method public abstract resetAudioClipList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resetCaption(Lcom/narvii/video/model/Caption;Z)V
.end method

.method public abstract resetCaptionList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/Caption;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resetPipVideoList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resetSticker(Lcom/narvii/video/model/StickerInfoPack;)V
.end method

.method public abstract resetStickerList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resetVideoClipList(Ljava/util/ArrayList;II)Lcom/narvii/video/model/AVClipInfoPack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;II)",
            "Lcom/narvii/video/model/AVClipInfoPack;"
        }
    .end annotation
.end method

.method public abstract restoreStates()V
.end method

.method public abstract rotateCaption(Lcom/narvii/video/model/Caption;F)V
.end method

.method public abstract rotateSticker(Lcom/narvii/video/model/StickerInfoPack;F)V
.end method

.method public abstract scaleCaption(Lcom/narvii/video/model/Caption;FLandroid/graphics/PointF;)V
.end method

.method public abstract scaleSticker(Lcom/narvii/video/model/StickerInfoPack;FLandroid/graphics/PointF;)V
.end method

.method public abstract seekTimeLineTo(I)V
.end method

.method public abstract seekTimeLineTo(II)V
.end method

.method public abstract setActiveVideoClip(II)Lcom/narvii/video/model/AVClipInfoPack;
.end method

.method public abstract setGlobalBgmFade(ZZ)V
.end method

.method public abstract setLoop(Z)V
.end method

.method public abstract setPipVideoVolume(Lcom/narvii/pip/PipInfoPack;FI)V
.end method

.method public abstract setVolume(Lcom/narvii/video/model/AVClipInfoPack;Z)V
.end method

.method public abstract setVolumePercent(F)V
.end method

.method public abstract start()V
.end method

.method public abstract start(J)V
.end method

.method public abstract startFromBeginning()V
.end method

.method public abstract startFromBeginning(J)V
.end method

.method public abstract stop()V
.end method

.method public abstract translateCaption(Lcom/narvii/video/model/Caption;Landroid/graphics/PointF;)V
.end method

.method public abstract translateSticker(Lcom/narvii/video/model/StickerInfoPack;Landroid/graphics/PointF;)V
.end method

.method public abstract unMute()V
.end method

.method public abstract updateClipSpeed(Lcom/narvii/video/model/AVClipInfoPack;)V
.end method

.method public abstract updateClipTransform(Lcom/narvii/video/model/AVClipInfoPack;)V
.end method

.method public abstract updateGlobalAudioVolumeContrast(F)V
.end method

.method public abstract updatePipVideoTransform(Lcom/narvii/pip/PipInfoPack;)V
.end method
