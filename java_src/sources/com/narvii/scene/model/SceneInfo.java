package com.narvii.scene.model;

import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVApplication;
import com.narvii.asset.AssetDownloader;
import com.narvii.cropping.CroppingData;
import com.narvii.model.PollAttach;
import com.narvii.model.QuizQuestion;
import com.narvii.model.story.ScenePollOrQuizHost;
import com.narvii.model.story.StorySceneMilestone;
import com.narvii.pip.PipInfoPack;
import com.narvii.scene.SceneConstant;
import com.narvii.util.FileUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.BaseClipInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.model.StreamInfo;
import com.narvii.videotemplate.Template;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class SceneInfo implements StorySceneMilestone, ScenePollOrQuizHost {
    public static final int ATTACH_STATUS_DISABLE = 0;
    public static final int ATTACH_STATUS_NONE = 1;
    public static final int ATTACH_STATUS_POLL = 3;
    public static final int ATTACH_STATUS_POLL_UNEDITABLE = 4;
    public static final int ATTACH_STATUS_QUIZ = 2;
    private static final int MAX_DURATION_PER_SCENE = SceneConstant.getMaxSceneLengthMs();
    private static final int MIN_DURATION_PER_SCENE = 3000;
    public static final int SCENE_STICKER_SOURCE_CUSTOME = 2;
    public static final int SCENE_STICKER_SOURCE_OFFICIAL = 1;
    public static final int SCENE_STICKER_SOURCE_SHARED_STICKER_PACK = 4;
    public static final int SCENE_STICKER_SOURCE_THIRD_PARTY = 3;
    public String coverImage;
    public long duration;
    public String id;
    public ObjectNode metadata;
    public String outputUrl;
    public PollAttach pollAttach;

    @Deprecated
    public String previewFilePath;
    public QuizQuestion question;
    public Template template;
    public String title;
    public List<String> inputFilePathList = new ArrayList();
    public List<Integer> inputFileFrom = new ArrayList();
    public ArrayList<AVClipInfoPack> videoClips = new ArrayList<>();
    public ArrayList<AVClipInfoPack> audioClips = new ArrayList<>();
    public ArrayList<Caption> captions = new ArrayList<>();
    public ArrayList<StickerInfoPack> stickers = new ArrayList<>();
    public ArrayList<PipInfoPack> pipClips = new ArrayList<>();
    public float currentSceneVideoProgress = -1.0f;

    public SceneInfo() {
    }

    private int getSceneType() {
        if (this.question != null) {
            return 3;
        }
        return this.pollAttach != null ? 2 : 1;
    }

    @Override // com.narvii.model.story.StorySceneMilestone, com.narvii.model.story.ScenePollOrQuizHost
    public boolean containsPollOrQuiz() {
        return (this.question == null && this.pollAttach == null) ? false : true;
    }

    public ObjectNode generateMetadata() {
        String str;
        String str2;
        String str3;
        String str4;
        ObjectNode objectNode = this.metadata;
        if (objectNode != null) {
            return objectNode;
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("targetWidth", 720);
        objectNodeCreateObjectNode.put("targetHeight", 1280);
        String str5 = "rawHeight";
        String str6 = "rawWidth";
        if (this.videoClips != null) {
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            Iterator<AVClipInfoPack> it = this.videoClips.iterator();
            while (it.hasNext()) {
                AVClipInfoPack next = it.next();
                if (next != null) {
                    ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
                    if (!TextUtils.isEmpty(next.getBgColorContent())) {
                        objectNodeCreateObjectNode2.put("backgroundColor", next.getBgColorContent());
                    }
                    ArrayNode arrayNodeCreateArrayNode2 = JacksonUtils.createArrayNode();
                    ObjectNode objectNodeCreateObjectNode3 = JacksonUtils.createObjectNode();
                    objectNodeCreateObjectNode3.put(str6, next.rawVideoWidth);
                    objectNodeCreateObjectNode3.put(str5, next.rawVideoHeight);
                    float[] fArr = next.targetRectInfo;
                    if (fArr != null && fArr.length > 0) {
                        ArrayNode arrayNodeCreateArrayNode3 = JacksonUtils.createArrayNode();
                        float[] fArr2 = next.targetRectInfo;
                        int i10 = 0;
                        for (int length = fArr2.length; i10 < length; length = length) {
                            arrayNodeCreateArrayNode3.add(fArr2[i10]);
                            i10++;
                        }
                        objectNodeCreateObjectNode3.put("targetRect", arrayNodeCreateArrayNode3);
                    }
                    objectNodeCreateObjectNode3.put("bitrate", next.bitRate);
                    objectNodeCreateObjectNode3.put("frameRate", next.frameRate);
                    objectNodeCreateObjectNode3.put("durationInMs", next.orgDurationInMs);
                    objectNodeCreateObjectNode3.put("videoSource", next.videoSource);
                    CroppingData croppingData = next.croppingData;
                    objectNodeCreateObjectNode3.put("isDynamicCropping", croppingData != null && croppingData.isDynamic());
                    CroppingData croppingData2 = next.croppingData;
                    objectNodeCreateObjectNode3.put("rotate", croppingData2 == null ? 0 : croppingData2.rotateAngle);
                    objectNodeCreateObjectNode3.put("speedTimes", Utils.decimalFormat(next.speed));
                    Template template = this.template;
                    if (template != null) {
                        objectNodeCreateObjectNode3.put("videoTemplate", template.id);
                    }
                    arrayNodeCreateArrayNode2.add(objectNodeCreateObjectNode3);
                    objectNodeCreateObjectNode2.put("childClips", arrayNodeCreateArrayNode2);
                    arrayNodeCreateArrayNode.add(objectNodeCreateObjectNode2);
                    it = it;
                    str5 = str5;
                    str6 = str6;
                }
            }
            str = str5;
            str2 = str6;
            objectNodeCreateObjectNode.put("videoClipList", arrayNodeCreateArrayNode);
            objectNodeCreateObjectNode.put("sceneType", getSceneType());
        } else {
            str = "rawHeight";
            str2 = "rawWidth";
        }
        if (this.audioClips != null) {
            ArrayNode arrayNodeCreateArrayNode4 = JacksonUtils.createArrayNode();
            for (AVClipInfoPack aVClipInfoPack : this.audioClips) {
                if (aVClipInfoPack != null) {
                    ObjectNode objectNodeCreateObjectNode4 = JacksonUtils.createObjectNode();
                    objectNodeCreateObjectNode4.put("musicId", aVClipInfoPack.musicId);
                    objectNodeCreateObjectNode4.put("title", aVClipInfoPack.fileName);
                    objectNodeCreateObjectNode4.put("type", aVClipInfoPack.musicType);
                    objectNodeCreateObjectNode4.put("categoryId", aVClipInfoPack.categoryId);
                    arrayNodeCreateArrayNode4.add(objectNodeCreateObjectNode4);
                }
            }
            objectNodeCreateObjectNode.put("musicTrackList", arrayNodeCreateArrayNode4);
        }
        if (this.captions != null) {
            ArrayNode arrayNodeCreateArrayNode5 = JacksonUtils.createArrayNode();
            Iterator<Caption> it2 = this.captions.iterator();
            while (it2.hasNext()) {
                Caption next2 = it2.next();
                if (next2 != null) {
                    ObjectNode objectNodeCreateObjectNode5 = JacksonUtils.createObjectNode();
                    objectNodeCreateObjectNode5.put("content", next2.text);
                    Iterator<Caption> it3 = it2;
                    objectNodeCreateObjectNode5.put("color", String.format("#%06X", Integer.valueOf(next2.textColor & ViewCompat.MEASURED_SIZE_MASK)));
                    objectNodeCreateObjectNode5.put("rotate", next2.rotation);
                    objectNodeCreateObjectNode5.put("fontSize", next2.fontSize);
                    ArrayNode arrayNodeCreateArrayNode6 = JacksonUtils.createArrayNode();
                    arrayNodeCreateArrayNode6.add(next2.scaleX);
                    arrayNodeCreateArrayNode6.add(next2.scaleY);
                    objectNodeCreateObjectNode5.put("scale", arrayNodeCreateArrayNode6);
                    if (next2.translation != null) {
                        ArrayNode arrayNodeCreateArrayNode7 = JacksonUtils.createArrayNode();
                        arrayNodeCreateArrayNode7.add(next2.translation.x);
                        arrayNodeCreateArrayNode7.add(next2.translation.y);
                        objectNodeCreateObjectNode5.put("translation", arrayNodeCreateArrayNode7);
                    }
                    arrayNodeCreateArrayNode5.add(objectNodeCreateObjectNode5);
                    it2 = it3;
                }
            }
            objectNodeCreateObjectNode.put("textTrackList", arrayNodeCreateArrayNode5);
        }
        if (this.stickers != null) {
            ArrayNode arrayNodeCreateArrayNode8 = JacksonUtils.createArrayNode();
            for (StickerInfoPack stickerInfoPack : this.stickers) {
                if (stickerInfoPack != null) {
                    ObjectNode objectNodeCreateObjectNode6 = JacksonUtils.createObjectNode();
                    objectNodeCreateObjectNode6.put("name", stickerInfoPack.name);
                    objectNodeCreateObjectNode6.put("source", stickerInfoPack.sourceType);
                    if (Utils.isWebP(stickerInfoPack.srcImagePath)) {
                        objectNodeCreateObjectNode6.put("type", "webp");
                    } else if (Utils.isGif(stickerInfoPack.srcImagePath)) {
                        objectNodeCreateObjectNode6.put("type", "gif");
                    } else if (Utils.isPNG(stickerInfoPack.srcImagePath)) {
                        objectNodeCreateObjectNode6.put("type", "png");
                    } else if (Utils.isJPG(stickerInfoPack.srcImagePath)) {
                        objectNodeCreateObjectNode6.put("type", "jpg");
                    }
                    ArrayNode arrayNodeCreateArrayNode9 = JacksonUtils.createArrayNode();
                    arrayNodeCreateArrayNode9.add(stickerInfoPack.scaleX);
                    arrayNodeCreateArrayNode9.add(stickerInfoPack.scaleY);
                    objectNodeCreateObjectNode6.put("scale", arrayNodeCreateArrayNode9);
                    if (stickerInfoPack.translation != null) {
                        ArrayNode arrayNodeCreateArrayNode10 = JacksonUtils.createArrayNode();
                        arrayNodeCreateArrayNode10.add(stickerInfoPack.translation.x);
                        arrayNodeCreateArrayNode10.add(stickerInfoPack.translation.y);
                        objectNodeCreateObjectNode6.put("translation", arrayNodeCreateArrayNode10);
                    }
                    arrayNodeCreateArrayNode8.add(objectNodeCreateObjectNode6);
                }
            }
            objectNodeCreateObjectNode.put("stickerList", arrayNodeCreateArrayNode8);
        }
        if (this.pipClips != null) {
            ArrayNode arrayNodeCreateArrayNode11 = JacksonUtils.createArrayNode();
            for (PipInfoPack pipInfoPack : this.pipClips) {
                if (pipInfoPack != null) {
                    ObjectNode objectNodeCreateObjectNode7 = JacksonUtils.createObjectNode();
                    StreamInfo streamInfo = pipInfoPack.streamInfo;
                    if (streamInfo != null) {
                        str4 = str2;
                        objectNodeCreateObjectNode7.put(str4, streamInfo.width);
                        str3 = str;
                        objectNodeCreateObjectNode7.put(str3, streamInfo.height);
                        objectNodeCreateObjectNode7.put("bitrate", streamInfo.bitrateInKbps);
                        objectNodeCreateObjectNode7.put("frameRate", streamInfo.fps);
                        objectNodeCreateObjectNode7.put("durationInMs", streamInfo.durationInMs);
                    } else {
                        str3 = str;
                        str4 = str2;
                    }
                    objectNodeCreateObjectNode7.put("videoSource", 1);
                    objectNodeCreateObjectNode7.put("rotate", pipInfoPack.rotation);
                    ArrayNode arrayNodeCreateArrayNode12 = JacksonUtils.createArrayNode();
                    arrayNodeCreateArrayNode12.add(pipInfoPack.scaleX);
                    arrayNodeCreateArrayNode12.add(pipInfoPack.scaleY);
                    objectNodeCreateObjectNode7.put("scale", arrayNodeCreateArrayNode12);
                    if (pipInfoPack.translation != null) {
                        ArrayNode arrayNodeCreateArrayNode13 = JacksonUtils.createArrayNode();
                        arrayNodeCreateArrayNode13.add(pipInfoPack.translation.x);
                        arrayNodeCreateArrayNode13.add(pipInfoPack.translation.y);
                        objectNodeCreateObjectNode7.put("translation", arrayNodeCreateArrayNode13);
                    }
                    arrayNodeCreateArrayNode11.add(objectNodeCreateObjectNode7);
                    str = str3;
                    str2 = str4;
                }
            }
            objectNodeCreateObjectNode.put("pipTrackList", arrayNodeCreateArrayNode11);
        }
        objectNodeCreateObjectNode.put("durationInMs", getDuration());
        return objectNodeCreateObjectNode;
    }

    @Override // com.narvii.model.story.ScenePollOrQuizHost
    public PollAttach getPoll() {
        return this.pollAttach;
    }

    public QuizQuestion getQuestion() {
        return this.question;
    }

    @Override // com.narvii.model.story.ScenePollOrQuizHost
    public QuizQuestion getQuizQuestion() {
        return this.question;
    }

    @Override // com.narvii.model.story.ScenePollOrQuizHost
    public String id() {
        return this.id;
    }

    public boolean isGeneratedFromTemplate() {
        return this.template != null;
    }

    @Override // com.narvii.model.story.StorySceneMilestone
    public String milestoneId() {
        return this.id;
    }

    private void reCalcClipIndex(List<? extends BaseClipInfoPack> list) {
        if (list == null) {
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.get(i10).indexInScene = i10;
        }
    }

    public SceneInfo clearUselessClip() {
        ArrayList<AVClipInfoPack> arrayList = this.audioClips;
        if (arrayList != null) {
            Iterator<AVClipInfoPack> it = arrayList.iterator();
            while (it.hasNext()) {
                AVClipInfoPack next = it.next();
                if (TextUtils.isEmpty(next.inputPath) || FileUtils.isEmpty(new File(next.inputPath))) {
                    it.remove();
                }
            }
            reCalcClipIndex(this.audioClips);
        }
        if (this.captions != null) {
            AssetDownloader assetDownloader = (AssetDownloader) NVApplication.instance().getService("captionStyle");
            for (Caption caption : this.captions) {
                if (caption.fontPath != null && FileUtils.isEmpty(new File(caption.fontPath))) {
                    caption.fontPath = null;
                    caption.fontObjectId = null;
                }
                String str = caption.styleObjectId;
                if (str != null && assetDownloader != null && FileUtils.isEmpty(assetDownloader.getDownloadedFile(str))) {
                    caption.styleId = null;
                    caption.styleObjectId = null;
                }
            }
        }
        ArrayList<StickerInfoPack> arrayList2 = this.stickers;
        if (arrayList2 != null) {
            Iterator<StickerInfoPack> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                StickerInfoPack next2 = it2.next();
                if (next2 == null) {
                    it2.remove();
                } else if (TextUtils.isEmpty(next2.installedPath) || TextUtils.isEmpty(next2.srcImagePath)) {
                    it2.remove();
                } else if (FileUtils.isEmpty(new File(next2.installedPath)) || FileUtils.isEmpty(new File(next2.srcImagePath))) {
                    it2.remove();
                }
            }
            reCalcClipIndex(this.audioClips);
        }
        return this;
    }

    public void copyScene(SceneInfo sceneInfo) {
        if (sceneInfo == null) {
            return;
        }
        this.title = sceneInfo.title;
        this.coverImage = sceneInfo.coverImage;
        this.outputUrl = sceneInfo.outputUrl;
        this.template = sceneInfo.template;
        ArrayList arrayList = new ArrayList();
        this.inputFilePathList = arrayList;
        List<String> list = sceneInfo.inputFilePathList;
        if (list != null) {
            arrayList.addAll(list);
        }
        ArrayList<AVClipInfoPack> arrayList2 = new ArrayList<>();
        this.videoClips = arrayList2;
        ArrayList<AVClipInfoPack> arrayList3 = sceneInfo.videoClips;
        if (arrayList3 != null) {
            arrayList2.addAll(arrayList3);
        }
        ArrayList<AVClipInfoPack> arrayList4 = new ArrayList<>();
        this.audioClips = arrayList4;
        ArrayList<AVClipInfoPack> arrayList5 = sceneInfo.audioClips;
        if (arrayList5 != null) {
            arrayList4.addAll(arrayList5);
        }
        ArrayList<Caption> arrayList6 = new ArrayList<>();
        this.captions = arrayList6;
        ArrayList<Caption> arrayList7 = sceneInfo.captions;
        if (arrayList7 != null) {
            arrayList6.addAll(arrayList7);
        }
        ArrayList<StickerInfoPack> arrayList8 = new ArrayList<>();
        this.stickers = arrayList8;
        ArrayList<StickerInfoPack> arrayList9 = sceneInfo.stickers;
        if (arrayList9 != null) {
            arrayList8.addAll(arrayList9);
        }
        ArrayList<PipInfoPack> arrayList10 = new ArrayList<>();
        this.pipClips = arrayList10;
        ArrayList<PipInfoPack> arrayList11 = sceneInfo.pipClips;
        if (arrayList11 != null) {
            arrayList10.addAll(arrayList11);
        }
        this.previewFilePath = sceneInfo.previewFilePath;
        this.currentSceneVideoProgress = sceneInfo.currentSceneVideoProgress;
    }

    public void correctDuration() {
        Iterator<AVClipInfoPack> it = this.videoClips.iterator();
        int iTrimmedDurationInMsWithSpeed = 0;
        while (it.hasNext()) {
            iTrimmedDurationInMsWithSpeed += it.next().trimmedDurationInMsWithSpeed();
        }
        this.duration = iTrimmedDurationInMsWithSpeed;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SceneInfo sceneInfo = (SceneInfo) obj;
        if (this.duration == sceneInfo.duration && Utils.isEquals(this.id, sceneInfo.id) && Utils.isEquals(this.title, sceneInfo.title) && Utils.isEquals(this.coverImage, sceneInfo.coverImage) && Utils.isEquals(this.videoClips, sceneInfo.videoClips) && Utils.isEquals(this.audioClips, sceneInfo.audioClips) && Utils.isEquals(this.captions, sceneInfo.captions) && Utils.isEquals(this.stickers, sceneInfo.stickers) && Utils.isEquals(this.pipClips, sceneInfo.pipClips) && Utils.isEquals(this.question, sceneInfo.question) && Utils.isEquals(this.pollAttach, sceneInfo.pollAttach)) {
            return Utils.isEquals(this.previewFilePath, sceneInfo.previewFilePath);
        }
        return false;
    }

    public int getAttachDataStatus() {
        if (this.question != null) {
            return 2;
        }
        if (this.pollAttach != null) {
            return 3;
        }
        return !isEmpty() ? 1 : 0;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.title;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        long j6 = this.duration;
        int i10 = (iHashCode2 + ((int) (j6 ^ (j6 >>> 32)))) * 31;
        String str3 = this.coverImage;
        int iHashCode3 = (i10 + (str3 != null ? str3.hashCode() : 0)) * 31;
        ArrayList<AVClipInfoPack> arrayList = this.videoClips;
        int iHashCode4 = (iHashCode3 + (arrayList != null ? arrayList.hashCode() : 0)) * 31;
        ArrayList<AVClipInfoPack> arrayList2 = this.audioClips;
        int iHashCode5 = (iHashCode4 + (arrayList2 != null ? arrayList2.hashCode() : 0)) * 31;
        ArrayList<Caption> arrayList3 = this.captions;
        int iHashCode6 = (iHashCode5 + (arrayList3 != null ? arrayList3.hashCode() : 0)) * 31;
        ArrayList<StickerInfoPack> arrayList4 = this.stickers;
        int iHashCode7 = (iHashCode6 + (arrayList4 != null ? arrayList4.hashCode() : 0)) * 31;
        String str4 = this.previewFilePath;
        return iHashCode7 + (str4 != null ? str4.hashCode() : 0);
    }

    public boolean isCanEncode() {
        ArrayList<AVClipInfoPack> arrayList = this.videoClips;
        if (arrayList == null) {
            return false;
        }
        for (AVClipInfoPack aVClipInfoPack : arrayList) {
            if (aVClipInfoPack == null || aVClipInfoPack.getInputFile() == null || !aVClipInfoPack.getInputFile().exists()) {
                return false;
            }
        }
        ArrayList<AVClipInfoPack> arrayList2 = this.audioClips;
        if (arrayList2 == null) {
            return true;
        }
        for (AVClipInfoPack aVClipInfoPack2 : arrayList2) {
            if (aVClipInfoPack2 == null || aVClipInfoPack2.getInputFile() == null || !aVClipInfoPack2.getInputFile().exists()) {
                return false;
            }
        }
        return true;
    }

    public boolean isCanPlay() {
        for (AVClipInfoPack aVClipInfoPack : this.videoClips) {
            if (aVClipInfoPack != null) {
                String str = aVClipInfoPack.inputPath;
                if (TextUtils.isEmpty(str) || !new File(str).exists()) {
                    return false;
                }
            }
        }
        return true;
    }

    public boolean isEmpty() {
        ArrayList<AVClipInfoPack> arrayList = this.videoClips;
        return arrayList == null || arrayList.size() == 0;
    }

    public SceneInfo copy() {
        return (SceneInfo) JacksonUtils.readAs(JacksonUtils.writeAsString(this), SceneInfo.class);
    }

    public long getDuration() {
        correctDuration();
        return this.duration;
    }

    public long getPreviewDuration() {
        long duration;
        if (getDuration() == 0) {
            duration = this.duration;
        } else {
            duration = getDuration();
        }
        return Math.min((int) duration, MAX_DURATION_PER_SCENE);
    }

    public boolean isDurationNotCorrect() {
        if (!isTooLong() && !isTooShort()) {
            return false;
        }
        return true;
    }

    public boolean isError() {
        if (isEmpty()) {
            return false;
        }
        if (isCanPlay() && !isDurationNotCorrect() && isCanEncode()) {
            return false;
        }
        return true;
    }

    public boolean isTooLong() {
        if (getDuration() > MAX_DURATION_PER_SCENE) {
            return true;
        }
        return false;
    }

    public boolean isTooShort() {
        if (getDuration() < 3000) {
            return true;
        }
        return false;
    }

    public SceneInfo(String str, String str2) {
        this.id = str;
        this.title = str2;
    }
}
