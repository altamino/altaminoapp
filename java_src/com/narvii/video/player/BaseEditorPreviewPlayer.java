package com.narvii.video.player;

import com.narvii.pip.PipInfoPack;
import com.narvii.video.interfaces.IMediaEventListener;
import com.narvii.video.interfaces.IPlayingEventListener;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.interfaces.OnSeekingPositionListener;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.BaseAttachmentInfoPack;
import com.narvii.video.model.BaseClipInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BaseEditorPreviewPlayer.kt */
/* loaded from: classes3.dex */
public abstract class BaseEditorPreviewPlayer implements IPreviewPlayer {
    private AVClipInfoPack activeVideoClip;
    private ArrayList<AVClipInfoPack> videoClipList = new ArrayList<>();
    private ArrayList<AVClipInfoPack> additionalAudioClipList = new ArrayList<>();
    private ArrayList<Caption> captions = new ArrayList<>();
    private ArrayList<StickerInfoPack> stickers = new ArrayList<>();
    private ArrayList<IMediaEventListener> mediaEventListeners = new ArrayList<>();
    private ArrayList<OnSeekingPositionListener> seekingPositionListeners = new ArrayList<>();
    private ArrayList<IPlayingEventListener> playingEventListeners = new ArrayList<>();
    private ArrayList<PipInfoPack> pipVideos = new ArrayList<>();
    private Boolean loop = false;

    public abstract void onActiveVideoClipChanged(boolean z, int i);

    public void onAudioClipListChanged(boolean z, int i) {
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void onPipVideoOffsetChanged(int i) {
    }

    protected final ArrayList<AVClipInfoPack> getVideoClipList() {
        return this.videoClipList;
    }

    protected final void setVideoClipList(ArrayList<AVClipInfoPack> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "<set-?>");
        this.videoClipList = arrayList;
    }

    protected final ArrayList<AVClipInfoPack> getAdditionalAudioClipList() {
        return this.additionalAudioClipList;
    }

