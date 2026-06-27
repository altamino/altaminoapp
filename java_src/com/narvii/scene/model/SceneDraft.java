package com.narvii.scene.model;

import android.net.Uri;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVApplication;
import com.narvii.asset.AssetDownloader;
import com.narvii.model.Media;
import com.narvii.model.Scene;
import com.narvii.pip.PipInfoPack;
import com.narvii.post.DraftManager;
import com.narvii.scene.SceneConstant;
import com.narvii.util.FileUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiService;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.BaseClipInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* loaded from: classes3.dex */
public class SceneDraft {
    private static final String TAG = "SceneDraft";
    public AVClipInfoPack bgMusicClip;
    public String coverImage;
    public SceneCoverImageInfo coverImageInfo;
    public String draftId;
    public String globalFileFolder;
    public ObjectNode metadata;
    public final List<SceneInfo> sceneInfos;
    public int serialNo;

    public SceneDraft() {
        this(null);
    }

    public SceneDraft(String str) {
        this.serialNo = 0;
        this.draftId = StringUtils.isTrimEmpty(str) ? String.valueOf(System.currentTimeMillis()) : str;
        this.sceneInfos = new ArrayList();
        this.globalFileFolder = SceneConstant.SCENE_GLOBAL_FILE;
    }

    public SceneDraft(String str, List<Scene> list) {
        this.serialNo = 0;
        this.draftId = str;
        this.sceneInfos = new ArrayList();
        this.globalFileFolder = SceneConstant.SCENE_GLOBAL_FILE;
    }

    public long getTotalDuration() {
        Iterator<SceneInfo> it = this.sceneInfos.iterator();
        long previewDuration = 0;
        while (it.hasNext()) {
            previewDuration += it.next().getPreviewDuration();
        }
        return previewDuration;
    }

    public long getBGMTotalDuraion() {
        if (this.bgMusicClip == null) {
            return 0L;
        }
        return r0.orgDurationInMs;
    }

    public String getFirstSceneCoverImagePath() {
        for (SceneInfo sceneInfo : this.sceneInfos) {
            if (sceneInfo != null && !TextUtils.isEmpty(sceneInfo.coverImage) && !FileUtils.isEmpty(new File(sceneInfo.coverImage))) {
                return sceneInfo.coverImage;
            }
        }
        return null;
    }

    public Media getCoverMedia() {
        Media media = new Media();
        media.type = 100;
        media.url = TextUtils.isEmpty(this.coverImage) ? "" : this.coverImage;
        return media;
    }

    public AVClipInfoPack getFirstVideoClip() {
        ArrayList<AVClipInfoPack> arrayList;
        List<SceneInfo> list = this.sceneInfos;
        if (list == null) {
            return null;
        }
        for (SceneInfo sceneInfo : list) {
            if (sceneInfo != null && (arrayList = sceneInfo.videoClips) != null && arrayList.size() != 0) {
                Iterator<AVClipInfoPack> it = sceneInfo.videoClips.iterator();
                while (it.hasNext()) {
                    AVClipInfoPack next = it.next();
                    if (!TextUtils.isEmpty(next.inputPath) && (next.inputPath.startsWith("http") || !FileUtils.isEmpty(new File(next.inputPath)))) {
                        return next;
                    }
                }
            }
        }
        return null;
    }

    public boolean isCanEncode() {
        if (this.sceneInfos.size() == 0) {
            return false;
        }
        Iterator<SceneInfo> it = this.sceneInfos.iterator();
        while (it.hasNext()) {
            if (!it.next().isCanEncode()) {
                return false;
            }
        }
        return true;
    }

    public boolean isError() {
        Iterator<SceneInfo> it = this.sceneInfos.iterator();
        while (it.hasNext()) {
            if (it.next().isError()) {
                return true;
            }
        }
        return originFileMissing();
    }

    public boolean isEmpty() {
        Iterator<SceneInfo> it = this.sceneInfos.iterator();
        while (it.hasNext()) {
            if (!it.next().isEmpty()) {
                return false;
            }
        }
        return true;
    }

