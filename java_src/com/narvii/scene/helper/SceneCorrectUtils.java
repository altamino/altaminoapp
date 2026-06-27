package com.narvii.scene.helper;

import com.narvii.pip.PipInfoPack;
import com.narvii.scene.SceneConstant;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.FileUtils;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.BaseAttachmentInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jsoup.select.Elements;

/* compiled from: SceneCorrectUtils.kt */
/* loaded from: classes3.dex */
public final class SceneCorrectUtils {
    public static final SceneCorrectUtils INSTANCE = new SceneCorrectUtils();

    private SceneCorrectUtils() {
    }

    /* compiled from: SceneCorrectUtils.kt */
    public static final class VideoClipWrapper {
        private final int endOffset;
        private final int startOffset;
        private final ArrayList<AVClipInfoPack> videoClipList;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ VideoClipWrapper copy$default(VideoClipWrapper videoClipWrapper, ArrayList arrayList, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                arrayList = videoClipWrapper.videoClipList;
            }
            if ((i3 & 2) != 0) {
                i = videoClipWrapper.startOffset;
            }
            if ((i3 & 4) != 0) {
                i2 = videoClipWrapper.endOffset;
            }
            return videoClipWrapper.copy(arrayList, i, i2);
        }

        public final ArrayList<AVClipInfoPack> component1() {
            return this.videoClipList;
        }

        public final int component2() {
            return this.startOffset;
        }

        public final int component3() {
            return this.endOffset;
        }

        public final VideoClipWrapper copy(ArrayList<AVClipInfoPack> videoClipList, int i, int i2) {
            Intrinsics.checkParameterIsNotNull(videoClipList, "videoClipList");
            return new VideoClipWrapper(videoClipList, i, i2);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof VideoClipWrapper) {
                    VideoClipWrapper videoClipWrapper = (VideoClipWrapper) obj;
                    if (Intrinsics.areEqual(this.videoClipList, videoClipWrapper.videoClipList)) {
                        if (this.startOffset == videoClipWrapper.startOffset) {
                            if (this.endOffset == videoClipWrapper.endOffset) {
                            }
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            ArrayList<AVClipInfoPack> arrayList = this.videoClipList;
            return ((((arrayList != null ? arrayList.hashCode() : 0) * 31) + this.startOffset) * 31) + this.endOffset;
        }

        public String toString() {
            return "VideoClipWrapper(videoClipList=" + this.videoClipList + ", startOffset=" + this.startOffset + ", endOffset=" + this.endOffset + ")";
        }

        public VideoClipWrapper(ArrayList<AVClipInfoPack> videoClipList, int i, int i2) {
            Intrinsics.checkParameterIsNotNull(videoClipList, "videoClipList");
            this.videoClipList = videoClipList;
            this.startOffset = i;
            this.endOffset = i2;
        }

        public final int getEndOffset() {
            return this.endOffset;
        }

        public final int getStartOffset() {
            return this.startOffset;
        }

        public final ArrayList<AVClipInfoPack> getVideoClipList() {
            return this.videoClipList;
        }
    }

    /* compiled from: SceneCorrectUtils.kt */
    public static final class SceneMaterial {
        private final ArrayList<AVClipInfoPack> audioClipList;
        private final ArrayList<Caption> captionClipList;
        private final ArrayList<PipInfoPack> pipClipList;
        private final ArrayList<StickerInfoPack> stickerClipList;
        private final ArrayList<AVClipInfoPack> videoClipList;

        public SceneMaterial() {
            this(null, null, null, null, null, 31, null);
        }

        public static /* synthetic */ SceneMaterial copy$default(SceneMaterial sceneMaterial, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5, int i, Object obj) {
            if ((i & 1) != 0) {
                arrayList = sceneMaterial.videoClipList;
            }
            if ((i & 2) != 0) {
                arrayList2 = sceneMaterial.audioClipList;
            }
            ArrayList arrayList6 = arrayList2;
            if ((i & 4) != 0) {
                arrayList3 = sceneMaterial.captionClipList;
            }
            ArrayList arrayList7 = arrayList3;
            if ((i & 8) != 0) {
                arrayList4 = sceneMaterial.stickerClipList;
            }
            ArrayList arrayList8 = arrayList4;
            if ((i & 16) != 0) {
                arrayList5 = sceneMaterial.pipClipList;
            }
            return sceneMaterial.copy(arrayList, arrayList6, arrayList7, arrayList8, arrayList5);
        }

        public final ArrayList<AVClipInfoPack> component1() {
            return this.videoClipList;
        }

        public final ArrayList<AVClipInfoPack> component2() {
            return this.audioClipList;
        }

        public final ArrayList<Caption> component3() {
            return this.captionClipList;
        }

        public final ArrayList<StickerInfoPack> component4() {
            return this.stickerClipList;
        }

        public final ArrayList<PipInfoPack> component5() {
            return this.pipClipList;
        }

        public final SceneMaterial copy(ArrayList<AVClipInfoPack> videoClipList, ArrayList<AVClipInfoPack> audioClipList, ArrayList<Caption> captionClipList, ArrayList<StickerInfoPack> stickerClipList, ArrayList<PipInfoPack> pipClipList) {
            Intrinsics.checkParameterIsNotNull(videoClipList, "videoClipList");
            Intrinsics.checkParameterIsNotNull(audioClipList, "audioClipList");
            Intrinsics.checkParameterIsNotNull(captionClipList, "captionClipList");
            Intrinsics.checkParameterIsNotNull(stickerClipList, "stickerClipList");
            Intrinsics.checkParameterIsNotNull(pipClipList, "pipClipList");
            return new SceneMaterial(videoClipList, audioClipList, captionClipList, stickerClipList, pipClipList);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SceneMaterial)) {
                return false;
            }
            SceneMaterial sceneMaterial = (SceneMaterial) obj;
            return Intrinsics.areEqual(this.videoClipList, sceneMaterial.videoClipList) && Intrinsics.areEqual(this.audioClipList, sceneMaterial.audioClipList) && Intrinsics.areEqual(this.captionClipList, sceneMaterial.captionClipList) && Intrinsics.areEqual(this.stickerClipList, sceneMaterial.stickerClipList) && Intrinsics.areEqual(this.pipClipList, sceneMaterial.pipClipList);
        }

