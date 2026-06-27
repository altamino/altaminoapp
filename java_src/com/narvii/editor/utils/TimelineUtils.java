package com.narvii.editor.utils;

import android.graphics.Point;
import android.graphics.PointF;
import com.meicam.sdk.NvsAVFileInfo;
import com.meicam.sdk.NvsAudioClip;
import com.meicam.sdk.NvsAudioResolution;
import com.meicam.sdk.NvsAudioTrack;
import com.meicam.sdk.NvsRational;
import com.meicam.sdk.NvsSize;
import com.meicam.sdk.NvsStreamingContext;
import com.meicam.sdk.NvsTimeline;
import com.meicam.sdk.NvsTimelineAnimatedSticker;
import com.meicam.sdk.NvsTimelineCaption;
import com.meicam.sdk.NvsTrack;
import com.meicam.sdk.NvsVideoClip;
import com.meicam.sdk.NvsVideoFx;
import com.meicam.sdk.NvsVideoResolution;
import com.meicam.sdk.NvsVideoTrack;
import com.narvii.editor.attachment.AttachmentUtils;
import com.narvii.editor.player.MeiShePreviewPlayer;
import com.narvii.pip.PipInfoPack;
import com.narvii.scene.helper.SceneCorrectUtils;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.Utils;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.BaseAttachmentInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: TimelineUtils.kt */
/* loaded from: classes2.dex */
public final class TimelineUtils {
    public static final TimelineUtils INSTANCE = new TimelineUtils();
    public static final int MAX_VOLUME = 2;
    public static final String TAG = "TimelineUtils";

    private TimelineUtils() {
    }

    public final NvsTimeline createTimeline() {
        NvsStreamingContext nvsStreamingContext = NvsStreamingContext.getInstance();
        if (nvsStreamingContext != null) {
            return nvsStreamingContext.createTimeline(createDefaultVideoResolution(), createDefaultVideoFps(), createDefaultAudioResolution());
        }
        return null;
    }

    public static /* synthetic */ NvsTimeline createTimeline$default(TimelineUtils timelineUtils, SceneDraft sceneDraft, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return timelineUtils.createTimeline(sceneDraft, z);
    }

    public final NvsTimeline createTimeline(SceneDraft draft, boolean z) {
        Intrinsics.checkParameterIsNotNull(draft, "draft");
        NvsTimeline nvsTimelineCreateTimeline = createTimeline();
        SceneCorrectUtils sceneCorrectUtils = SceneCorrectUtils.INSTANCE;
        List<SceneInfo> list = draft.sceneInfos;
        Intrinsics.checkExpressionValueIsNotNull(list, "draft.sceneInfos");
        Triple<NvsVideoTrack, List<NvsAudioTrack>, List<NvsVideoTrack>> tripleAppendMaterialIntoTimline = appendMaterialIntoTimline(nvsTimelineCreateTimeline, SceneCorrectUtils.correctSceneList$default(sceneCorrectUtils, list, z, (Function5) null, 4, (Object) null));
        NvsVideoTrack nvsVideoTrackComponent1 = tripleAppendMaterialIntoTimline.component1();
        List<NvsAudioTrack> listComponent2 = tripleAppendMaterialIntoTimline.component2();
        List<NvsVideoTrack> listComponent3 = tripleAppendMaterialIntoTimline.component3();
        AVClipInfoPack aVClipInfoPack = draft.bgMusicClip;
        if (aVClipInfoPack != null) {
            INSTANCE.appendAudioIntoTimeline(aVClipInfoPack, nvsTimelineCreateTimeline != null ? nvsTimelineCreateTimeline.appendAudioTrack() : null);
            INSTANCE.correctVolume(1 - aVClipInfoPack.trackVolume, nvsVideoTrackComponent1, listComponent2, listComponent3);
        }
        return nvsTimelineCreateTimeline;
    }

    private final Triple<NvsVideoTrack, List<NvsAudioTrack>, List<NvsVideoTrack>> appendMaterialIntoTimline(NvsTimeline nvsTimeline, SceneCorrectUtils.SceneMaterial sceneMaterial) {
        ArrayList<AVClipInfoPack> videoClipList = sceneMaterial.getVideoClipList();
        ArrayList<AVClipInfoPack> audioClipList = sceneMaterial.getAudioClipList();
        List listPlus = CollectionsKt___CollectionsKt.plus(sceneMaterial.getCaptionClipList(), sceneMaterial.getStickerClipList());
        if (listPlus != null) {
            return appendMaterialIntoTimline(nvsTimeline, videoClipList, audioClipList, (ArrayList) listPlus, sceneMaterial.getPipClipList());
        }
        throw new TypeCastException("null cannot be cast to non-null type java.util.ArrayList<com.narvii.video.model.BaseAttachmentInfoPack>");
    }