    public boolean originFileMissing() {
        for (SceneInfo sceneInfo : this.sceneInfos) {
            if (sceneInfo != null) {
                ArrayList<AVClipInfoPack> arrayList = sceneInfo.videoClips;
                if (arrayList != null) {
                    Iterator<AVClipInfoPack> it = arrayList.iterator();
                    while (it.hasNext()) {
                        AVClipInfoPack next = it.next();
                        if (!TextUtils.isEmpty(next.inputPath) && FileUtils.isEmpty(new File(next.inputPath))) {
                            return true;
                        }
                    }
                }
                ArrayList<AVClipInfoPack> arrayList2 = sceneInfo.audioClips;
                if (arrayList2 != null) {
                    Iterator<AVClipInfoPack> it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        AVClipInfoPack next2 = it2.next();
                        if (!TextUtils.isEmpty(next2.inputPath) && FileUtils.isEmpty(new File(next2.inputPath))) {
                            return true;
                        }
                    }
                }
                if (sceneInfo.captions != null) {
                    AssetDownloader assetDownloader = (AssetDownloader) NVApplication.instance().getService("captionStyle");
                    Iterator<Caption> it3 = sceneInfo.captions.iterator();
                    while (it3.hasNext()) {
                        Caption next3 = it3.next();
                        String str = next3.fontPath;
                        if (str != null && FileUtils.isEmpty(new File(str))) {
                            return true;
                        }
                        String str2 = next3.styleObjectId;
                        if (str2 != null && assetDownloader != null && FileUtils.isEmpty(assetDownloader.getDownloadedFile(str2))) {
                            return true;
                        }
                    }
                }
                ArrayList<StickerInfoPack> arrayList3 = sceneInfo.stickers;
                if (arrayList3 != null) {
                    Iterator<StickerInfoPack> it4 = arrayList3.iterator();
                    while (it4.hasNext()) {
                        StickerInfoPack next4 = it4.next();
                        if (TextUtils.isEmpty(next4.installedPath) || TextUtils.isEmpty(next4.srcImagePath) || FileUtils.isEmpty(new File(next4.installedPath)) || FileUtils.isEmpty(new File(next4.srcImagePath))) {
                            return true;
                        }
                    }
                }
                ArrayList<PipInfoPack> arrayList4 = sceneInfo.pipClips;
                if (arrayList4 != null) {
                    Iterator<PipInfoPack> it5 = arrayList4.iterator();
                    while (it5.hasNext()) {
                        String str3 = it5.next().inputPath;
                        if (str3 != null && FileUtils.isEmpty(new File(str3))) {
                            return true;
                        }
                    }
                } else {
                    continue;
                }
            }
        }
        AVClipInfoPack aVClipInfoPack = this.bgMusicClip;
        return (aVClipInfoPack == null || TextUtils.isEmpty(aVClipInfoPack.inputPath) || !FileUtils.isEmpty(new File(this.bgMusicClip.inputPath))) ? false : true;
    }

    public SceneDraft clearUselessClip() {
        for (SceneInfo sceneInfo : this.sceneInfos) {
            if (!sceneInfo.isEmpty()) {
                sceneInfo.clearUselessClip();
            }
        }
        AVClipInfoPack aVClipInfoPack = this.bgMusicClip;
        if (aVClipInfoPack != null && (TextUtils.isEmpty(aVClipInfoPack.inputPath) || FileUtils.isEmpty(new File(this.bgMusicClip.inputPath)))) {
            this.bgMusicClip = null;
        }
        return this;
    }

    public int getSceneListSize() {
        return this.sceneInfos.size();
    }

    public int getSceneLisSizeIgnoreEmpty() {
        int i = 0;
        for (SceneInfo sceneInfo : this.sceneInfos) {
            if (sceneInfo != null && !sceneInfo.isEmpty()) {
                i++;
            }
        }
        return i;
    }

    public List<SceneInfo> getSceneListIgnoreEmpty() {
        ArrayList arrayList = new ArrayList();
        for (SceneInfo sceneInfo : this.sceneInfos) {
            if (sceneInfo != null && !sceneInfo.isEmpty()) {
                arrayList.add(sceneInfo.copy());
            }
        }
        return arrayList;
    }

    public void addScene(SceneInfo sceneInfo) {
        if (sceneInfo == null) {
            return;
        }
        this.sceneInfos.add(sceneInfo);
        correctBgMusicClip();
    }

    public void setSceneInfos(List<SceneInfo> list) {
        this.sceneInfos.clear();
        if (list != null) {
            this.sceneInfos.addAll(list);
        } else {
            this.sceneInfos.addAll(new ArrayList());
        }
        correctBgMusicClip();
        if (this.sceneInfos.size() == 0) {
            this.serialNo = 0;
        }
    }

    public void setBgMusicClip(AVClipInfoPack aVClipInfoPack) {
        this.bgMusicClip = aVClipInfoPack;
    }

    public void correctBgMusicClip() {
        if (this.bgMusicClip == null || this.sceneInfos == null) {
            return;
        }
        if (r0.trimmedDurationInMs() < getTotalDuration()) {
            long totalDuration = getTotalDuration() - this.bgMusicClip.trimmedDurationInMs();
            AVClipInfoPack aVClipInfoPack = this.bgMusicClip;
            long j = aVClipInfoPack.trimEndInMs + totalDuration;
            int i = aVClipInfoPack.orgDurationInMs;
            if (j <= i) {
                i = (int) j;
            }
            aVClipInfoPack.trimEndInMs = i;
            return;
        }
        long jTrimmedDurationInMs = this.bgMusicClip.trimmedDurationInMs() - getTotalDuration();
        AVClipInfoPack aVClipInfoPack2 = this.bgMusicClip;
        long j2 = aVClipInfoPack2.trimEndInMs - jTrimmedDurationInMs;
        int i2 = aVClipInfoPack2.trimStartInMs;
        if (j2 >= i2) {
            i2 = (int) j2;
        }
        aVClipInfoPack2.trimEndInMs = i2;
    }

    public void setBgMusicMedia(Media media) {
        if (media == null || TextUtils.isEmpty(media.url)) {
            this.bgMusicClip = null;
            return;
        }
        AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
        aVClipInfoPack.trimStartInMs = 0;
        aVClipInfoPack.inputPath = Uri.parse(media.url).getPath();
        long j = media.duration;
        aVClipInfoPack.orgDurationInMs = (int) j;
        aVClipInfoPack.trimStartInMs = 0;
        aVClipInfoPack.trimEndInMs = (int) Math.min(j, getTotalDuration());
        aVClipInfoPack.visibleDurationInMs = (int) media.duration;
        aVClipInfoPack.author = media.author;
        aVClipInfoPack.fileName = media.fileName;
        setBgMusicClip(aVClipInfoPack);
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SceneDraft m54clone() {
        return (SceneDraft) JacksonUtils.readAs(JacksonUtils.writeAsString(this), SceneDraft.class);
    }

    public SceneInfo createEmptyScene() {
        return new SceneInfo(getSceneId(), serialString(this.serialNo));
    }

    public SceneInfo copyScene(DraftManager draftManager, SceneInfo sceneInfo) throws Throwable {
        if (draftManager == null || sceneInfo == null) {
            return null;
        }
        String absolutePath = draftManager.getDir(this.draftId).getAbsolutePath();
        SceneInfo sceneInfo2 = (SceneInfo) JacksonUtils.readAs(JacksonUtils.writeAsString(sceneInfo), SceneInfo.class);
        sceneInfo2.id = getSceneId();
        sceneInfo2.title = sceneInfo.title + " copy";
        sceneInfo2.question = null;
        sceneInfo2.pollAttach = null;
        Utils.copyFolder(getSceneDraftFile(absolutePath, sceneInfo.id), getSceneDraftFile(absolutePath, sceneInfo2.id));
        sceneInfo2.outputUrl = getCopyPathParam(sceneInfo2.outputUrl, sceneInfo.id, sceneInfo2.id);
        replaceClipId(sceneInfo2.videoClips);
        replaceClipId(sceneInfo2.audioClips);
        replaceClipId(sceneInfo2.captions);
        replaceClipId(sceneInfo2.stickers);
        return sceneInfo2;
    }

    public static void replaceClipId(List<? extends BaseClipInfoPack> list) {
        if (list != null) {
            for (BaseClipInfoPack baseClipInfoPack : list) {
                if (baseClipInfoPack != null) {
                    baseClipInfoPack.clipId = UUID.randomUUID().toString();
                }
            }
        }
    }

    public void replaceSceneId(String str) {
        for (SceneInfo sceneInfo : this.sceneInfos) {
            sceneInfo.id = sceneInfo.id.replace(this.draftId, str);
        }
        this.draftId = str;
    }

    public static String getCopyPathParam(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.contains(str2) ? str.replace(str2, str3) : str;
    }

    private String getSceneId() {
        this.serialNo++;
        return this.draftId + "_" + this.serialNo;
    }

    public SceneInfo getSceneInfo(String str) {
        if (!TextUtils.isEmpty(str) && this.sceneInfos.size() != 0) {
            for (SceneInfo sceneInfo : this.sceneInfos) {
                if (sceneInfo != null && TextUtils.equals(sceneInfo.id, str)) {
                    return sceneInfo;
                }
            }
        }
        return null;
    }

    public ObjectNode generateMetadata() {
        ObjectNode objectNode = this.metadata;
        int i = 1;
        if (objectNode != null) {
            objectNode.put("coverImage", this.coverImage);
            ObjectNode objectNode2 = this.metadata;
            SceneCoverImageInfo sceneCoverImageInfo = this.coverImageInfo;
            if (sceneCoverImageInfo != null && sceneCoverImageInfo.from == 2) {
                i = 2;
            }
            objectNode2.put("coverImageSource", i);
            return this.metadata;
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        if (this.bgMusicClip != null) {
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode2.put("musicId", this.bgMusicClip.musicId);
            objectNodeCreateObjectNode2.put("title", this.bgMusicClip.fileName);
            objectNodeCreateObjectNode2.put("type", this.bgMusicClip.musicType);
            objectNodeCreateObjectNode2.put("categoryId", this.bgMusicClip.categoryId);
            arrayNodeCreateArrayNode.add(objectNodeCreateObjectNode2);
            objectNodeCreateObjectNode.put("musicTrackList", arrayNodeCreateArrayNode);
        }
        objectNodeCreateObjectNode.put("deviceType", ApiService.userAgent(NVApplication.instance()));
        objectNodeCreateObjectNode.put("coverImage", this.coverImage);
        SceneCoverImageInfo sceneCoverImageInfo2 = this.coverImageInfo;
        if (sceneCoverImageInfo2 != null && sceneCoverImageInfo2.from == 2) {
            i = 2;
        }
        objectNodeCreateObjectNode.put("coverImageSource", i);
        return objectNodeCreateObjectNode;
    }

    private static String serialString(int i) {
        String strValueOf = String.valueOf(i);
        if (strValueOf.length() < 2) {
            strValueOf = "0" + strValueOf;
        }
        return "Scene " + strValueOf;
    }

    public static void convertToMaterial(List<Scene> list, SceneDraft sceneDraft) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            sceneDraft.serialNo++;
            for (Scene scene : list) {
                if (scene != null && scene.media != null) {
                    SceneInfo sceneInfo = new SceneInfo(scene.sceneId, "Scene " + sceneDraft.serialNo);
                    Media media = scene.media;
                    sceneInfo.duration = media.duration;
                    sceneInfo.coverImage = media.coverImage;
                    sceneInfo.previewFilePath = media.getMediaUrl();
                    AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
                    aVClipInfoPack.inputPath = scene.media.getMediaUrl();
                    sceneInfo.videoClips = new ArrayList<>();
                    sceneInfo.videoClips.add(aVClipInfoPack);
                    arrayList.add(sceneInfo);
                }
            }
        }
        sceneDraft.sceneInfos.addAll(arrayList);
    }

    public static File getSceneDraftFile(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = "default";
        }
        return new File(str, str2);
    }

    public boolean isSceneInfoEquals(List<SceneInfo> list, boolean z) {
        List<SceneInfo> list2 = this.sceneInfos;
        if (list2 == null) {
            return list == null;
        }
        if (list == null) {
            return false;
        }
        Iterator<SceneInfo> it = list2.iterator();
        Iterator<SceneInfo> it2 = list.iterator();
        while (true) {
            if (!it.hasNext() && !it2.hasNext()) {
                return true;
            }
            SceneInfo next = null;
            SceneInfo next2 = null;
            while (true) {
                if ((next2 != null && (!z || !next2.isEmpty())) || !it.hasNext()) {
                    break;
                }
                next2 = it.next();
            }
            while (true) {
                if ((next != null && (!z || !next.isEmpty())) || !it2.hasNext()) {
                    break;
                }
                next = it2.next();
            }
            if (next2 == null || (z && next2.isEmpty())) {
                if (next != null && (!z || !next.isEmpty())) {
                    break;
                }
            } else if (!next2.equals(next)) {
                return false;
            }
        }
        return false;
    }

    public boolean isSame(Object obj, boolean z, boolean z2) {
        String str;
        if (this == obj) {
            return true;
        }
        if (obj == null || SceneDraft.class != obj.getClass()) {
            return false;
        }
        SceneDraft sceneDraft = (SceneDraft) obj;
        if (!isSceneInfoEquals(sceneDraft.sceneInfos, z)) {
            return false;
        }
        AVClipInfoPack aVClipInfoPack = this.bgMusicClip;
        if (aVClipInfoPack == null ? sceneDraft.bgMusicClip != null : !aVClipInfoPack.equals(sceneDraft.bgMusicClip)) {
            return false;
        }
        if (!z2 && ((str = this.coverImage) == null ? sceneDraft.coverImage != null : !str.equals(sceneDraft.coverImage))) {
            return false;
        }
        String str2 = this.globalFileFolder;
        if (str2 == null ? sceneDraft.globalFileFolder != null : !str2.equals(sceneDraft.globalFileFolder)) {
            return false;
        }
        String str3 = this.draftId;
        String str4 = sceneDraft.draftId;
        return str3 != null ? str3.equals(str4) : str4 == null;
    }

    public boolean isSame(Object obj, boolean z) {
        return isSame(obj, z, false);
    }

    public boolean equals(Object obj) {
        return isSame(obj, true);
    }

    public int hashCode() {
        List<SceneInfo> list = this.sceneInfos;
        int iHashCode = (list != null ? list.hashCode() : 0) * 31;
        AVClipInfoPack aVClipInfoPack = this.bgMusicClip;
        int iHashCode2 = (iHashCode + (aVClipInfoPack != null ? aVClipInfoPack.hashCode() : 0)) * 31;
        String str = this.coverImage;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.globalFileFolder;
        int iHashCode4 = (iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.draftId;
        return iHashCode4 + (str3 != null ? str3.hashCode() : 0);
    }
}