        public int hashCode() {
            ArrayList<AVClipInfoPack> arrayList = this.videoClipList;
            int iHashCode = (arrayList != null ? arrayList.hashCode() : 0) * 31;
            ArrayList<AVClipInfoPack> arrayList2 = this.audioClipList;
            int iHashCode2 = (iHashCode + (arrayList2 != null ? arrayList2.hashCode() : 0)) * 31;
            ArrayList<Caption> arrayList3 = this.captionClipList;
            int iHashCode3 = (iHashCode2 + (arrayList3 != null ? arrayList3.hashCode() : 0)) * 31;
            ArrayList<StickerInfoPack> arrayList4 = this.stickerClipList;
            int iHashCode4 = (iHashCode3 + (arrayList4 != null ? arrayList4.hashCode() : 0)) * 31;
            ArrayList<PipInfoPack> arrayList5 = this.pipClipList;
            return iHashCode4 + (arrayList5 != null ? arrayList5.hashCode() : 0);
        }

        public String toString() {
            return "SceneMaterial(videoClipList=" + this.videoClipList + ", audioClipList=" + this.audioClipList + ", captionClipList=" + this.captionClipList + ", stickerClipList=" + this.stickerClipList + ", pipClipList=" + this.pipClipList + ")";
        }

        public SceneMaterial(ArrayList<AVClipInfoPack> videoClipList, ArrayList<AVClipInfoPack> audioClipList, ArrayList<Caption> captionClipList, ArrayList<StickerInfoPack> stickerClipList, ArrayList<PipInfoPack> pipClipList) {
            Intrinsics.checkParameterIsNotNull(videoClipList, "videoClipList");
            Intrinsics.checkParameterIsNotNull(audioClipList, "audioClipList");
            Intrinsics.checkParameterIsNotNull(captionClipList, "captionClipList");
            Intrinsics.checkParameterIsNotNull(stickerClipList, "stickerClipList");
            Intrinsics.checkParameterIsNotNull(pipClipList, "pipClipList");
            this.videoClipList = videoClipList;
            this.audioClipList = audioClipList;
            this.captionClipList = captionClipList;
            this.stickerClipList = stickerClipList;
            this.pipClipList = pipClipList;
        }

