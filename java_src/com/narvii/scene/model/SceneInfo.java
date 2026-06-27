package com.narvii.scene.model;

import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.narvii.app.NVApplication;
import com.narvii.asset.AssetDownloader;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.cropping.CroppingData;
import com.narvii.model.PollAttach;
import com.narvii.model.QuizQuestion;
import com.narvii.model.story.ScenePollOrQuizHost;
import com.narvii.model.story.StorySceneMilestone;
import com.narvii.pip.PipInfoPack;
import com.narvii.scene.SceneConstant;
import com.narvii.scene.poll.ScenePollPlayView;
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

/* loaded from: classes3.dex */
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

    public int getAttachDataStatus() {
        if (this.question != null) {
            return 2;
        }
        if (this.pollAttach != null) {
            return 3;
        }
        return !isEmpty() ? 1 : 0;
    }

    public SceneInfo() {
    }

    public SceneInfo(String str, String str2) {
        this.id = str;
        this.title = str2;
    }

    public QuizQuestion getQuestion() {
        return this.question;
    }

    public boolean isError() {
        if (isEmpty()) {
            return false;
        }
        return (isCanPlay() && !isDurationNotCorrect() && isCanEncode()) ? false : true;
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
            Iterator<Caption> it2 = this.captions.iterator();
            while (it2.hasNext()) {
                Caption next2 = it2.next();
                String str = next2.fontPath;
                if (str != null && FileUtils.isEmpty(new File(str))) {
                    next2.fontPath = null;
                    next2.fontObjectId = null;
                }
                String str2 = next2.styleObjectId;
                if (str2 != null && assetDownloader != null && FileUtils.isEmpty(assetDownloader.getDownloadedFile(str2))) {
                    next2.styleId = null;
                    next2.styleObjectId = null;
                }
            }
        }
        ArrayList<StickerInfoPack> arrayList2 = this.stickers;
        if (arrayList2 != null) {
            Iterator<StickerInfoPack> it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                StickerInfoPack next3 = it3.next();
                if (next3 == null) {
                    it3.remove();
                } else if (TextUtils.isEmpty(next3.installedPath) || TextUtils.isEmpty(next3.srcImagePath)) {
                    it3.remove();
                } else if (FileUtils.isEmpty(new File(next3.installedPath)) || FileUtils.isEmpty(new File(next3.srcImagePath))) {
                    it3.remove();
                }
            }
            reCalcClipIndex(this.audioClips);
        }
        return this;
    }

    private void reCalcClipIndex(List<? extends BaseClipInfoPack> list) {
        if (list == null) {
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            list.get(i).indexInScene = i;
        }
    }

    public boolean isDurationNotCorrect() {
        return isTooLong() || isTooShort();
    }

    public boolean isTooLong() {
        return getDuration() > ((long) MAX_DURATION_PER_SCENE);
    }

    public boolean isTooShort() {
        return getDuration() < ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS;
    }

    public boolean isCanPlay() {
        Iterator<AVClipInfoPack> it = this.videoClips.iterator();
        while (it.hasNext()) {
            AVClipInfoPack next = it.next();
            if (next != null) {
                String str = next.inputPath;
                if (TextUtils.isEmpty(str) || !new File(str).exists()) {
                    return false;
                }
            }
        }
        return true;
    }

    public boolean isCanEncode() {
        ArrayList<AVClipInfoPack> arrayList = this.videoClips;
        if (arrayList == null) {
            return false;
        }
        Iterator<AVClipInfoPack> it = arrayList.iterator();
        while (it.hasNext()) {
            AVClipInfoPack next = it.next();
            if (next == null || next.getInputFile() == null || !next.getInputFile().exists()) {
                return false;
            }
        }
        ArrayList<AVClipInfoPack> arrayList2 = this.audioClips;
        if (arrayList2 == null) {
            return true;
        }
        Iterator<AVClipInfoPack> it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            AVClipInfoPack next2 = it2.next();
            if (next2 == null || next2.getInputFile() == null || !next2.getInputFile().exists()) {
                return false;
            }
        }
        return true;
    }

    public boolean isEmpty() {
        ArrayList<AVClipInfoPack> arrayList = this.videoClips;
        return arrayList == null || arrayList.size() == 0;
    }

    public long getDuration() {
        correctDuration();
        return this.duration;
    }

    public void correctDuration() {
        Iterator<AVClipInfoPack> it = this.videoClips.iterator();
        int iTrimmedDurationInMsWithSpeed = 0;
        while (it.hasNext()) {
            iTrimmedDurationInMsWithSpeed += it.next().trimmedDurationInMsWithSpeed();
        }
        this.duration = iTrimmedDurationInMsWithSpeed;
    }

    public long getPreviewDuration() {
        return Math.min((int) (getDuration() == 0 ? this.duration : getDuration()), MAX_DURATION_PER_SCENE);
    }

    public boolean isGeneratedFromTemplate() {
        return this.template != null;
    }

    public void copyScene(SceneInfo sceneInfo) {
        if (sceneInfo == null) {
            return;
        }
        this.title = sceneInfo.title;
        this.coverImage = sceneInfo.coverImage;
        this.outputUrl = sceneInfo.outputUrl;
        this.template = sceneInfo.template;
        this.inputFilePathList = new ArrayList();
        List<String> list = sceneInfo.inputFilePathList;
        if (list != null) {
            this.inputFilePathList.addAll(list);
        }
        this.videoClips = new ArrayList<>();
        ArrayList<AVClipInfoPack> arrayList = sceneInfo.videoClips;
        if (arrayList != null) {
            this.videoClips.addAll(arrayList);
        }
        this.audioClips = new ArrayList<>();
        ArrayList<AVClipInfoPack> arrayList2 = sceneInfo.audioClips;
        if (arrayList2 != null) {
            this.audioClips.addAll(arrayList2);
        }
        this.captions = new ArrayList<>();
        ArrayList<Caption> arrayList3 = sceneInfo.captions;
        if (arrayList3 != null) {
            this.captions.addAll(arrayList3);
        }
        this.stickers = new ArrayList<>();
        ArrayList<StickerInfoPack> arrayList4 = sceneInfo.stickers;
        if (arrayList4 != null) {
            this.stickers.addAll(arrayList4);
        }
        this.pipClips = new ArrayList<>();
        ArrayList<PipInfoPack> arrayList5 = sceneInfo.pipClips;
        if (arrayList5 != null) {
            this.pipClips.addAll(arrayList5);
        }
        this.previewFilePath = sceneInfo.previewFilePath;
        this.currentSceneVideoProgress = sceneInfo.currentSceneVideoProgress;
    }

    public SceneInfo copy() {
        return (SceneInfo) JacksonUtils.readAs(JacksonUtils.writeAsString(this), SceneInfo.class);
    }

    public ObjectNode generateMetadata() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        Iterator<AVClipInfoPack> it;
        ObjectNode objectNode = this.metadata;
        if (objectNode != null) {
            return objectNode;
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("targetWidth", 720);
        objectNodeCreateObjectNode.put("targetHeight", 1280);
        String str7 = "rawHeight";
        String str8 = "rawWidth";
        if (this.videoClips != null) {
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            Iterator<AVClipInfoPack> it2 = this.videoClips.iterator();
            while (it2.hasNext()) {
                AVClipInfoPack next = it2.next();
                if (next != null) {
                    ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
                    if (!TextUtils.isEmpty(next.getBgColorContent())) {
                        objectNodeCreateObjectNode2.put(TtmlNode.ATTR_TTS_BACKGROUND_COLOR, next.getBgColorContent());
                    }
                    ArrayNode arrayNodeCreateArrayNode2 = JacksonUtils.createArrayNode();
                    ObjectNode objectNodeCreateObjectNode3 = JacksonUtils.createObjectNode();
                    objectNodeCreateObjectNode3.put(str8, next.rawVideoWidth);
                    objectNodeCreateObjectNode3.put(str7, next.rawVideoHeight);
                    float[] fArr = next.targetRectInfo;
                    if (fArr == null || fArr.length <= 0) {
                        str5 = str7;
                        str6 = str8;
                        it = it2;
                    } else {
                        ArrayNode arrayNodeCreateArrayNode3 = JacksonUtils.createArrayNode();
                        it = it2;
                        float[] fArr2 = next.targetRectInfo;
                        str5 = str7;
                        str6 = str8;
                        int i = 0;
                        for (int length = fArr2.length; i < length; length = length) {
                            arrayNodeCreateArrayNode3.add(fArr2[i]);
                            i++;
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
                    it2 = it;
                    str7 = str5;
                    str8 = str6;
                }
            }
            str = str7;
            str2 = str8;
            objectNodeCreateObjectNode.put("videoClipList", arrayNodeCreateArrayNode);
            objectNodeCreateObjectNode.put("sceneType", getSceneType());
        } else {
            str = "rawHeight";
            str2 = "rawWidth";
        }
        if (this.audioClips != null) {
            ArrayNode arrayNodeCreateArrayNode4 = JacksonUtils.createArrayNode();
            Iterator<AVClipInfoPack> it3 = this.audioClips.iterator();
            while (it3.hasNext()) {
                AVClipInfoPack next2 = it3.next();
                if (next2 != null) {
                    ObjectNode objectNodeCreateObjectNode4 = JacksonUtils.createObjectNode();
                    objectNodeCreateObjectNode4.put("musicId", next2.musicId);
                    objectNodeCreateObjectNode4.put("title", next2.fileName);
                    objectNodeCreateObjectNode4.put("type", next2.musicType);
                    objectNodeCreateObjectNode4.put("categoryId", next2.categoryId);
                    arrayNodeCreateArrayNode4.add(objectNodeCreateObjectNode4);
                }
            }
            objectNodeCreateObjectNode.put("musicTrackList", arrayNodeCreateArrayNode4);
        }
        if (this.captions != null) {
            ArrayNode arrayNodeCreateArrayNode5 = JacksonUtils.createArrayNode();
            Iterator<Caption> it4 = this.captions.iterator();
            while (it4.hasNext()) {
                Caption next3 = it4.next();
                if (next3 != null) {
                    ObjectNode objectNodeCreateObjectNode5 = JacksonUtils.createObjectNode();
                    objectNodeCreateObjectNode5.put("content", next3.text);
                    Iterator<Caption> it5 = it4;
                    objectNodeCreateObjectNode5.put(TtmlNode.ATTR_TTS_COLOR, String.format("#%06X", Integer.valueOf(next3.textColor & ViewCompat.MEASURED_SIZE_MASK)));
                    objectNodeCreateObjectNode5.put("rotate", next3.rotation);
                    objectNodeCreateObjectNode5.put(TtmlNode.ATTR_TTS_FONT_SIZE, next3.fontSize);
                    ArrayNode arrayNodeCreateArrayNode6 = JacksonUtils.createArrayNode();
                    arrayNodeCreateArrayNode6.add(next3.scaleX);
                    arrayNodeCreateArrayNode6.add(next3.scaleY);
                    objectNodeCreateObjectNode5.put("scale", arrayNodeCreateArrayNode6);
                    if (next3.translation != null) {
                        ArrayNode arrayNodeCreateArrayNode7 = JacksonUtils.createArrayNode();
                        arrayNodeCreateArrayNode7.add(next3.translation.x);
                        arrayNodeCreateArrayNode7.add(next3.translation.y);
                        objectNodeCreateObjectNode5.put("translation", arrayNodeCreateArrayNode7);
                    }
                    arrayNodeCreateArrayNode5.add(objectNodeCreateObjectNode5);
                    it4 = it5;
                }
            }
            objectNodeCreateObjectNode.put("textTrackList", arrayNodeCreateArrayNode5);
        }
        if (this.stickers != null) {
            ArrayNode arrayNodeCreateArrayNode8 = JacksonUtils.createArrayNode();
            Iterator<StickerInfoPack> it6 = this.stickers.iterator();
            while (it6.hasNext()) {
                StickerInfoPack next4 = it6.next();
                if (next4 != null) {
                    ObjectNode objectNodeCreateObjectNode6 = JacksonUtils.createObjectNode();
                    objectNodeCreateObjectNode6.put(AppMeasurementSdk.ConditionalUserProperty.NAME, next4.name);
                    objectNodeCreateObjectNode6.put(CommentListFragment.COMMENT_KEY_SOURCE, next4.sourceType);
                    if (Utils.isWebP(next4.srcImagePath)) {
                        objectNodeCreateObjectNode6.put("type", "webp");
                    } else if (Utils.isGif(next4.srcImagePath)) {
                        objectNodeCreateObjectNode6.put("type", "gif");
                    } else if (Utils.isPNG(next4.srcImagePath)) {
                        objectNodeCreateObjectNode6.put("type", "png");
                    } else if (Utils.isJPG(next4.srcImagePath)) {
                        objectNodeCreateObjectNode6.put("type", "jpg");
                    }
                    ArrayNode arrayNodeCreateArrayNode9 = JacksonUtils.createArrayNode();
                    arrayNodeCreateArrayNode9.add(next4.scaleX);
                    arrayNodeCreateArrayNode9.add(next4.scaleY);
                    objectNodeCreateObjectNode6.put("scale", arrayNodeCreateArrayNode9);
                    if (next4.translation != null) {
                        ArrayNode arrayNodeCreateArrayNode10 = JacksonUtils.createArrayNode();
                        arrayNodeCreateArrayNode10.add(next4.translation.x);
                        arrayNodeCreateArrayNode10.add(next4.translation.y);
                        objectNodeCreateObjectNode6.put("translation", arrayNodeCreateArrayNode10);
                    }
                    arrayNodeCreateArrayNode8.add(objectNodeCreateObjectNode6);
                }
            }
            objectNodeCreateObjectNode.put("stickerList", arrayNodeCreateArrayNode8);
        }
        if (this.pipClips != null) {
            ArrayNode arrayNodeCreateArrayNode11 = JacksonUtils.createArrayNode();
            Iterator<PipInfoPack> it7 = this.pipClips.iterator();
            while (it7.hasNext()) {
                PipInfoPack next5 = it7.next();
                if (next5 != null) {
                    ObjectNode objectNodeCreateObjectNode7 = JacksonUtils.createObjectNode();
                    StreamInfo streamInfo = next5.streamInfo;
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
                    objectNodeCreateObjectNode7.put("rotate", next5.rotation);
                    ArrayNode arrayNodeCreateArrayNode12 = JacksonUtils.createArrayNode();
                    arrayNodeCreateArrayNode12.add(next5.scaleX);
                    arrayNodeCreateArrayNode12.add(next5.scaleY);
                    objectNodeCreateObjectNode7.put("scale", arrayNodeCreateArrayNode12);
                    if (next5.translation != null) {
                        ArrayNode arrayNodeCreateArrayNode13 = JacksonUtils.createArrayNode();
                        arrayNodeCreateArrayNode13.add(next5.translation.x);
                        arrayNodeCreateArrayNode13.add(next5.translation.y);
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

    private int getSceneType() {
        if (this.question != null) {
            return 3;
        }
        return this.pollAttach != null ? 2 : 1;
    }

    @Override // com.narvii.model.story.StorySceneMilestone
    public String milestoneId() {
        return this.id;
    }

    @Override // com.narvii.model.story.ScenePollOrQuizHost
    public String id() {
        return this.id;
    }

    @Override // com.narvii.model.story.StorySceneMilestone, com.narvii.model.story.ScenePollOrQuizHost
    public boolean containsPollOrQuiz() {
        return (this.question == null && this.pollAttach == null) ? false : true;
    }

    @Override // com.narvii.model.story.ScenePollOrQuizHost
    public QuizQuestion getQuizQuestion() {
        return this.question;
    }

    @Override // com.narvii.model.story.ScenePollOrQuizHost
    public PollAttach getPoll() {
        return this.pollAttach;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SceneInfo.class != obj.getClass()) {
            return false;
        }
        SceneInfo sceneInfo = (SceneInfo) obj;
        if (this.duration == sceneInfo.duration && Utils.isEquals(this.id, sceneInfo.id) && Utils.isEquals(this.title, sceneInfo.title) && Utils.isEquals(this.coverImage, sceneInfo.coverImage) && Utils.isEquals(this.videoClips, sceneInfo.videoClips) && Utils.isEquals(this.audioClips, sceneInfo.audioClips) && Utils.isEquals(this.captions, sceneInfo.captions) && Utils.isEquals(this.stickers, sceneInfo.stickers) && Utils.isEquals(this.pipClips, sceneInfo.pipClips) && Utils.isEquals(this.question, sceneInfo.question) && Utils.isEquals(this.pollAttach, sceneInfo.pollAttach)) {
            return Utils.isEquals(this.previewFilePath, sceneInfo.previewFilePath);
        }
        return false;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.title;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        long j = this.duration;
        int i = (iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
        String str3 = this.coverImage;
        int iHashCode3 = (i + (str3 != null ? str3.hashCode() : 0)) * 31;
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
}
