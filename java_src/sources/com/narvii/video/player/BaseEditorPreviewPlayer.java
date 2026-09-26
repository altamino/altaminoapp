package com.narvii.video.player;

import android.text.TextUtils;
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
import e8.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public abstract class BaseEditorPreviewPlayer implements IPreviewPlayer {

    @Nullable
    private AVClipInfoPack activeVideoClip;

    @NotNull
    private ArrayList<AVClipInfoPack> videoClipList = new ArrayList<>();

    @NotNull
    private ArrayList<AVClipInfoPack> additionalAudioClipList = new ArrayList<>();

    @NotNull
    private ArrayList<Caption> captions = new ArrayList<>();

    @NotNull
    private ArrayList<StickerInfoPack> stickers = new ArrayList<>();

    @NotNull
    private ArrayList<IMediaEventListener> mediaEventListeners = new ArrayList<>();

    @NotNull
    private ArrayList<OnSeekingPositionListener> seekingPositionListeners = new ArrayList<>();

    @NotNull
    private ArrayList<IPlayingEventListener> playingEventListeners = new ArrayList<>();

    @NotNull
    private ArrayList<PipInfoPack> pipVideos = new ArrayList<>();

    @Nullable
    private Boolean loop = Boolean.FALSE;

    /* JADX INFO: renamed from: com.narvii.video.player.BaseEditorPreviewPlayer$adjustAllViceTrackRange$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<List<? extends AVClipInfoPack>, l0> {
        AnonymousClass1() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(List<? extends AVClipInfoPack> list) {
            invoke2(list);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull List<? extends AVClipInfoPack> it) {
            t.j(it, "it");
            BaseEditorPreviewPlayer.this.resetAudioClipList(it);
        }
    }

    /* JADX INFO: renamed from: com.narvii.video.player.BaseEditorPreviewPlayer$adjustAllViceTrackRange$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements l<List<? extends Caption>, l0> {
        AnonymousClass2() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(List<? extends Caption> list) {
            invoke2(list);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull List<? extends Caption> it) {
            t.j(it, "it");
            BaseEditorPreviewPlayer.this.resetCaptionList(it);
        }
    }

    /* JADX INFO: renamed from: com.narvii.video.player.BaseEditorPreviewPlayer$adjustAllViceTrackRange$3, reason: invalid class name */
    static final class AnonymousClass3 extends v implements l<List<? extends StickerInfoPack>, l0> {
        AnonymousClass3() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(List<? extends StickerInfoPack> list) {
            invoke2(list);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull List<? extends StickerInfoPack> it) {
            t.j(it, "it");
            BaseEditorPreviewPlayer.this.resetStickerList(it);
        }
    }

    /* JADX INFO: renamed from: com.narvii.video.player.BaseEditorPreviewPlayer$adjustAllViceTrackRange$4, reason: invalid class name */
    static final class AnonymousClass4 extends v implements l<List<? extends PipInfoPack>, l0> {
        AnonymousClass4() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(List<? extends PipInfoPack> list) {
            invoke2(list);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull List<? extends PipInfoPack> it) {
            t.j(it, "it");
            BaseEditorPreviewPlayer.this.resetPipVideoList(it);
        }
    }

    private final <T extends BaseClipInfoPack> void adjustTrackRange(List<? extends T> list, int i10, l<? super List<? extends T>, l0> lVar) {
        if (!list.isEmpty()) {
            ArrayList<BaseClipInfoPack> arrayList = new ArrayList();
            for (Object obj : list) {
                BaseClipInfoPack baseClipInfoPack = (BaseClipInfoPack) obj;
                if (baseClipInfoPack.startOffsetToMainTrackInMs <= i10 - baseClipInfoPack.minValidLengthMs()) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(w.x(arrayList, 10));
            for (BaseClipInfoPack baseClipInfoPack2 : arrayList) {
                int i11 = baseClipInfoPack2.startOffsetToMainTrackInMs;
                if (baseClipInfoPack2.visibleDurationInMs + i11 > i10) {
                    baseClipInfoPack2.visibleDurationInMs = i10 - i11;
                }
                arrayList2.add(baseClipInfoPack2);
            }
            lVar.invoke(arrayList2);
        }
    }

    @Nullable
    protected final AVClipInfoPack getActiveVideoClip() {
        return this.activeVideoClip;
    }

    @NotNull
    protected final ArrayList<AVClipInfoPack> getAdditionalAudioClipList() {
        return this.additionalAudioClipList;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public ArrayList<AVClipInfoPack> getAudioClipInfoList() {
        return this.additionalAudioClipList;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public ArrayList<Caption> getCaptionList() {
        return this.captions;
    }

    @NotNull
    protected final ArrayList<Caption> getCaptions() {
        return this.captions;
    }

    @Nullable
    protected final Boolean getLoop() {
        return this.loop;
    }

    @NotNull
    protected final ArrayList<IMediaEventListener> getMediaEventListeners() {
        return this.mediaEventListeners;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public ArrayList<PipInfoPack> getPipVideoList() {
        return this.pipVideos;
    }

    @NotNull
    protected final ArrayList<PipInfoPack> getPipVideos() {
        return this.pipVideos;
    }

    @NotNull
    protected final ArrayList<IPlayingEventListener> getPlayingEventListeners() {
        return this.playingEventListeners;
    }

    @NotNull
    protected final ArrayList<OnSeekingPositionListener> getSeekingPositionListeners() {
        return this.seekingPositionListeners;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public ArrayList<StickerInfoPack> getStickerList() {
        return this.stickers;
    }

    @NotNull
    protected final ArrayList<StickerInfoPack> getStickers() {
        return this.stickers;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public ArrayList<AVClipInfoPack> getVideoClipInfoList() {
        return this.videoClipList;
    }

    @NotNull
    protected final ArrayList<AVClipInfoPack> getVideoClipList() {
        return this.videoClipList;
    }

    public abstract void onActiveVideoClipChanged(boolean z6, int i10);

    public void onAudioClipListChanged(boolean z6, int i10) {
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void onPipVideoOffsetChanged(int i10) {
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

    protected final void setActiveVideoClip(@Nullable AVClipInfoPack aVClipInfoPack) {
        this.activeVideoClip = aVClipInfoPack;
    }

    protected final void setAdditionalAudioClipList(@NotNull ArrayList<AVClipInfoPack> arrayList) {
        t.j(arrayList, "<set-?>");
        this.additionalAudioClipList = arrayList;
    }

    protected final void setCaptions(@NotNull ArrayList<Caption> arrayList) {
        t.j(arrayList, "<set-?>");
        this.captions = arrayList;
    }

    protected final void setLoop(@Nullable Boolean bool) {
        this.loop = bool;
    }

    protected final void setMediaEventListeners(@NotNull ArrayList<IMediaEventListener> arrayList) {
        t.j(arrayList, "<set-?>");
        this.mediaEventListeners = arrayList;
    }

    protected final void setPipVideos(@NotNull ArrayList<PipInfoPack> arrayList) {
        t.j(arrayList, "<set-?>");
        this.pipVideos = arrayList;
    }

    protected final void setPlayingEventListeners(@NotNull ArrayList<IPlayingEventListener> arrayList) {
        t.j(arrayList, "<set-?>");
        this.playingEventListeners = arrayList;
    }

    protected final void setSeekingPositionListeners(@NotNull ArrayList<OnSeekingPositionListener> arrayList) {
        t.j(arrayList, "<set-?>");
        this.seekingPositionListeners = arrayList;
    }

    protected final void setStickers(@NotNull ArrayList<StickerInfoPack> arrayList) {
        t.j(arrayList, "<set-?>");
        this.stickers = arrayList;
    }

    protected final void setVideoClipList(@NotNull ArrayList<AVClipInfoPack> arrayList) {
        t.j(arrayList, "<set-?>");
        this.videoClipList = arrayList;
    }

    private final boolean isCaptionIndexValid(Caption caption) {
        int size = this.captions.size();
        int i10 = caption.indexInScene;
        return i10 >= 0 && i10 < size;
    }

    public static /* synthetic */ void onActiveVideoClipChanged$default(BaseEditorPreviewPlayer baseEditorPreviewPlayer, boolean z6, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onActiveVideoClipChanged");
        }
        if ((i11 & 1) != 0) {
            z6 = true;
        }
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        baseEditorPreviewPlayer.onActiveVideoClipChanged(z6, i10);
    }

    public static /* synthetic */ void onAudioClipListChanged$default(BaseEditorPreviewPlayer baseEditorPreviewPlayer, boolean z6, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onAudioClipListChanged");
        }
        if ((i11 & 1) != 0) {
            z6 = false;
        }
        if ((i11 & 2) != 0) {
            i10 = -1;
        }
        baseEditorPreviewPlayer.onAudioClipListChanged(z6, i10);
    }

    static /* synthetic */ void reCalcClipIndex$default(BaseEditorPreviewPlayer baseEditorPreviewPlayer, ArrayList arrayList, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reCalcClipIndex");
        }
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        baseEditorPreviewPlayer.reCalcClipIndex(arrayList, i10);
    }

    public static /* synthetic */ void updateIndexInMixedAttachmentList$default(BaseEditorPreviewPlayer baseEditorPreviewPlayer, List list, boolean z6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateIndexInMixedAttachmentList");
        }
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        baseEditorPreviewPlayer.updateIndexInMixedAttachmentList(list, z6);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public ArrayList<AVClipInfoPack> addAudioClip(@NotNull AVClipInfoPack clip, boolean z6) {
        t.j(clip, "clip");
        clip.indexInScene = this.additionalAudioClipList.size();
        this.additionalAudioClipList.add(clip);
        onAudioClipListChanged$default(this, false, 0, 3, null);
        return this.additionalAudioClipList;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0020  */
    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void addAudioClipList(@NotNull ArrayList<AVClipInfoPack> clipList) {
        boolean z6;
        t.j(clipList, "clipList");
        reCalcClipIndex(clipList, this.additionalAudioClipList.size());
        if (this.additionalAudioClipList.isEmpty()) {
            z6 = clipList.isEmpty() ^ true;
        }
        this.additionalAudioClipList.addAll(clipList);
        if (z6) {
            onAudioClipListChanged$default(this, false, 0, 3, null);
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public ArrayList<Caption> addCaption(@NotNull Caption caption) {
        t.j(caption, "caption");
        caption.indexInScene = this.captions.size();
        this.captions.add(caption);
        updateIndexInMixedAttachmentList$default(this, d0.D0(this.stickers, this.captions), false, 2, null);
        return this.captions;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void addMediaEventListener(@NotNull IMediaEventListener listener) {
        t.j(listener, "listener");
        this.mediaEventListeners.add(listener);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public ArrayList<PipInfoPack> addPipVideo(@NotNull PipInfoPack pipVideo) {
        t.j(pipVideo, "pipVideo");
        pipVideo.indexInScene = this.pipVideos.size();
        this.pipVideos.add(pipVideo);
        return this.pipVideos;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void addPlayingEventListener(@NotNull IPlayingEventListener listener) {
        t.j(listener, "listener");
        this.playingEventListeners.add(listener);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void addSeekingPositionChangeListener(@NotNull OnSeekingPositionListener listenerSeeking) {
        t.j(listenerSeeking, "listenerSeeking");
        this.seekingPositionListeners.add(listenerSeeking);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0021  */
    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public ArrayList<StickerInfoPack> addSticker(@NotNull StickerInfoPack sticker, boolean z6) {
        t.j(sticker, "sticker");
        if (z6) {
            int size = this.stickers.size();
            int i10 = sticker.indexInScene;
            if (i10 < 0 || i10 >= size) {
                sticker.indexInScene = this.stickers.size();
                this.stickers.add(sticker);
            } else {
                this.stickers.add(i10, sticker);
                reCalcClipIndex$default(this, this.stickers, 0, 2, null);
            }
        } else {
            sticker.indexInScene = this.stickers.size();
            this.stickers.add(sticker);
        }
        updateIndexInMixedAttachmentList$default(this, d0.D0(this.stickers, this.captions), false, 2, null);
        return this.stickers;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public ArrayList<AVClipInfoPack> addVideoClip(@NotNull AVClipInfoPack clip) {
        t.j(clip, "clip");
        boolean zIsEmpty = this.videoClipList.isEmpty();
        clip.indexInScene = this.videoClipList.size();
        this.videoClipList.add(clip);
        if (zIsEmpty) {
            this.activeVideoClip = clip;
        }
        onActiveVideoClipChanged$default(this, false, 0, 3, null);
        return this.videoClipList;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0020  */
    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @Nullable
    public AVClipInfoPack addVideoClipList(@NotNull ArrayList<AVClipInfoPack> clipList) {
        boolean z6;
        t.j(clipList, "clipList");
        reCalcClipIndex(clipList, this.videoClipList.size());
        if (this.videoClipList.isEmpty()) {
            z6 = clipList.isEmpty() ^ true;
        }
        this.videoClipList.addAll(clipList);
        if (z6) {
            this.activeVideoClip = this.videoClipList.get(0);
        }
        onActiveVideoClipChanged$default(this, false, 0, 3, null);
        return this.activeVideoClip;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void adjustAllViceTrackRange(int i10) {
        adjustTrackRange(this.additionalAudioClipList, i10, new AnonymousClass1());
        adjustTrackRange(this.captions, i10, new AnonymousClass2());
        adjustTrackRange(this.stickers, i10, new AnonymousClass3());
        adjustTrackRange(this.pipVideos, i10, new AnonymousClass4());
    }

    protected final float getLatestAttachmentZVal(@NotNull List<? extends BaseAttachmentInfoPack> list) {
        t.j(list, "list");
        Iterator<? extends BaseAttachmentInfoPack> it = list.iterator();
        float f = 0.0f;
        while (it.hasNext()) {
            float f6 = it.next().zValue;
            if (f6 > f) {
                f = f6;
            }
        }
        return f + 0.01f;
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
    public void removeAllAudios() {
        this.additionalAudioClipList.clear();
        onAudioClipListChanged$default(this, true, 0, 2, null);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void removeAllVideos() {
        this.videoClipList.clear();
        this.activeVideoClip = null;
        onActiveVideoClipChanged$default(this, false, 0, 3, null);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public ArrayList<AVClipInfoPack> removeAudioClip(@NotNull AVClipInfoPack clip) {
        t.j(clip, "clip");
        this.additionalAudioClipList.remove(clip);
        reCalcClipIndex$default(this, this.additionalAudioClipList, 0, 2, null);
        onAudioClipListChanged$default(this, false, 0, 3, null);
        return this.additionalAudioClipList;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public ArrayList<Caption> removeCaption(@NotNull Caption caption) {
        t.j(caption, "caption");
        this.captions.remove(caption);
        reCalcClipIndex$default(this, this.captions, 0, 2, null);
        updateIndexInMixedAttachmentList$default(this, d0.D0(this.stickers, this.captions), false, 2, null);
        return this.captions;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void removeMediaEventListener(@NotNull IMediaEventListener listener) {
        t.j(listener, "listener");
        this.mediaEventListeners.remove(listener);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public ArrayList<PipInfoPack> removePipVideo(@NotNull PipInfoPack pipVideo, int i10) {
        t.j(pipVideo, "pipVideo");
        this.pipVideos.remove(pipVideo);
        return this.pipVideos;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void removePlayingEventListener(@NotNull IPlayingEventListener listener) {
        t.j(listener, "listener");
        this.playingEventListeners.remove(listener);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void removePositionChangeEventListener(@NotNull OnSeekingPositionListener listenerSeeking) {
        t.j(listenerSeeking, "listenerSeeking");
        this.seekingPositionListeners.remove(listenerSeeking);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public ArrayList<StickerInfoPack> removeSticker(@NotNull StickerInfoPack sticker) {
        t.j(sticker, "sticker");
        this.stickers.remove(sticker);
        reCalcClipIndex$default(this, this.stickers, 0, 2, null);
        updateIndexInMixedAttachmentList$default(this, d0.D0(this.stickers, this.captions), false, 2, null);
        return this.stickers;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @NotNull
    public ArrayList<AVClipInfoPack> removeVideoClip(@NotNull AVClipInfoPack clip) {
        t.j(clip, "clip");
        this.videoClipList.remove(clip);
        reCalcClipIndex$default(this, this.videoClipList, 0, 2, null);
        if (t.e(clip, this.activeVideoClip)) {
            this.activeVideoClip = this.videoClipList.isEmpty() ? null : this.videoClipList.get(0);
        }
        onActiveVideoClipChanged$default(this, false, 0, 3, null);
        return this.videoClipList;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void resetAudioClip(@NotNull AVClipInfoPack clip) {
        t.j(clip, "clip");
        int size = this.additionalAudioClipList.size();
        int i10 = clip.indexInScene;
        if (i10 < 0 || i10 >= size) {
            return;
        }
        this.additionalAudioClipList.set(i10, clip);
        onAudioClipListChanged$default(this, false, clip.indexInScene, 1, null);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void resetAudioClipList(@NotNull List<? extends AVClipInfoPack> clipList) {
        t.j(clipList, "clipList");
        this.additionalAudioClipList.clear();
        this.additionalAudioClipList.addAll(clipList);
        reCalcClipIndex$default(this, this.additionalAudioClipList, 0, 2, null);
        onAudioClipListChanged$default(this, true, 0, 2, null);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void resetCaption(@NotNull Caption caption, boolean z6) {
        t.j(caption, "caption");
        if (isCaptionIndexValid(caption)) {
            this.captions.set(caption.indexInScene, caption);
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void resetCaptionList(@NotNull List<? extends Caption> captionList) {
        t.j(captionList, "captionList");
        this.captions.clear();
        this.captions.addAll(captionList);
        reCalcClipIndex$default(this, this.captions, 0, 2, null);
        updateIndexInMixedAttachmentList$default(this, d0.D0(this.stickers, this.captions), false, 2, null);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void resetPipVideoList(@NotNull List<? extends PipInfoPack> pipVideoList) {
        t.j(pipVideoList, "pipVideoList");
        this.pipVideos.clear();
        this.pipVideos.addAll(pipVideoList);
        reCalcClipIndex$default(this, this.pipVideos, 0, 2, null);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void resetSticker(@NotNull StickerInfoPack sticker) {
        t.j(sticker, "sticker");
        int size = this.stickers.size();
        int i10 = sticker.indexInScene;
        if (i10 < 0 || i10 >= size) {
            return;
        }
        this.stickers.set(i10, sticker);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void resetStickerList(@NotNull List<? extends StickerInfoPack> stickerList) {
        t.j(stickerList, "stickerList");
        this.stickers.clear();
        this.stickers.addAll(stickerList);
        reCalcClipIndex$default(this, this.stickers, 0, 2, null);
        updateIndexInMixedAttachmentList$default(this, d0.D0(this.stickers, this.captions), false, 2, null);
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @Nullable
    public AVClipInfoPack resetVideoClipList(@NotNull ArrayList<AVClipInfoPack> clipList, int i10, int i11) {
        t.j(clipList, "clipList");
        this.videoClipList = clipList;
        reCalcClipIndex$default(this, clipList, 0, 2, null);
        this.activeVideoClip = this.videoClipList.isEmpty() ? null : this.videoClipList.get(i10);
        onActiveVideoClipChanged$default(this, false, i11, 1, null);
        return this.activeVideoClip;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0033  */
    @Override // com.narvii.video.interfaces.IPreviewPlayer
    @Nullable
    public AVClipInfoPack setActiveVideoClip(int i10, int i11) {
        boolean z6;
        AVClipInfoPack aVClipInfoPack = (i10 < 0 || i10 >= this.videoClipList.size()) ? null : this.videoClipList.get(i10);
        AVClipInfoPack aVClipInfoPack2 = this.activeVideoClip;
        if (i10 != (aVClipInfoPack2 != null ? aVClipInfoPack2.indexInScene : -1)) {
            z6 = true;
        } else {
            if (TextUtils.equals(aVClipInfoPack2 != null ? aVClipInfoPack2.inputPath : null, aVClipInfoPack != null ? aVClipInfoPack.inputPath : null)) {
                z6 = false;
            } else {
                z6 = true;
            }
        }
        this.activeVideoClip = aVClipInfoPack;
        if (z6) {
            onActiveVideoClipChanged(false, i11);
        }
        return this.activeVideoClip;
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void setLoop(boolean z6) {
        this.loop = Boolean.valueOf(z6);
    }

    protected final void updateIndexInMixedAttachmentList(@NotNull List<? extends BaseAttachmentInfoPack> list, boolean z6) {
        t.j(list, "list");
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            list.get(i10).indexInMixedAttachmentList = i10;
        }
    }

    private final void reCalcClipIndex(ArrayList<? extends BaseClipInfoPack> arrayList, int i10) {
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            arrayList.get(i11).indexInScene = i11 + i10;
        }
    }

    @Override // com.narvii.video.interfaces.IPreviewPlayer
    public void release(@NotNull Object... args) {
        t.j(args, "args");
        this.videoClipList.clear();
        this.additionalAudioClipList.clear();
        this.captions.clear();
        this.activeVideoClip = null;
        this.seekingPositionListeners.clear();
        this.playingEventListeners.clear();
        this.mediaEventListeners.clear();
    }
}