    private final Triple<NvsVideoTrack, List<NvsAudioTrack>, List<NvsVideoTrack>> appendMaterialIntoTimline(NvsTimeline nvsTimeline, List<AVClipInfoPack> list, ArrayList<AVClipInfoPack> arrayList, ArrayList<BaseAttachmentInfoPack> arrayList2, ArrayList<PipInfoPack> arrayList3) {
        NvsVideoTrack nvsVideoTrackAppendVideoTrack = nvsTimeline != null ? nvsTimeline.appendVideoTrack() : null;
        NvsVideoTrack nvsVideoTrackAppendVideoTrack2 = nvsTimeline != null ? nvsTimeline.appendVideoTrack() : null;
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            INSTANCE.appendVideoIntoTimeline((AVClipInfoPack) it.next(), nvsVideoTrackAppendVideoTrack2, nvsVideoTrackAppendVideoTrack);
        }
        clearTransitionEffects(nvsVideoTrackAppendVideoTrack2);
        clearTransitionEffects(nvsVideoTrackAppendVideoTrack);
        ArrayList arrayList4 = new ArrayList();
        ArrayList<AVClipInfoPack> arrayList5 = new ArrayList();
        for (Object obj : arrayList) {
            if (((AVClipInfoPack) obj).indexInScene >= 0) {
                arrayList5.add(obj);
            }
        }
        for (AVClipInfoPack aVClipInfoPack : arrayList5) {
            while (aVClipInfoPack.indexInScene >= arrayList4.size()) {
                NvsAudioTrack nvsAudioTrackAppendAudioTrack = nvsTimeline != null ? nvsTimeline.appendAudioTrack() : null;
                if (nvsAudioTrackAppendAudioTrack != null) {
                    arrayList4.add(nvsAudioTrackAppendAudioTrack);
                }
            }
            INSTANCE.appendAudioIntoTimeline(aVClipInfoPack, (NvsAudioTrack) arrayList4.get(aVClipInfoPack.indexInScene));
        }
        Iterator<T> it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            INSTANCE.appendAttachmentIntoTimeline(nvsTimeline, (BaseAttachmentInfoPack) it2.next());
        }
        ArrayList arrayList6 = new ArrayList();
        Iterator<T> it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            NvsVideoTrack nvsVideoTrackAddPipVideo = INSTANCE.addPipVideo(nvsTimeline, (PipInfoPack) it3.next());
            if (nvsVideoTrackAddPipVideo != null) {
                arrayList6.add(nvsVideoTrackAddPipVideo);
            }
        }
        return new Triple<>(nvsVideoTrackAppendVideoTrack2, arrayList4, arrayList6);
    }

    public final NvsTimeline createTimeline(SceneInfo scene) {
        Intrinsics.checkParameterIsNotNull(scene, "scene");
        NvsTimeline nvsTimelineCreateTimeline = createTimeline();
        SceneCorrectUtils sceneCorrectUtils = SceneCorrectUtils.INSTANCE;
        List listSingletonList = Collections.singletonList(scene);
        Intrinsics.checkExpressionValueIsNotNull(listSingletonList, "Collections.singletonList(scene)");
        appendMaterialIntoTimline(nvsTimelineCreateTimeline, SceneCorrectUtils.correctSceneList$default(sceneCorrectUtils, listSingletonList, true, (Function5) null, 4, (Object) null));
        return nvsTimelineCreateTimeline;
    }

    public final NvsTimeline createTimelineWithoutDurationLimit(SceneInfo scene) {
        Intrinsics.checkParameterIsNotNull(scene, "scene");
        NvsTimeline nvsTimelineCreateTimeline = createTimeline();
        ArrayList<AVClipInfoPack> arrayList = scene.videoClips;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        ArrayList<AVClipInfoPack> arrayList2 = arrayList;
        ArrayList<AVClipInfoPack> arrayList3 = scene.audioClips;
        if (arrayList3 == null) {
            arrayList3 = new ArrayList<>();
        }
        ArrayList<AVClipInfoPack> arrayList4 = arrayList3;
        ArrayList<Caption> arrayList5 = scene.captions;
        Intrinsics.checkExpressionValueIsNotNull(arrayList5, "scene.captions");
        ArrayList<StickerInfoPack> arrayList6 = scene.stickers;
        Intrinsics.checkExpressionValueIsNotNull(arrayList6, "scene.stickers");
        List listPlus = CollectionsKt___CollectionsKt.plus(arrayList5, arrayList6);
        if (listPlus != null) {
            appendMaterialIntoTimline(nvsTimelineCreateTimeline, arrayList2, arrayList4, (ArrayList) listPlus, new ArrayList<>());
            return nvsTimelineCreateTimeline;
        }
        throw new TypeCastException("null cannot be cast to non-null type java.util.ArrayList<com.narvii.video.model.BaseAttachmentInfoPack>");
    }

    public final void clearTransitionEffects(NvsVideoTrack nvsVideoTrack) {
        int i = 0;
        int clipCount = nvsVideoTrack != null ? nvsVideoTrack.getClipCount() : 0;
        if (clipCount < 0) {
            return;
        }
        while (true) {
            if (nvsVideoTrack != null) {
                nvsVideoTrack.setBuiltinTransition(i, "");
            }
            if (i == clipCount) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void updateTransform2D(AVClipInfoPack clip, NvsVideoClip nvsClip) {
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        Intrinsics.checkParameterIsNotNull(nvsClip, "nvsClip");
        int fxCount = nvsClip.getFxCount();
        int i = 0;
        while (true) {
            if (i >= fxCount) {
                break;
            }
            NvsVideoFx videoFx = nvsClip.getFxByIndex(i);
            Intrinsics.checkExpressionValueIsNotNull(videoFx, "videoFx");
            if (videoFx.getVideoFxType() == 0 && Intrinsics.areEqual(videoFx.getBuiltinVideoFxName(), MeiShePreviewPlayer.TRANSFORM_TAG)) {
                videoFx.setFloatVal("Scale X", clip.getScale());
                videoFx.setFloatVal("Scale Y", clip.getScale());
                videoFx.setFloatVal("Trans X", clip.getTransformX());
                videoFx.setFloatVal("Trans Y", clip.getTransformY());
                break;
            }
            i++;
        }
        nvsClip.setExtraVideoRotation(clip.getRotateAngle());
    }

    public final Pair<NvsVideoClip, NvsVideoClip> appendVideoIntoTimeline(AVClipInfoPack clip, NvsVideoTrack nvsVideoTrack, NvsVideoTrack nvsVideoTrack2) {
        Pair pair;
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        if (!clip.hasInvisibleFrames()) {
            pair = new Pair(0L, Long.valueOf(clip.orgDurationInMs * 1000));
        } else {
            int i = clip.trimEndInMs;
            int i2 = clip.trimStartInMs;
            if (i <= i2) {
                pair = new Pair(0L, Long.valueOf(clip.trimmedDurationInMs() * 1000));
            } else {
                long j = 1000;
                pair = new Pair(Long.valueOf(i2 * j), Long.valueOf(clip.trimEndInMs * j));
            }
        }
        long jLongValue = ((Number) pair.component1()).longValue();
        long jLongValue2 = ((Number) pair.component2()).longValue();
        int clipCount = nvsVideoTrack != null ? nvsVideoTrack.getClipCount() : 0;
        NvsVideoClip nvsVideoClipAppendClip = nvsVideoTrack != null ? nvsVideoTrack.appendClip(clip.inputPath, jLongValue, jLongValue2) : null;
        if (nvsVideoClipAppendClip != null) {
            nvsVideoClipAppendClip.changeSpeed(clip.speed);
        }
        String str = clip.inputPath;
        Intrinsics.checkExpressionValueIsNotNull(str, "clip.inputPath");
        if (!supportVideoFormat(str) && nvsVideoClipAppendClip != null) {
            nvsVideoClipAppendClip.setSoftWareDecoding(true);
        }
        if (nvsVideoClipAppendClip != null) {
            nvsVideoClipAppendClip.appendBuiltinFx(MeiShePreviewPlayer.TRANSFORM_TAG);
            float f = clip.trackVolume;
            float f2 = 2;
            nvsVideoClipAppendClip.setVolumeGain(f * f2, f * f2);
            INSTANCE.updateTransform2D(clip, nvsVideoClipAppendClip);
            if (nvsVideoClipAppendClip.getVideoType() == 1) {
                nvsVideoClipAppendClip.setImageMotionMode(0);
            }
        }
        NvsVideoClip nvsVideoClipAppendClip2 = nvsVideoTrack2 != null ? nvsVideoTrack2.appendClip(clip.getBgColor()) : null;
        if (nvsVideoTrack2 != null) {
            nvsVideoTrack2.changeInPoint(clipCount, nvsVideoClipAppendClip != null ? nvsVideoClipAppendClip.getInPoint() : 0L);
        }
        if (nvsVideoTrack2 != null) {
            nvsVideoTrack2.changeOutPoint(clipCount, nvsVideoClipAppendClip != null ? nvsVideoClipAppendClip.getOutPoint() : 0L);
        }
        return new Pair<>(nvsVideoClipAppendClip, nvsVideoClipAppendClip2);
    }

    public final NvsAudioClip appendAudioIntoTimeline(AVClipInfoPack clip, NvsAudioTrack nvsAudioTrack) {
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        long j = 1000;
        long j2 = clip.startOffsetToMainTrackInMs * j;
        int i = clip.trimEndInMs;
        int i2 = clip.trimStartInMs;
        NvsAudioClip nvsAudioClipAddClip = null;
        if (i > i2) {
            if (nvsAudioTrack != null) {
                nvsAudioClipAddClip = nvsAudioTrack.addClip(clip.inputPath, j2, i2 * j, i * j);
            }
        } else if (nvsAudioTrack != null) {
            nvsAudioClipAddClip = nvsAudioTrack.addClip(clip.inputPath, j2);
        }
        if (nvsAudioClipAddClip != null) {
            nvsAudioClipAddClip.setFadeInDuration(clip.fadeIn ? 4000000L : 0L);
            nvsAudioClipAddClip.setFadeOutDuration(clip.fadeOut ? 4000000L : 0L);
            float f = clip.trackVolume;
            float f2 = 2;
            nvsAudioClipAddClip.setVolumeGain(f * f2, f * f2);
        }
        return nvsAudioClipAddClip;
    }

    public final void appendAttachmentIntoTimeline(NvsTimeline nvsTimeline, BaseAttachmentInfoPack attachment) {
        Intrinsics.checkParameterIsNotNull(attachment, "attachment");
        NvsTimelineAnimatedSticker nvsTimelineAnimatedStickerAddCustomAnimatedSticker = null;
        if (attachment instanceof Caption) {
            NvsTimelineCaption nvsTimelineCaptionAddCaption = nvsTimeline != null ? nvsTimeline.addCaption(((Caption) attachment).text, attachment.startOffsetToMainTrackInMs * 1000, attachment.visibleDurationInMs * 1000, null) : null;
            if (nvsTimelineCaptionAddCaption != null) {
                AttachmentUtils.updateTimelineCaption(nvsTimelineCaptionAddCaption, (Caption) attachment);
                return;
            }
            return;
        }
        if (attachment instanceof StickerInfoPack) {
            if (nvsTimeline != null) {
                StickerInfoPack stickerInfoPack = (StickerInfoPack) attachment;
                nvsTimelineAnimatedStickerAddCustomAnimatedSticker = nvsTimeline.addCustomAnimatedSticker(attachment.startOffsetToMainTrackInMs * 1000, attachment.visibleDurationInMs * 1000, stickerInfoPack.templateUuid, stickerInfoPack.installedPath);
            }
            if (nvsTimelineAnimatedStickerAddCustomAnimatedSticker != null) {
                AttachmentUtils.updateTimelineSticker(nvsTimelineAnimatedStickerAddCustomAnimatedSticker, (StickerInfoPack) attachment);
            }
        }
    }

    private final boolean supportVideoFormat(String str) {
        if (str != null) {
            String lowerCase = str.toLowerCase();
            Intrinsics.checkExpressionValueIsNotNull(lowerCase, "(this as java.lang.String).toLowerCase()");
            return StringsKt__StringsJVMKt.endsWith$default(lowerCase, "mp4", false, 2, null) || StringsKt__StringsJVMKt.endsWith$default(lowerCase, "mov", false, 2, null) || StringsKt__StringsJVMKt.endsWith$default(lowerCase, "wmv", false, 2, null) || StringsKt__StringsJVMKt.endsWith$default(lowerCase, "m2v", false, 2, null) || StringsKt__StringsJVMKt.endsWith$default(lowerCase, "mpg", false, 2, null) || Utils.isPNG(str) || Utils.isJPG(str) || Utils.isBMP(str);
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    private final void correctVolume(float f, NvsVideoTrack nvsVideoTrack, List<NvsAudioTrack> list, List<NvsVideoTrack> list2) {
        if (f >= 1) {
            f = 1.0f;
        } else if (f <= 0) {
            f = 0.0f;
        }
        TimelineUtils$correctVolume$correctVolume$1 timelineUtils$correctVolume$correctVolume$1 = new Function2<List<? extends NvsTrack>, Float, Unit>() { // from class: com.narvii.editor.utils.TimelineUtils$correctVolume$correctVolume$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends NvsTrack> list3, Float f2) {
                invoke(list3, f2.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(List<? extends NvsTrack> trackList, float f2) {
                Intrinsics.checkParameterIsNotNull(trackList, "trackList");
                for (NvsTrack nvsTrack : trackList) {
                    if (nvsTrack != null) {
                        int clipCount = nvsTrack.getClipCount();
                        for (int i = 0; i < clipCount; i++) {
                            if (nvsTrack instanceof NvsVideoTrack) {
                                NvsVideoClip clip = ((NvsVideoTrack) nvsTrack).getClipByIndex(i);
                                Intrinsics.checkExpressionValueIsNotNull(clip, "clip");
                                clip.setVolumeGain(clip.getVolumeGain().leftVolume * f2, clip.getVolumeGain().rightVolume * f2);
                            } else if (nvsTrack instanceof NvsAudioTrack) {
                                NvsAudioClip clip2 = ((NvsAudioTrack) nvsTrack).getClipByIndex(i);
                                Intrinsics.checkExpressionValueIsNotNull(clip2, "clip");
                                clip2.setVolumeGain(clip2.getVolumeGain().leftVolume * f2, clip2.getVolumeGain().rightVolume * f2);
                            }
                        }
                    }
                }
            }
        };
        List listSingletonList = Collections.singletonList(nvsVideoTrack);
        Intrinsics.checkExpressionValueIsNotNull(listSingletonList, "Collections.singletonList(videoTrack)");
        timelineUtils$correctVolume$correctVolume$1.invoke((TimelineUtils$correctVolume$correctVolume$1) listSingletonList, (List) Float.valueOf(f));
        timelineUtils$correctVolume$correctVolume$1.invoke((TimelineUtils$correctVolume$correctVolume$1) list, (List<NvsAudioTrack>) Float.valueOf(f));
        timelineUtils$correctVolume$correctVolume$1.invoke((TimelineUtils$correctVolume$correctVolume$1) list2, (List<NvsVideoTrack>) Float.valueOf(f));
    }

    private final NvsVideoResolution createDefaultVideoResolution() {
        return createVideoResolution(EditorConstants.VIDEO_RESOLUTION_WIDTH, EditorConstants.VIDEO_RESOLUTION_HEIGHT);
    }

    public final NvsVideoResolution createVideoResolution(int i, int i2) {
        NvsVideoResolution nvsVideoResolution = new NvsVideoResolution();
        nvsVideoResolution.imageWidth = i;
        nvsVideoResolution.imageHeight = i2;
        nvsVideoResolution.imagePAR = new NvsRational(1, 1);
        return nvsVideoResolution;
    }

    private final NvsAudioResolution createDefaultAudioResolution() {
        return createAudioResolution(EditorConstants.AUDIO_SAMPLE_RATE, EditorConstants.AUDIO_CHANNEL_COUNT);
    }

    private final NvsAudioResolution createAudioResolution(int i, int i2) {
        NvsAudioResolution nvsAudioResolution = new NvsAudioResolution();
        nvsAudioResolution.sampleRate = i;
        nvsAudioResolution.channelCount = i2;
        return nvsAudioResolution;
    }

    private final NvsRational createDefaultVideoFps() {
        return new NvsRational(30000, 1001);
    }

    public final Hashtable<String, Object> createCompileConfig() {
        Hashtable<String, Object> hashtable = new Hashtable<>();
        hashtable.put(NvsStreamingContext.COMPILE_OPTIMIZE_FOR_NETWORK_USE, true);
        hashtable.put(NvsStreamingContext.COMPILE_SOFTWARE_ENCODER_CRF, 23);
        hashtable.put(NvsStreamingContext.COMPILE_SOFTWARE_ENCODER_CRF_BITRATE_MAX, Integer.valueOf(EditorConstants.VIDEO_BITRATE));
        hashtable.put(NvsStreamingContext.COMPILE_SOFTWARE_ENCODER_PRESET, "fast");
        hashtable.put(NvsStreamingContext.COMPILE_AUDIO_BITRATE, Integer.valueOf(EditorConstants.AUDIO_BITRATE));
        return hashtable;
    }

    public final Point getVideoSize(String path) {
        Intrinsics.checkParameterIsNotNull(path, "path");
        NvsAVFileInfo aVFileInfo = NvsStreamingContext.getInstance().getAVFileInfo(path);
        int videoStreamRotation = aVFileInfo.getVideoStreamRotation(0);
        NvsSize videoStreamDimension = aVFileInfo.getVideoStreamDimension(0);
        if (videoStreamRotation == 0 || videoStreamRotation == 2) {
            return new Point(videoStreamDimension.width, videoStreamDimension.height);
        }
        return new Point(videoStreamDimension.height, videoStreamDimension.width);
    }

    public final NvsVideoTrack addPipVideo(NvsTimeline nvsTimeline, PipInfoPack pipVideo) {
        Intrinsics.checkParameterIsNotNull(pipVideo, "pipVideo");
        NvsVideoClip nvsVideoClipAddClip = null;
        NvsVideoTrack nvsVideoTrackAppendVideoTrack = nvsTimeline != null ? nvsTimeline.appendVideoTrack() : null;
        long jMin = pipVideo.visibleDurationInMs * 1000;
        if (nvsTimeline != null) {
            jMin = Math.min(jMin, nvsTimeline.getDuration() - (pipVideo.startOffsetToMainTrackInMs * 1000));
        }
        if (nvsVideoTrackAppendVideoTrack != null) {
            int i = pipVideo.trimStartInMs;
            nvsVideoClipAddClip = nvsVideoTrackAppendVideoTrack.addClip(pipVideo.inputPath, pipVideo.startOffsetToMainTrackInMs * 1000, i * 1000, (i * 1000) + jMin);
        }
        if (nvsVideoClipAddClip != null) {
            nvsVideoClipAddClip.appendBuiltinFx(MeiShePreviewPlayer.TRANSFORM_TAG);
        }
        if (nvsVideoClipAddClip != null && nvsVideoClipAddClip.getVideoType() == 1) {
            nvsVideoClipAddClip.setImageMotionMode(0);
        }
        updatePipVideoTransform(nvsVideoTrackAppendVideoTrack, pipVideo);
        if (nvsVideoTrackAppendVideoTrack != null) {
            int clipCount = nvsVideoTrackAppendVideoTrack.getClipCount();
            for (int i2 = 0; i2 < clipCount; i2++) {
                NvsVideoClip clipByIndex = nvsVideoTrackAppendVideoTrack.getClipByIndex(i2);
                float f = pipVideo.mute ? 0.0f : pipVideo.volume * 2;
                clipByIndex.setVolumeGain(f, f);
            }
        }
        return nvsVideoTrackAppendVideoTrack;
    }

    public final void updatePipVideoTransform(NvsVideoTrack nvsVideoTrack, PipInfoPack pipVideo) {
        Intrinsics.checkParameterIsNotNull(pipVideo, "pipVideo");
        if (nvsVideoTrack != null) {
            TimelineUtils timelineUtils = INSTANCE;
            float f = pipVideo.scaleX;
            float f2 = pipVideo.rotation;
            PointF pointF = pipVideo.translation;
            timelineUtils.updateTransform2DFx(nvsVideoTrack, f, f2, pointF.x, pointF.y);
        }
    }

    private final void updateTransform2DFx(NvsVideoTrack nvsVideoTrack, float f, float f2, float f3, float f4) {
        int clipCount = nvsVideoTrack.getClipCount();
        for (int i = 0; i < clipCount; i++) {
            NvsVideoClip videoClip = nvsVideoTrack.getClipByIndex(i);
            Intrinsics.checkExpressionValueIsNotNull(videoClip, "videoClip");
            int fxCount = videoClip.getFxCount();
            int i2 = 0;
            while (true) {
                if (i2 < fxCount) {
                    NvsVideoFx videoFx = videoClip.getFxByIndex(i2);
                    Intrinsics.checkExpressionValueIsNotNull(videoFx, "videoFx");
                    if (videoFx.getVideoFxType() == 0 && Intrinsics.areEqual(videoFx.getBuiltinVideoFxName(), MeiShePreviewPlayer.TRANSFORM_TAG)) {
                        double d = f;
                        videoFx.setFloatVal("Scale X", d);
                        videoFx.setFloatVal("Scale Y", d);
                        videoFx.setFloatVal("Rotation", f2);
                        videoFx.setFloatVal("Trans X", f3);
                        videoFx.setFloatVal("Trans Y", f4);
                        break;
                    }
                    i2++;
                }
            }
        }
    }
}
