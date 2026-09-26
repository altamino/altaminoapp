package com.narvii.scene.helper;

import com.narvii.pip.PipInfoPack;
import com.narvii.scene.SceneConstant;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.FileUtils;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.BaseAttachmentInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import e8.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jsoup.select.Elements;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class SceneCorrectUtils {

    @NotNull
    public static final SceneCorrectUtils INSTANCE = new SceneCorrectUtils();

    public static final class SceneMaterial {

        @NotNull
        private final ArrayList<AVClipInfoPack> audioClipList;

        @NotNull
        private final ArrayList<Caption> captionClipList;

        @NotNull
        private final ArrayList<PipInfoPack> pipClipList;

        @NotNull
        private final ArrayList<StickerInfoPack> stickerClipList;

        @NotNull
        private final ArrayList<AVClipInfoPack> videoClipList;

        public SceneMaterial() {
            this(null, null, null, null, null, 31, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ SceneMaterial copy$default(SceneMaterial sceneMaterial, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                arrayList = sceneMaterial.videoClipList;
            }
            if ((i10 & 2) != 0) {
                arrayList2 = sceneMaterial.audioClipList;
            }
            ArrayList arrayList6 = arrayList2;
            if ((i10 & 4) != 0) {
                arrayList3 = sceneMaterial.captionClipList;
            }
            ArrayList arrayList7 = arrayList3;
            if ((i10 & 8) != 0) {
                arrayList4 = sceneMaterial.stickerClipList;
            }
            ArrayList arrayList8 = arrayList4;
            if ((i10 & 16) != 0) {
                arrayList5 = sceneMaterial.pipClipList;
            }
            return sceneMaterial.copy(arrayList, arrayList6, arrayList7, arrayList8, arrayList5);
        }

        @NotNull
        public final ArrayList<AVClipInfoPack> component1() {
            return this.videoClipList;
        }

        @NotNull
        public final ArrayList<AVClipInfoPack> component2() {
            return this.audioClipList;
        }

        @NotNull
        public final ArrayList<Caption> component3() {
            return this.captionClipList;
        }

        @NotNull
        public final ArrayList<StickerInfoPack> component4() {
            return this.stickerClipList;
        }

        @NotNull
        public final ArrayList<PipInfoPack> component5() {
            return this.pipClipList;
        }

        @NotNull
        public final SceneMaterial copy(@NotNull ArrayList<AVClipInfoPack> videoClipList, @NotNull ArrayList<AVClipInfoPack> audioClipList, @NotNull ArrayList<Caption> captionClipList, @NotNull ArrayList<StickerInfoPack> stickerClipList, @NotNull ArrayList<PipInfoPack> pipClipList) {
            t.j(videoClipList, "videoClipList");
            t.j(audioClipList, "audioClipList");
            t.j(captionClipList, "captionClipList");
            t.j(stickerClipList, "stickerClipList");
            t.j(pipClipList, "pipClipList");
            return new SceneMaterial(videoClipList, audioClipList, captionClipList, stickerClipList, pipClipList);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SceneMaterial)) {
                return false;
            }
            SceneMaterial sceneMaterial = (SceneMaterial) obj;
            return t.e(this.videoClipList, sceneMaterial.videoClipList) && t.e(this.audioClipList, sceneMaterial.audioClipList) && t.e(this.captionClipList, sceneMaterial.captionClipList) && t.e(this.stickerClipList, sceneMaterial.stickerClipList) && t.e(this.pipClipList, sceneMaterial.pipClipList);
        }

        @NotNull
        public final ArrayList<AVClipInfoPack> getAudioClipList() {
            return this.audioClipList;
        }

        @NotNull
        public final ArrayList<Caption> getCaptionClipList() {
            return this.captionClipList;
        }

        @NotNull
        public final ArrayList<PipInfoPack> getPipClipList() {
            return this.pipClipList;
        }

        @NotNull
        public final ArrayList<StickerInfoPack> getStickerClipList() {
            return this.stickerClipList;
        }

        @NotNull
        public final ArrayList<AVClipInfoPack> getVideoClipList() {
            return this.videoClipList;
        }

        public int hashCode() {
            return (((((((this.videoClipList.hashCode() * 31) + this.audioClipList.hashCode()) * 31) + this.captionClipList.hashCode()) * 31) + this.stickerClipList.hashCode()) * 31) + this.pipClipList.hashCode();
        }

        @NotNull
        public String toString() {
            return "SceneMaterial(videoClipList=" + this.videoClipList + ", audioClipList=" + this.audioClipList + ", captionClipList=" + this.captionClipList + ", stickerClipList=" + this.stickerClipList + ", pipClipList=" + this.pipClipList + ')';
        }

        public SceneMaterial(@NotNull ArrayList<AVClipInfoPack> videoClipList, @NotNull ArrayList<AVClipInfoPack> audioClipList, @NotNull ArrayList<Caption> captionClipList, @NotNull ArrayList<StickerInfoPack> stickerClipList, @NotNull ArrayList<PipInfoPack> pipClipList) {
            t.j(videoClipList, "videoClipList");
            t.j(audioClipList, "audioClipList");
            t.j(captionClipList, "captionClipList");
            t.j(stickerClipList, "stickerClipList");
            t.j(pipClipList, "pipClipList");
            this.videoClipList = videoClipList;
            this.audioClipList = audioClipList;
            this.captionClipList = captionClipList;
            this.stickerClipList = stickerClipList;
            this.pipClipList = pipClipList;
        }

        public /* synthetic */ SceneMaterial(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5, int i10, k kVar) {
            this((i10 & 1) != 0 ? new ArrayList() : arrayList, (i10 & 2) != 0 ? new ArrayList() : arrayList2, (i10 & 4) != 0 ? new ArrayList() : arrayList3, (i10 & 8) != 0 ? new ArrayList() : arrayList4, (i10 & 16) != 0 ? new ArrayList() : arrayList5);
        }
    }

    private final ArrayList<BaseAttachmentInfoPack> correctAttachmentList(SceneInfo sceneInfo, int i10, int i11) {
        ArrayList<Caption> captions = sceneInfo.captions;
        t.i(captions, "captions");
        ArrayList<StickerInfoPack> stickers = sceneInfo.stickers;
        t.i(stickers, "stickers");
        List listD0 = d0.D0(captions, stickers);
        t.h(listD0, "null cannot be cast to non-null type java.util.ArrayList<com.narvii.video.model.BaseAttachmentInfoPack>{ kotlin.collections.TypeAliasesKt.ArrayList<com.narvii.video.model.BaseAttachmentInfoPack> }");
        return correctAttachmentList((ArrayList) listD0, i10, i11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SceneMaterial correctSceneList$default(SceneCorrectUtils sceneCorrectUtils, List list, boolean z6, s sVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = true;
        }
        if ((i10 & 4) != 0) {
            sVar = null;
        }
        return sceneCorrectUtils.correctSceneList((List<SceneInfo>) list, z6, (s<? super SceneInfo, ? super AVClipInfoPack, ? super Integer, ? super Integer, ? super Integer, l0>) sVar);
    }

    @NotNull
    public final SceneMaterial correctSceneList(@NotNull List<SceneInfo> sceneInfoList, boolean z6, @Nullable s<? super SceneInfo, ? super AVClipInfoPack, ? super Integer, ? super Integer, ? super Integer, l0> sVar) {
        t.j(sceneInfoList, "sceneInfoList");
        return correctSceneList(sceneInfoList, z6 ? SceneConstant.getMaxSceneLengthMs() : Integer.MAX_VALUE, sVar);
    }

    public static final class VideoClipWrapper {
        private final int endOffset;
        private final int startOffset;

        @NotNull
        private final ArrayList<AVClipInfoPack> videoClipList;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ VideoClipWrapper copy$default(VideoClipWrapper videoClipWrapper, ArrayList arrayList, int i10, int i11, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                arrayList = videoClipWrapper.videoClipList;
            }
            if ((i12 & 2) != 0) {
                i10 = videoClipWrapper.startOffset;
            }
            if ((i12 & 4) != 0) {
                i11 = videoClipWrapper.endOffset;
            }
            return videoClipWrapper.copy(arrayList, i10, i11);
        }

        @NotNull
        public final ArrayList<AVClipInfoPack> component1() {
            return this.videoClipList;
        }

        public final int component2() {
            return this.startOffset;
        }

        public final int component3() {
            return this.endOffset;
        }

        @NotNull
        public final VideoClipWrapper copy(@NotNull ArrayList<AVClipInfoPack> videoClipList, int i10, int i11) {
            t.j(videoClipList, "videoClipList");
            return new VideoClipWrapper(videoClipList, i10, i11);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof VideoClipWrapper)) {
                return false;
            }
            VideoClipWrapper videoClipWrapper = (VideoClipWrapper) obj;
            return t.e(this.videoClipList, videoClipWrapper.videoClipList) && this.startOffset == videoClipWrapper.startOffset && this.endOffset == videoClipWrapper.endOffset;
        }

        public final int getEndOffset() {
            return this.endOffset;
        }

        public final int getStartOffset() {
            return this.startOffset;
        }

        @NotNull
        public final ArrayList<AVClipInfoPack> getVideoClipList() {
            return this.videoClipList;
        }

        public int hashCode() {
            return (((this.videoClipList.hashCode() * 31) + this.startOffset) * 31) + this.endOffset;
        }

        @NotNull
        public String toString() {
            return "VideoClipWrapper(videoClipList=" + this.videoClipList + ", startOffset=" + this.startOffset + ", endOffset=" + this.endOffset + ')';
        }

        public VideoClipWrapper(@NotNull ArrayList<AVClipInfoPack> videoClipList, int i10, int i11) {
            t.j(videoClipList, "videoClipList");
            this.videoClipList = videoClipList;
            this.startOffset = i10;
            this.endOffset = i11;
        }
    }

    private final <E extends BaseAttachmentInfoPack> ArrayList<E> correctAttachmentList(ArrayList<E> arrayList, int i10, int i11) {
        Elements elements = (ArrayList<E>) new ArrayList();
        Iterator<E> it = arrayList.iterator();
        while (it.hasNext()) {
            BaseAttachmentInfoPack baseAttachmentInfoPackCopy = it.next().copy();
            t.h(baseAttachmentInfoPackCopy, "null cannot be cast to non-null type E of com.narvii.scene.helper.SceneCorrectUtils.correctAttachmentList");
            int i12 = baseAttachmentInfoPackCopy.startOffsetToMainTrackInMs;
            if (i12 <= i11 - i10) {
                int i13 = i12 + i10;
                baseAttachmentInfoPackCopy.startOffsetToMainTrackInMs = i13;
                int i14 = i11 - i13;
                if (i14 < baseAttachmentInfoPackCopy.visibleDurationInMs) {
                    baseAttachmentInfoPackCopy.visibleDurationInMs = i14;
                }
                elements.add(baseAttachmentInfoPackCopy);
            }
        }
        return elements;
    }

    private final ArrayList<AVClipInfoPack> correctAudioList(SceneInfo sceneInfo, int i10, int i11) {
        AVClipInfoPack aVClipInfoPackCopy;
        int i12;
        ArrayList<AVClipInfoPack> arrayList = new ArrayList<>();
        ArrayList<AVClipInfoPack> arrayList2 = sceneInfo.audioClips;
        int size = arrayList2.size();
        for (int i13 = 0; i13 < size; i13++) {
            AVClipInfoPack aVClipInfoPack = arrayList2.get(i13);
            if (!FileUtils.isEmpty(aVClipInfoPack.getInputFile()) && (aVClipInfoPackCopy = aVClipInfoPack.copy()) != null && (i12 = aVClipInfoPackCopy.startOffsetToMainTrackInMs) <= i11 - i10) {
                int i14 = i12 + i10;
                aVClipInfoPackCopy.startOffsetToMainTrackInMs = i14;
                int i15 = i11 - i14;
                if (i15 < aVClipInfoPackCopy.trimmedDurationInMs()) {
                    aVClipInfoPackCopy.trimEndInMs = aVClipInfoPackCopy.trimStartInMs + i15;
                    aVClipInfoPackCopy.visibleDurationInMs = i15;
                }
                arrayList.add(aVClipInfoPackCopy);
            }
        }
        return arrayList;
    }

    private final ArrayList<Caption> correctCaptionList(SceneInfo sceneInfo, int i10, int i11) {
        ArrayList<Caption> captions = sceneInfo.captions;
        t.i(captions, "captions");
        return correctAttachmentList(captions, i10, i11);
    }

    private final ArrayList<PipInfoPack> correctPipList(SceneInfo sceneInfo, int i10, int i11) {
        ArrayList<PipInfoPack> pipClips = sceneInfo.pipClips;
        t.i(pipClips, "pipClips");
        return correctAttachmentList(pipClips, i10, i11);
    }

    private final SceneMaterial correctSceneList(List<SceneInfo> list, int i10, s<? super SceneInfo, ? super AVClipInfoPack, ? super Integer, ? super Integer, ? super Integer, l0> sVar) {
        SceneMaterial sceneMaterial = new SceneMaterial(null, null, null, null, null, 31, null);
        int iComponent3 = 0;
        for (SceneInfo sceneInfo : list) {
            SceneCorrectUtils sceneCorrectUtils = INSTANCE;
            VideoClipWrapper videoClipWrapperCorrectVideoList = sceneCorrectUtils.correctVideoList(sceneInfo, iComponent3, i10, sVar);
            ArrayList<AVClipInfoPack> arrayListComponent1 = videoClipWrapperCorrectVideoList.component1();
            int iComponent2 = videoClipWrapperCorrectVideoList.component2();
            iComponent3 = videoClipWrapperCorrectVideoList.component3();
            if (iComponent2 != iComponent3) {
                sceneMaterial.getVideoClipList().addAll(arrayListComponent1);
                sceneMaterial.getAudioClipList().addAll(sceneCorrectUtils.correctAudioList(sceneInfo, iComponent2, iComponent3));
                sceneMaterial.getCaptionClipList().addAll(sceneCorrectUtils.correctCaptionList(sceneInfo, iComponent2, iComponent3));
                sceneMaterial.getStickerClipList().addAll(sceneCorrectUtils.correctStickerList(sceneInfo, iComponent2, iComponent3));
                sceneMaterial.getPipClipList().addAll(sceneCorrectUtils.correctPipList(sceneInfo, iComponent2, iComponent3));
            }
        }
        return sceneMaterial;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ SceneMaterial correctSceneList$default(SceneCorrectUtils sceneCorrectUtils, List list, int i10, s sVar, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = SceneConstant.getMaxSceneLengthMs();
        }
        if ((i11 & 4) != 0) {
            sVar = null;
        }
        return sceneCorrectUtils.correctSceneList((List<SceneInfo>) list, i10, (s<? super SceneInfo, ? super AVClipInfoPack, ? super Integer, ? super Integer, ? super Integer, l0>) sVar);
    }

    private final ArrayList<StickerInfoPack> correctStickerList(SceneInfo sceneInfo, int i10, int i11) {
        ArrayList<StickerInfoPack> stickers = sceneInfo.stickers;
        t.i(stickers, "stickers");
        return correctAttachmentList(stickers, i10, i11);
    }

    private final VideoClipWrapper correctVideoList(SceneInfo sceneInfo, int i10, int i11, s<? super SceneInfo, ? super AVClipInfoPack, ? super Integer, ? super Integer, ? super Integer, l0> sVar) {
        AVClipInfoPack aVClipInfoPackCopy;
        int i12;
        ArrayList arrayList = new ArrayList();
        ArrayList<AVClipInfoPack> arrayList2 = sceneInfo.videoClips;
        if (arrayList2 == null) {
            arrayList2 = new ArrayList<>();
        }
        ArrayList<AVClipInfoPack> arrayList3 = arrayList2;
        int size = arrayList3.size();
        int i13 = 0;
        int i14 = i10;
        int i15 = i11;
        for (int i16 = 0; i16 < size && i15 > 0; i16++) {
            AVClipInfoPack aVClipInfoPack = arrayList3.get(i16);
            if (aVClipInfoPack == null || (aVClipInfoPackCopy = aVClipInfoPack.copy()) == null || FileUtils.isEmpty(aVClipInfoPackCopy.getInputFile())) {
                i15 = i15;
            } else {
                int iTrimmedDurationInMsWithSpeed = aVClipInfoPackCopy.trimmedDurationInMsWithSpeed();
                int i17 = i13 + iTrimmedDurationInMsWithSpeed;
                if (i17 > i11) {
                    int i18 = aVClipInfoPackCopy.trimStartInMs;
                    int i19 = i15;
                    int i20 = (int) (((double) i18) + (((double) i15) * aVClipInfoPackCopy.speed));
                    aVClipInfoPackCopy.trimEndInMs = i20;
                    aVClipInfoPackCopy.visibleDurationInMs = i20 - i18;
                    i12 = i19;
                } else {
                    i12 = iTrimmedDurationInMsWithSpeed;
                }
                arrayList.add(aVClipInfoPackCopy);
                int iMin = i11 - Math.min(i17, i11);
                int iMin2 = i10 + Math.min(i17, i11);
                if (sVar != null) {
                    sVar.invoke(sceneInfo, aVClipInfoPackCopy, Integer.valueOf(i12), Integer.valueOf(i10), Integer.valueOf(iMin2));
                }
                i13 = i17;
                i15 = iMin;
                i14 = iMin2;
            }
        }
        return new VideoClipWrapper(arrayList, i10, i14);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ VideoClipWrapper correctVideoList$default(SceneCorrectUtils sceneCorrectUtils, SceneInfo sceneInfo, int i10, int i11, s sVar, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            i11 = SceneConstant.getMaxSceneLengthMs();
        }
        if ((i12 & 8) != 0) {
            sVar = null;
        }
        return sceneCorrectUtils.correctVideoList(sceneInfo, i10, i11, sVar);
    }

    private SceneCorrectUtils() {
    }
}