        public /* synthetic */ SceneMaterial(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new ArrayList() : arrayList, (i & 2) != 0 ? new ArrayList() : arrayList2, (i & 4) != 0 ? new ArrayList() : arrayList3, (i & 8) != 0 ? new ArrayList() : arrayList4, (i & 16) != 0 ? new ArrayList() : arrayList5);
        }

        public final ArrayList<AVClipInfoPack> getVideoClipList() {
            return this.videoClipList;
        }

        public final ArrayList<AVClipInfoPack> getAudioClipList() {
            return this.audioClipList;
        }

        public final ArrayList<Caption> getCaptionClipList() {
            return this.captionClipList;
        }

        public final ArrayList<StickerInfoPack> getStickerClipList() {
            return this.stickerClipList;
        }

        public final ArrayList<PipInfoPack> getPipClipList() {
            return this.pipClipList;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SceneMaterial correctSceneList$default(SceneCorrectUtils sceneCorrectUtils, List list, boolean z, Function5 function5, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        if ((i & 4) != 0) {
            function5 = null;
        }
        return sceneCorrectUtils.correctSceneList((List<SceneInfo>) list, z, (Function5<? super SceneInfo, ? super AVClipInfoPack, ? super Integer, ? super Integer, ? super Integer, Unit>) function5);
    }

    public final SceneMaterial correctSceneList(List<SceneInfo> sceneInfoList, boolean z, Function5<? super SceneInfo, ? super AVClipInfoPack, ? super Integer, ? super Integer, ? super Integer, Unit> function5) {
        Intrinsics.checkParameterIsNotNull(sceneInfoList, "sceneInfoList");
        return correctSceneList(sceneInfoList, z ? SceneConstant.getMaxSceneLengthMs() : Integer.MAX_VALUE, function5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ SceneMaterial correctSceneList$default(SceneCorrectUtils sceneCorrectUtils, List list, int i, Function5 function5, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = SceneConstant.getMaxSceneLengthMs();
        }
        if ((i2 & 4) != 0) {
            function5 = null;
        }
        return sceneCorrectUtils.correctSceneList((List<SceneInfo>) list, i, (Function5<? super SceneInfo, ? super AVClipInfoPack, ? super Integer, ? super Integer, ? super Integer, Unit>) function5);
    }

    private final SceneMaterial correctSceneList(List<SceneInfo> list, int i, Function5<? super SceneInfo, ? super AVClipInfoPack, ? super Integer, ? super Integer, ? super Integer, Unit> function5) {
        SceneMaterial sceneMaterial = new SceneMaterial(null, null, null, null, null, 31, null);
        int iComponent3 = 0;
        for (SceneInfo sceneInfo : list) {
            VideoClipWrapper videoClipWrapperCorrectVideoList = INSTANCE.correctVideoList(sceneInfo, iComponent3, i, function5);
            ArrayList<AVClipInfoPack> arrayListComponent1 = videoClipWrapperCorrectVideoList.component1();
            int iComponent2 = videoClipWrapperCorrectVideoList.component2();
            iComponent3 = videoClipWrapperCorrectVideoList.component3();
            if (iComponent2 != iComponent3) {
                sceneMaterial.getVideoClipList().addAll(arrayListComponent1);
                sceneMaterial.getAudioClipList().addAll(INSTANCE.correctAudioList(sceneInfo, iComponent2, iComponent3));
                sceneMaterial.getCaptionClipList().addAll(INSTANCE.correctCaptionList(sceneInfo, iComponent2, iComponent3));
                sceneMaterial.getStickerClipList().addAll(INSTANCE.correctStickerList(sceneInfo, iComponent2, iComponent3));
                sceneMaterial.getPipClipList().addAll(INSTANCE.correctPipList(sceneInfo, iComponent2, iComponent3));
            }
        }
        return sceneMaterial;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ VideoClipWrapper correctVideoList$default(SceneCorrectUtils sceneCorrectUtils, SceneInfo sceneInfo, int i, int i2, Function5 function5, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            i2 = SceneConstant.getMaxSceneLengthMs();
        }
        if ((i3 & 8) != 0) {
            function5 = null;
        }
        return sceneCorrectUtils.correctVideoList(sceneInfo, i, i2, function5);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.narvii.scene.helper.SceneCorrectUtils.VideoClipWrapper correctVideoList(com.narvii.scene.model.SceneInfo r18, int r19, int r20, kotlin.jvm.functions.Function5<? super com.narvii.scene.model.SceneInfo, ? super com.narvii.video.model.AVClipInfoPack, ? super java.lang.Integer, ? super java.lang.Integer, ? super java.lang.Integer, kotlin.Unit> r21) {
        /*
            r17 = this;
            r0 = r19
            r1 = r20
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r9 = r18
            java.util.ArrayList<com.narvii.video.model.AVClipInfoPack> r3 = r9.videoClips
            if (r3 == 0) goto L10
            goto L15
        L10:
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
        L15:
            r10 = r3
            int r11 = r10.size()
            r3 = 0
            r4 = r0
            r3 = r1
            r5 = 0
            r12 = 0
        L1f:
            if (r12 >= r11) goto L9d
            if (r3 > 0) goto L25
            goto L9d
        L25:
            java.lang.Object r6 = r10.get(r12)
            com.narvii.video.model.AVClipInfoPack r6 = (com.narvii.video.model.AVClipInfoPack) r6
            if (r6 == 0) goto L94
            com.narvii.video.model.AVClipInfoPack r6 = r6.copy()
            if (r6 == 0) goto L94
            java.lang.String r7 = "videoList[i]?.copy() ?: continue"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r7)
            java.io.File r7 = r6.getInputFile()
            boolean r7 = com.narvii.util.FileUtils.isEmpty(r7)
            if (r7 == 0) goto L43
            goto L94
        L43:
            int r4 = r6.trimmedDurationInMsWithSpeed()
            int r13 = r5 + r4
            if (r13 <= r1) goto L65
            int r4 = r6.trimStartInMs
            double r7 = (double) r4
            double r14 = (double) r3
            r16 = r10
            double r9 = r6.speed
            java.lang.Double.isNaN(r14)
            double r14 = r14 * r9
            java.lang.Double.isNaN(r7)
            double r7 = r7 + r14
            int r5 = (int) r7
            r6.trimEndInMs = r5
            int r5 = r6.trimEndInMs
            int r5 = r5 - r4
            r6.visibleDurationInMs = r5
            goto L68
        L65:
            r16 = r10
            r3 = r4
        L68:
            r2.add(r6)
            int r4 = java.lang.Math.min(r13, r1)
            int r9 = r1 - r4
            int r4 = java.lang.Math.min(r13, r1)
            int r10 = r0 + r4
            if (r21 == 0) goto L90
            java.lang.Integer r7 = java.lang.Integer.valueOf(r3)
            java.lang.Integer r8 = java.lang.Integer.valueOf(r19)
            java.lang.Integer r14 = java.lang.Integer.valueOf(r10)
            r3 = r21
            r4 = r18
            r5 = r6
            r6 = r7
            r7 = r8
            r8 = r14
            r3.invoke(r4, r5, r6, r7, r8)
        L90:
            r3 = r9
            r4 = r10
            r5 = r13
            goto L96
        L94:
            r16 = r10
        L96:
            int r12 = r12 + 1
            r9 = r18
            r10 = r16
            goto L1f
        L9d:
            com.narvii.scene.helper.SceneCorrectUtils$VideoClipWrapper r1 = new com.narvii.scene.helper.SceneCorrectUtils$VideoClipWrapper
            r1.<init>(r2, r0, r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.scene.helper.SceneCorrectUtils.correctVideoList(com.narvii.scene.model.SceneInfo, int, int, kotlin.jvm.functions.Function5):com.narvii.scene.helper.SceneCorrectUtils$VideoClipWrapper");
    }

    private final ArrayList<AVClipInfoPack> correctAudioList(SceneInfo sceneInfo, int i, int i2) {
        AVClipInfoPack aVClipInfoPackCopy;
        ArrayList<AVClipInfoPack> arrayList = new ArrayList<>();
        ArrayList<AVClipInfoPack> arrayList2 = sceneInfo.audioClips;
        int size = arrayList2.size();
        for (int i3 = 0; i3 < size; i3++) {
            AVClipInfoPack ac = arrayList2.get(i3);
            Intrinsics.checkExpressionValueIsNotNull(ac, "ac");
            if (!FileUtils.isEmpty(ac.getInputFile()) && (aVClipInfoPackCopy = ac.copy()) != null) {
                Intrinsics.checkExpressionValueIsNotNull(aVClipInfoPackCopy, "ac?.copy() ?: continue");
                int i4 = aVClipInfoPackCopy.startOffsetToMainTrackInMs;
                if (i4 <= i2 - i) {
                    aVClipInfoPackCopy.startOffsetToMainTrackInMs = i4 + i;
                    int i5 = i2 - aVClipInfoPackCopy.startOffsetToMainTrackInMs;
                    if (i5 < aVClipInfoPackCopy.trimmedDurationInMs()) {
                        aVClipInfoPackCopy.trimEndInMs = aVClipInfoPackCopy.trimStartInMs + i5;
                        aVClipInfoPackCopy.visibleDurationInMs = i5;
                    }
                    arrayList.add(aVClipInfoPackCopy);
                }
            }
        }
        return arrayList;
    }

    private final ArrayList<Caption> correctCaptionList(SceneInfo sceneInfo, int i, int i2) {
        ArrayList<Caption> arrayList = sceneInfo.captions;
        Intrinsics.checkExpressionValueIsNotNull(arrayList, "scene.captions");
        return correctAttachmentList(arrayList, i, i2);
    }

    private final ArrayList<StickerInfoPack> correctStickerList(SceneInfo sceneInfo, int i, int i2) {
        ArrayList<StickerInfoPack> arrayList = sceneInfo.stickers;
        Intrinsics.checkExpressionValueIsNotNull(arrayList, "scene.stickers");
        return correctAttachmentList(arrayList, i, i2);
    }

    private final ArrayList<BaseAttachmentInfoPack> correctAttachmentList(SceneInfo sceneInfo, int i, int i2) {
        ArrayList<Caption> arrayList = sceneInfo.captions;
        Intrinsics.checkExpressionValueIsNotNull(arrayList, "scene.captions");
        ArrayList<StickerInfoPack> arrayList2 = sceneInfo.stickers;
        Intrinsics.checkExpressionValueIsNotNull(arrayList2, "scene.stickers");
        List listPlus = CollectionsKt___CollectionsKt.plus(arrayList, arrayList2);
        if (listPlus != null) {
            return correctAttachmentList((ArrayList) listPlus, i, i2);
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.ArrayList<com.narvii.video.model.BaseAttachmentInfoPack> /* = java.util.ArrayList<com.narvii.video.model.BaseAttachmentInfoPack> */");
    }

    private final ArrayList<PipInfoPack> correctPipList(SceneInfo sceneInfo, int i, int i2) {
        ArrayList<PipInfoPack> arrayList = sceneInfo.pipClips;
        Intrinsics.checkExpressionValueIsNotNull(arrayList, "scene.pipClips");
        return correctAttachmentList(arrayList, i, i2);
    }

    private final <E extends BaseAttachmentInfoPack> ArrayList<E> correctAttachmentList(ArrayList<E> arrayList, int i, int i2) {
        Elements elements = (ArrayList<E>) new ArrayList();
        Iterator<E> it = arrayList.iterator();
        while (it.hasNext()) {
            BaseAttachmentInfoPack baseAttachmentInfoPackCopy = it.next().copy();
            if (baseAttachmentInfoPackCopy == null) {
                throw new TypeCastException("null cannot be cast to non-null type E");
            }
            int i3 = baseAttachmentInfoPackCopy.startOffsetToMainTrackInMs;
            if (i3 <= i2 - i) {
                baseAttachmentInfoPackCopy.startOffsetToMainTrackInMs = i3 + i;
                int i4 = i2 - baseAttachmentInfoPackCopy.startOffsetToMainTrackInMs;
                if (i4 < baseAttachmentInfoPackCopy.visibleDurationInMs) {
                    baseAttachmentInfoPackCopy.visibleDurationInMs = i4;
                }
                elements.add(baseAttachmentInfoPackCopy);
            }
        }
        return elements;
    }
}