    protected final void setAdditionalAudioClipList(ArrayList<AVClipInfoPack> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "<set-?>");
        this.additionalAudioClipList = arrayList;
    }

    protected final ArrayList<Caption> getCaptions() {
        return this.captions;
    }

    protected final void setCaptions(ArrayList<Caption> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "<set-?>");
        this.captions = arrayList;
    }

    protected final ArrayList<StickerInfoPack> getStickers() {
        return this.stickers;
    }

    protected final void setStickers(ArrayList<StickerInfoPack> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "<set-?>");
        this.stickers = arrayList;
    }

    protected final AVClipInfoPack getActiveVideoClip() {
        return this.activeVideoClip;
    }

    protected final void setActiveVideoClip(AVClipInfoPack aVClipInfoPack) {
        this.activeVideoClip = aVClipInfoPack;
    }

    protected final ArrayList<IMediaEventListener> getMediaEventListeners() {
        return this.mediaEventListeners;
    }

    protected final void setMediaEventListeners(ArrayList<IMediaEventListener> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "<set-?>");
        this.mediaEventListeners = arrayList;
    }

    protected final ArrayList<OnSeekingPositionListener> getSeekingPositionListeners() {
        return this.seekingPositionListeners;
    }

    protected final void setSeekingPositionListeners(ArrayList<OnSeekingPositionListener> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "<set-?>");
        this.seekingPositionListeners = arrayList;
    }

    protected final ArrayList<IPlayingEventListener> getPlayingEventListeners() {
        return this.playingEventListeners;
    }

    protected final void setPlayingEventListeners(ArrayList<IPlayingEventListener> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "<set-?>");
        this.playingEventListeners = arrayList;
    }

    protected final ArrayList<PipInfoPack> getPipVideos() {
        return this.pipVideos;
    }

    protected final void setPipVideos(ArrayList<PipInfoPack> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "<set-?>");
        this.pipVideos = arrayList;
    }

    protected final Boolean getLoop() {
        return this.loop;
    }

    protected final void setLoop(Boolean bool) {
        this.loop = bool;
    }

    public static /* synthetic */ void onActiveVideoClipChanged$default(BaseEditorPreviewPlayer baseEditorPreviewPlayer, boolean z, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onActiveVideoClipChanged");
        }
        if ((i2 & 1) != 0) {
            z = true;
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        baseEditorPreviewPlayer.onActiveVideoClipChanged(z, i);
    }

    public static /* synthetic */ void onAudioClipListChanged$default(BaseEditorPreviewPlayer baseEditorPreviewPlayer, boolean z, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onAudioClipListChanged");
        }
        if ((i2 & 1) != 0) {
            z = false;
        }
        if ((i2 & 2) != 0) {
            i = -1;
        }
        baseEditorPreviewPlayer.onAudioClipListChanged(z, i);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void addMediaEventListener(IMediaEventListener listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        this.mediaEventListeners.add(listener);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void removeMediaEventListener(IMediaEventListener listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        this.mediaEventListeners.remove(listener);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void addSeekingPositionChangeListener(OnSeekingPositionListener listenerSeeking) {
        Intrinsics.checkParameterIsNotNull(listenerSeeking, "listenerSeeking");
        this.seekingPositionListeners.add(listenerSeeking);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void removePositionChangeEventListener(OnSeekingPositionListener listenerSeeking) {
        Intrinsics.checkParameterIsNotNull(listenerSeeking, "listenerSeeking");
        this.seekingPositionListeners.remove(listenerSeeking);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void addPlayingEventListener(IPlayingEventListener listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        this.playingEventListeners.add(listener);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void removePlayingEventListener(IPlayingEventListener listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        this.playingEventListeners.remove(listener);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void release() {
        this.videoClipList.clear();
        this.additionalAudioClipList.clear();
        this.captions.clear();
        this.activeVideoClip = null;
        this.seekingPositionListeners.clear();
        this.playingEventListeners.clear();
        this.mediaEventListeners.clear();
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void release(Object... args) {
        Intrinsics.checkParameterIsNotNull(args, "args");
        this.videoClipList.clear();
        this.additionalAudioClipList.clear();
        this.captions.clear();
        this.activeVideoClip = null;
        this.seekingPositionListeners.clear();
        this.playingEventListeners.clear();
        this.mediaEventListeners.clear();
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public AVClipInfoPack addVideoClipList(ArrayList<AVClipInfoPack> clipList) {
        Intrinsics.checkParameterIsNotNull(clipList, "clipList");
        reCalcClipIndex(clipList, this.videoClipList.size());
        boolean z = this.videoClipList.isEmpty() && (clipList.isEmpty() ^ true);
        this.videoClipList.addAll(clipList);
        if (z) {
            this.activeVideoClip = this.videoClipList.get(0);
        }
        onActiveVideoClipChanged$default(this, false, 0, 3, null);
        return this.activeVideoClip;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void addAudioClipList(ArrayList<AVClipInfoPack> clipList) {
        Intrinsics.checkParameterIsNotNull(clipList, "clipList");
        reCalcClipIndex(clipList, this.additionalAudioClipList.size());
        boolean z = this.additionalAudioClipList.isEmpty() && (clipList.isEmpty() ^ true);
        this.additionalAudioClipList.addAll(clipList);
        if (z) {
            onAudioClipListChanged$default(this, false, 0, 3, null);
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public AVClipInfoPack resetVideoClipList(ArrayList<AVClipInfoPack> clipList, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(clipList, "clipList");
        this.videoClipList = clipList;
        reCalcClipIndex$default(this, this.videoClipList, 0, 2, null);
        this.activeVideoClip = this.videoClipList.isEmpty() ? null : this.videoClipList.get(i);
        onActiveVideoClipChanged$default(this, false, i2, 1, null);
        return this.activeVideoClip;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void resetAudioClipList(List<? extends AVClipInfoPack> clipList) {
        Intrinsics.checkParameterIsNotNull(clipList, "clipList");
        this.additionalAudioClipList.clear();
        this.additionalAudioClipList.addAll(clipList);
        reCalcClipIndex$default(this, this.additionalAudioClipList, 0, 2, null);
        onAudioClipListChanged$default(this, true, 0, 2, null);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void resetAudioClip(AVClipInfoPack clip) {
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        int size = this.additionalAudioClipList.size();
        int i = clip.indexInScene;
        if (i < 0 || size <= i) {
            return;
        }
        this.additionalAudioClipList.set(i, clip);
        onAudioClipListChanged$default(this, false, clip.indexInScene, 1, null);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<AVClipInfoPack> addVideoClip(AVClipInfoPack clip) {
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        boolean zIsEmpty = this.videoClipList.isEmpty();
        clip.indexInScene = this.videoClipList.size();
        this.videoClipList.add(clip);
        if (zIsEmpty) {
            this.activeVideoClip = clip;
        }
        onActiveVideoClipChanged$default(this, false, 0, 3, null);
        return this.videoClipList;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<AVClipInfoPack> addAudioClip(AVClipInfoPack clip, boolean z) {
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        clip.indexInScene = this.additionalAudioClipList.size();
        this.additionalAudioClipList.add(clip);
        onAudioClipListChanged$default(this, false, 0, 3, null);
        return this.additionalAudioClipList;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void resetCaptionList(List<? extends Caption> captionList) {
        Intrinsics.checkParameterIsNotNull(captionList, "captionList");
        this.captions.clear();
        this.captions.addAll(captionList);
        reCalcClipIndex$default(this, this.captions, 0, 2, null);
        updateIndexInMixedAttachmentList$default(this, CollectionsKt___CollectionsKt.plus(this.stickers, this.captions), false, 2, null);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<Caption> addCaption(Caption caption) {
        Intrinsics.checkParameterIsNotNull(caption, "caption");
        caption.indexInScene = this.captions.size();
        this.captions.add(caption);
        updateIndexInMixedAttachmentList$default(this, CollectionsKt___CollectionsKt.plus(this.stickers, this.captions), false, 2, null);
        return this.captions;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<Caption> removeCaption(Caption caption) {
        Intrinsics.checkParameterIsNotNull(caption, "caption");
        this.captions.remove(caption);
        reCalcClipIndex$default(this, this.captions, 0, 2, null);
        updateIndexInMixedAttachmentList$default(this, CollectionsKt___CollectionsKt.plus(this.stickers, this.captions), false, 2, null);
        return this.captions;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<Caption> getCaptionList() {
        return this.captions;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void resetCaption(Caption caption, boolean z) {
        Intrinsics.checkParameterIsNotNull(caption, "caption");
        if (isCaptionIndexValid(caption)) {
            this.captions.set(caption.indexInScene, caption);
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<AVClipInfoPack> removeVideoClip(AVClipInfoPack clip) {
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        this.videoClipList.remove(clip);
        reCalcClipIndex$default(this, this.videoClipList, 0, 2, null);
        if (Intrinsics.areEqual(clip, this.activeVideoClip)) {
            this.activeVideoClip = this.videoClipList.isEmpty() ? null : this.videoClipList.get(0);
        }
        onActiveVideoClipChanged$default(this, false, 0, 3, null);
        return this.videoClipList;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<AVClipInfoPack> removeAudioClip(AVClipInfoPack clip) {
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        this.additionalAudioClipList.remove(clip);
        reCalcClipIndex$default(this, this.additionalAudioClipList, 0, 2, null);
        onAudioClipListChanged$default(this, false, 0, 3, null);
        return this.additionalAudioClipList;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void removeAllVideos() {
        this.videoClipList.clear();
        this.activeVideoClip = null;
        onActiveVideoClipChanged$default(this, false, 0, 3, null);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void removeAllAudios() {
        this.additionalAudioClipList.clear();
        onAudioClipListChanged$default(this, true, 0, 2, null);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void adjustAllViceTrackRange(int i) {
        adjustTrackRange(this.additionalAudioClipList, i, new Function1<List<? extends AVClipInfoPack>, Unit>() { // from class: com.narvii.video.player.BaseEditorPreviewPlayer.adjustAllViceTrackRange.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends AVClipInfoPack> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<? extends AVClipInfoPack> it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                BaseEditorPreviewPlayer.this.resetAudioClipList(it);
            }
        });
        adjustTrackRange(this.captions, i, new Function1<List<? extends Caption>, Unit>() { // from class: com.narvii.video.player.BaseEditorPreviewPlayer.adjustAllViceTrackRange.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends Caption> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<? extends Caption> it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                BaseEditorPreviewPlayer.this.resetCaptionList(it);
            }
        });
        adjustTrackRange(this.stickers, i, new Function1<List<? extends StickerInfoPack>, Unit>() { // from class: com.narvii.video.player.BaseEditorPreviewPlayer.adjustAllViceTrackRange.3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends StickerInfoPack> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<? extends StickerInfoPack> it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                BaseEditorPreviewPlayer.this.resetStickerList(it);
            }
        });
        adjustTrackRange(this.pipVideos, i, new Function1<List<? extends PipInfoPack>, Unit>() { // from class: com.narvii.video.player.BaseEditorPreviewPlayer.adjustAllViceTrackRange.4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends PipInfoPack> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<? extends PipInfoPack> it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                BaseEditorPreviewPlayer.this.resetPipVideoList(it);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0036  */
    @Override // com.narvii.video.interfaces.IPreviewPlayer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.narvii.video.model.AVClipInfoPack setActiveVideoClip(int r5, int r6) {
        /*
            r4 = this;
            java.util.ArrayList<com.narvii.video.model.AVClipInfoPack> r0 = r4.videoClipList
            int r0 = r0.size()
            r1 = 0
            if (r5 >= 0) goto La
            goto L15
        La:
            if (r0 <= r5) goto L15
            java.util.ArrayList<com.narvii.video.model.AVClipInfoPack> r0 = r4.videoClipList
            java.lang.Object r0 = r0.get(r5)
            com.narvii.video.model.AVClipInfoPack r0 = (com.narvii.video.model.AVClipInfoPack) r0
            goto L16
        L15:
            r0 = r1
        L16:
            com.narvii.video.model.AVClipInfoPack r2 = r4.activeVideoClip
            if (r2 == 0) goto L1d
            int r2 = r2.indexInScene
            goto L1e
        L1d:
            r2 = -1
        L1e:
            r3 = 0
            if (r5 != r2) goto L36
            com.narvii.video.model.AVClipInfoPack r5 = r4.activeVideoClip
            if (r5 == 0) goto L28
            java.lang.String r5 = r5.inputPath
            goto L29
        L28:
            r5 = r1
        L29:
            if (r0 == 0) goto L2d
            java.lang.String r1 = r0.inputPath
        L2d:
            boolean r5 = android.text.TextUtils.equals(r5, r1)
            if (r5 != 0) goto L34
            goto L36
        L34:
            r5 = 0
            goto L37
        L36:
            r5 = 1
        L37:
            r4.activeVideoClip = r0
            if (r5 == 0) goto L3e
            r4.onActiveVideoClipChanged(r3, r6)
        L3e:
            com.narvii.video.model.AVClipInfoPack r5 = r4.activeVideoClip
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.video.player.BaseEditorPreviewPlayer.setActiveVideoClip(int, int):com.narvii.video.model.AVClipInfoPack");
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<AVClipInfoPack> getVideoClipInfoList() {
        return this.videoClipList;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<AVClipInfoPack> getAudioClipInfoList() {
        return this.additionalAudioClipList;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    @Override // com.narvii.video.interfaces.IPreviewPlayer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.narvii.video.model.StickerInfoPack> addSticker(com.narvii.video.model.StickerInfoPack r5, boolean r6) {
        /*
            r4 = this;
            java.lang.String r0 = "sticker"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0)
            r0 = 0
            r1 = 2
            r2 = 0
            if (r6 == 0) goto L22
            java.util.ArrayList<com.narvii.video.model.StickerInfoPack> r6 = r4.stickers
            int r6 = r6.size()
            int r3 = r5.indexInScene
            if (r3 >= 0) goto L15
            goto L22
        L15:
            if (r6 <= r3) goto L22
            java.util.ArrayList<com.narvii.video.model.StickerInfoPack> r6 = r4.stickers
            r6.add(r3, r5)
            java.util.ArrayList<com.narvii.video.model.StickerInfoPack> r5 = r4.stickers
            reCalcClipIndex$default(r4, r5, r2, r1, r0)
            goto L2f
        L22:
            java.util.ArrayList<com.narvii.video.model.StickerInfoPack> r6 = r4.stickers
            int r6 = r6.size()
            r5.indexInScene = r6
            java.util.ArrayList<com.narvii.video.model.StickerInfoPack> r6 = r4.stickers
            r6.add(r5)
        L2f:
            java.util.ArrayList<com.narvii.video.model.StickerInfoPack> r5 = r4.stickers
            java.util.ArrayList<com.narvii.video.model.Caption> r6 = r4.captions
            java.util.List r5 = kotlin.collections.CollectionsKt.plus(r5, r6)
            updateIndexInMixedAttachmentList$default(r4, r5, r2, r1, r0)
            java.util.ArrayList<com.narvii.video.model.StickerInfoPack> r5 = r4.stickers
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.video.player.BaseEditorPreviewPlayer.addSticker(com.narvii.video.model.StickerInfoPack, boolean):java.util.ArrayList");
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<StickerInfoPack> removeSticker(StickerInfoPack sticker) {
        Intrinsics.checkParameterIsNotNull(sticker, "sticker");
        this.stickers.remove(sticker);
        reCalcClipIndex$default(this, this.stickers, 0, 2, null);
        updateIndexInMixedAttachmentList$default(this, CollectionsKt___CollectionsKt.plus(this.stickers, this.captions), false, 2, null);
        return this.stickers;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void resetSticker(StickerInfoPack sticker) {
        Intrinsics.checkParameterIsNotNull(sticker, "sticker");
        int size = this.stickers.size();
        int i = sticker.indexInScene;
        if (i < 0 || size <= i) {
            return;
        }
        this.stickers.set(i, sticker);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void resetStickerList(List<? extends StickerInfoPack> stickerList) {
        Intrinsics.checkParameterIsNotNull(stickerList, "stickerList");
        this.stickers.clear();
        this.stickers.addAll(stickerList);
        reCalcClipIndex$default(this, this.stickers, 0, 2, null);
        updateIndexInMixedAttachmentList$default(this, CollectionsKt___CollectionsKt.plus(this.stickers, this.captions), false, 2, null);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<StickerInfoPack> getStickerList() {
        return this.stickers;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void setLoop(boolean z) {
        this.loop = Boolean.valueOf(z);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public boolean isLoop() {
        Boolean bool = this.loop;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<PipInfoPack> addPipVideo(PipInfoPack pipVideo) {
        Intrinsics.checkParameterIsNotNull(pipVideo, "pipVideo");
        pipVideo.indexInScene = this.pipVideos.size();
        this.pipVideos.add(pipVideo);
        return this.pipVideos;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<PipInfoPack> removePipVideo(PipInfoPack pipVideo, int i) {
        Intrinsics.checkParameterIsNotNull(pipVideo, "pipVideo");
        this.pipVideos.remove(pipVideo);
        return this.pipVideos;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void resetPipVideoList(List<? extends PipInfoPack> pipVideoList) {
        Intrinsics.checkParameterIsNotNull(pipVideoList, "pipVideoList");
        this.pipVideos.clear();
        this.pipVideos.addAll(pipVideoList);
        reCalcClipIndex$default(this, this.pipVideos, 0, 2, null);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public ArrayList<PipInfoPack> getPipVideoList() {
        return this.pipVideos;
    }

    static /* synthetic */ void reCalcClipIndex$default(BaseEditorPreviewPlayer baseEditorPreviewPlayer, ArrayList arrayList, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reCalcClipIndex");
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        baseEditorPreviewPlayer.reCalcClipIndex(arrayList, i);
    }

    private final void reCalcClipIndex(ArrayList<? extends BaseClipInfoPack> arrayList, int i) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.get(i2).indexInScene = i2 + i;
        }
    }

    private final boolean isCaptionIndexValid(Caption caption) {
        int size = this.captions.size();
        int i = caption.indexInScene;
        return i >= 0 && size > i;
    }

    protected final float getLatestAttachmentZVal(List<? extends BaseAttachmentInfoPack> list) {
        Intrinsics.checkParameterIsNotNull(list, "list");
        Iterator<? extends BaseAttachmentInfoPack> it = list.iterator();
        float f = 0.0f;
        while (it.hasNext()) {
            float f2 = it.next().zValue;
            if (f2 > f) {
                f = f2;
            }
        }
        return f + 0.01f;
    }

    private final <T extends BaseClipInfoPack> void adjustTrackRange(List<? extends T> list, int i, Function1<? super List<? extends T>, Unit> function1) {
        if (!list.isEmpty()) {
            ArrayList<BaseClipInfoPack> arrayList = new ArrayList();
            for (Object obj : list) {
                BaseClipInfoPack baseClipInfoPack = (BaseClipInfoPack) obj;
                if (baseClipInfoPack.startOffsetToMainTrackInMs <= i - baseClipInfoPack.minValidLengthMs()) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
            for (BaseClipInfoPack baseClipInfoPack2 : arrayList) {
                int i2 = baseClipInfoPack2.startOffsetToMainTrackInMs;
                if (baseClipInfoPack2.visibleDurationInMs + i2 > i) {
                    baseClipInfoPack2.visibleDurationInMs = i - i2;
                }
                arrayList2.add(baseClipInfoPack2);
            }
            function1.invoke(arrayList2);
        }
    }

    public static /* synthetic */ void updateIndexInMixedAttachmentList$default(BaseEditorPreviewPlayer baseEditorPreviewPlayer, List list, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateIndexInMixedAttachmentList");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        baseEditorPreviewPlayer.updateIndexInMixedAttachmentList(list, z);
    }

    protected final void updateIndexInMixedAttachmentList(List<? extends BaseAttachmentInfoPack> list, boolean z) {
        Intrinsics.checkParameterIsNotNull(list, "list");
        int size = list.size();
        for (int i = 0; i < size; i++) {
            list.get(i).indexInMixedAttachmentList = i;
        }
    }
}
