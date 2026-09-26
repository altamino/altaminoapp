package com.narvii.scene.model;

import android.net.Uri;
import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
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

/* JADX INFO: loaded from: classes9.dex */
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

    public boolean equals(Object obj) {
        return isSame(obj, true);
    }

    public boolean isSame(Object obj, boolean z6, boolean z10) {
        String str;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SceneDraft sceneDraft = (SceneDraft) obj;
        if (!isSceneInfoEquals(sceneDraft.sceneInfos, z6)) {
            return false;
        }
        AVClipInfoPack aVClipInfoPack = this.bgMusicClip;
        if (aVClipInfoPack == null ? sceneDraft.bgMusicClip != null : !aVClipInfoPack.equals(sceneDraft.bgMusicClip)) {
            return false;
        }
        if (!z10 && ((str = this.coverImage) == null ? sceneDraft.coverImage != null : !str.equals(sceneDraft.coverImage))) {
            return false;
        }
        String str2 = this.globalFileFolder;
        if (str2 == null ? sceneDraft.globalFileFolder != null : !str2.equals(sceneDraft.globalFileFolder)) {
            return false;
        }
        String str3 = this.draftId;
        String str4 = sceneDraft.draftId;
        if (str3 != null) {
            return str3.equals(str4);
        }
        return str4 == null;
    }

    public void setBgMusicClip(AVClipInfoPack aVClipInfoPack) {
        this.bgMusicClip = aVClipInfoPack;
    }

    public SceneDraft(String str) {
        this.serialNo = 0;
        this.draftId = StringUtils.isTrimEmpty(str) ? String.valueOf(System.currentTimeMillis()) : str;
        this.sceneInfos = new ArrayList();
        this.globalFileFolder = SceneConstant.SCENE_GLOBAL_FILE;
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
                    ArrayList<AVClipInfoPack> arrayList2 = new ArrayList<>();
                    sceneInfo.videoClips = arrayList2;
                    arrayList2.add(aVClipInfoPack);
                    arrayList.add(sceneInfo);
                }
            }
        }
        sceneDraft.sceneInfos.addAll(arrayList);
    }

    private String getSceneId() {
        this.serialNo++;
        return this.draftId + "_" + this.serialNo;
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

    public void addScene(SceneInfo sceneInfo) {
        if (sceneInfo == null) {
            return;
        }
        this.sceneInfos.add(sceneInfo);
        correctBgMusicClip();
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

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SceneDraft m1631clone() {
        return (SceneDraft) JacksonUtils.readAs(JacksonUtils.writeAsString(this), SceneDraft.class);
    }

    public void correctBgMusicClip() {
        AVClipInfoPack aVClipInfoPack = this.bgMusicClip;
        if (aVClipInfoPack == null || this.sceneInfos == null) {
            return;
        }
        if (aVClipInfoPack.trimmedDurationInMs() < getTotalDuration()) {
            long totalDuration = getTotalDuration() - ((long) this.bgMusicClip.trimmedDurationInMs());
            AVClipInfoPack aVClipInfoPack2 = this.bgMusicClip;
            long j6 = ((long) aVClipInfoPack2.trimEndInMs) + totalDuration;
            int i10 = aVClipInfoPack2.orgDurationInMs;
            if (j6 <= i10) {
                i10 = (int) j6;
            }
            aVClipInfoPack2.trimEndInMs = i10;
            return;
        }
        long jTrimmedDurationInMs = ((long) this.bgMusicClip.trimmedDurationInMs()) - getTotalDuration();
        AVClipInfoPack aVClipInfoPack3 = this.bgMusicClip;
        long j10 = ((long) aVClipInfoPack3.trimEndInMs) - jTrimmedDurationInMs;
        int i11 = aVClipInfoPack3.trimStartInMs;
        if (j10 >= i11) {
            i11 = (int) j10;
        }
        aVClipInfoPack3.trimEndInMs = i11;
    }

    public SceneInfo createEmptyScene() {
        return new SceneInfo(getSceneId(), serialString(this.serialNo));
    }

    public ObjectNode generateMetadata() {
        ObjectNode objectNode = this.metadata;
        int i10 = 1;
        if (objectNode != null) {
            objectNode.put("coverImage", this.coverImage);
            ObjectNode objectNode2 = this.metadata;
            SceneCoverImageInfo sceneCoverImageInfo = this.coverImageInfo;
            if (sceneCoverImageInfo != null && sceneCoverImageInfo.from == 2) {
                i10 = 2;
            }
            objectNode2.put("coverImageSource", i10);
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
            i10 = 2;
        }
        objectNodeCreateObjectNode.put("coverImageSource", i10);
        return objectNodeCreateObjectNode;
    }

    public long getBGMTotalDuraion() {
        AVClipInfoPack aVClipInfoPack = this.bgMusicClip;
        if (aVClipInfoPack == null) {
            return 0L;
        }
        return aVClipInfoPack.orgDurationInMs;
    }

    public Media getCoverMedia() {
        Media media = new Media();
        media.type = 100;
        media.url = TextUtils.isEmpty(this.coverImage) ? "" : this.coverImage;
        return media;
    }

    public String getFirstSceneCoverImagePath() {
        for (SceneInfo sceneInfo : this.sceneInfos) {
            if (sceneInfo != null && !TextUtils.isEmpty(sceneInfo.coverImage) && !FileUtils.isEmpty(new File(sceneInfo.coverImage))) {
                return sceneInfo.coverImage;
            }
        }
        return null;
    }

    public AVClipInfoPack getFirstVideoClip() {
        ArrayList<AVClipInfoPack> arrayList;
        List<SceneInfo> list = this.sceneInfos;
        if (list == null) {
            return null;
        }
        for (SceneInfo sceneInfo : list) {
            if (sceneInfo != null && (arrayList = sceneInfo.videoClips) != null && arrayList.size() != 0) {
                for (AVClipInfoPack aVClipInfoPack : sceneInfo.videoClips) {
                    if (!TextUtils.isEmpty(aVClipInfoPack.inputPath) && (aVClipInfoPack.inputPath.startsWith(ProxyConfig.MATCH_HTTP) || !FileUtils.isEmpty(new File(aVClipInfoPack.inputPath)))) {
                        return aVClipInfoPack;
                    }
                }
            }
        }
        return null;
    }

    public int getSceneLisSizeIgnoreEmpty() {
        int i10 = 0;
        for (SceneInfo sceneInfo : this.sceneInfos) {
            if (sceneInfo != null && !sceneInfo.isEmpty()) {
                i10++;
            }
        }
        return i10;
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

    public int getSceneListSize() {
        return this.sceneInfos.size();
    }

    public long getTotalDuration() {
        Iterator<SceneInfo> it = this.sceneInfos.iterator();
        long previewDuration = 0;
        while (it.hasNext()) {
            previewDuration += it.next().getPreviewDuration();
        }
        return previewDuration;
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

    public boolean isEmpty() {
        Iterator<SceneInfo> it = this.sceneInfos.iterator();
        while (it.hasNext()) {
            if (!it.next().isEmpty()) {
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

    public boolean isSceneInfoEquals(List<SceneInfo> list, boolean z6) {
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
                if ((next2 != null && (!z6 || !next2.isEmpty())) || !it.hasNext()) {
                    break;
                }
                next2 = it.next();
            }
            while (true) {
                if ((next != null && (!z6 || !next.isEmpty())) || !it2.hasNext()) {
                    break;
                }
                next = it2.next();
            }
            if (next2 == null || (z6 && next2.isEmpty())) {
                if (next != null && (!z6 || !next.isEmpty())) {
                    return false;
                }
            } else if (!next2.equals(next)) {
                return false;
            }
        }
    }

    public boolean originFileMissing() {
        for (SceneInfo sceneInfo : this.sceneInfos) {
            if (sceneInfo != null) {
                ArrayList<AVClipInfoPack> arrayList = sceneInfo.videoClips;
                if (arrayList != null) {
                    for (AVClipInfoPack aVClipInfoPack : arrayList) {
                        if (!TextUtils.isEmpty(aVClipInfoPack.inputPath) && FileUtils.isEmpty(new File(aVClipInfoPack.inputPath))) {
                            return true;
                        }
                    }
                }
                ArrayList<AVClipInfoPack> arrayList2 = sceneInfo.audioClips;
                if (arrayList2 != null) {
                    for (AVClipInfoPack aVClipInfoPack2 : arrayList2) {
                        if (!TextUtils.isEmpty(aVClipInfoPack2.inputPath) && FileUtils.isEmpty(new File(aVClipInfoPack2.inputPath))) {
                            return true;
                        }
                    }
                }
                if (sceneInfo.captions != null) {
                    AssetDownloader assetDownloader = (AssetDownloader) NVApplication.instance().getService("captionStyle");
                    for (Caption caption : sceneInfo.captions) {
                        if (caption.fontPath != null && FileUtils.isEmpty(new File(caption.fontPath))) {
                            return true;
                        }
                        String str = caption.styleObjectId;
                        if (str != null && assetDownloader != null && FileUtils.isEmpty(assetDownloader.getDownloadedFile(str))) {
                            return true;
                        }
                    }
                }
                ArrayList<StickerInfoPack> arrayList3 = sceneInfo.stickers;
                if (arrayList3 != null) {
                    for (StickerInfoPack stickerInfoPack : arrayList3) {
                        if (TextUtils.isEmpty(stickerInfoPack.installedPath) || TextUtils.isEmpty(stickerInfoPack.srcImagePath) || FileUtils.isEmpty(new File(stickerInfoPack.installedPath)) || FileUtils.isEmpty(new File(stickerInfoPack.srcImagePath))) {
                            return true;
                        }
                    }
                }
                ArrayList<PipInfoPack> arrayList4 = sceneInfo.pipClips;
                if (arrayList4 != null) {
                    for (PipInfoPack pipInfoPack : arrayList4) {
                        if (pipInfoPack.inputPath != null && FileUtils.isEmpty(new File(pipInfoPack.inputPath))) {
                            return true;
                        }
                    }
                } else {
                    continue;
                }
            }
        }
        AVClipInfoPack aVClipInfoPack3 = this.bgMusicClip;
        return (aVClipInfoPack3 == null || TextUtils.isEmpty(aVClipInfoPack3.inputPath) || !FileUtils.isEmpty(new File(this.bgMusicClip.inputPath))) ? false : true;
    }

    public void replaceSceneId(String str) {
        for (SceneInfo sceneInfo : this.sceneInfos) {
            sceneInfo.id = sceneInfo.id.replace(this.draftId, str);
        }
        this.draftId = str;
    }

    public void setBgMusicMedia(Media media) {
        if (media == null || TextUtils.isEmpty(media.url)) {
            this.bgMusicClip = null;
            return;
        }
        AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
        aVClipInfoPack.trimStartInMs = 0;
        aVClipInfoPack.inputPath = Uri.parse(media.url).getPath();
        long j6 = media.duration;
        aVClipInfoPack.orgDurationInMs = (int) j6;
        aVClipInfoPack.trimStartInMs = 0;
        aVClipInfoPack.trimEndInMs = (int) Math.min(j6, getTotalDuration());
        aVClipInfoPack.visibleDurationInMs = (int) media.duration;
        aVClipInfoPack.author = media.author;
        aVClipInfoPack.fileName = media.fileName;
        setBgMusicClip(aVClipInfoPack);
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

    public static String getCopyPathParam(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.contains(str2)) {
            return str.replace(str2, str3);
        }
        return str;
    }

    public static File getSceneDraftFile(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = "default";
        }
        return new File(str, str2);
    }

    private static String serialString(int i10) {
        String strValueOf = String.valueOf(i10);
        if (strValueOf.length() < 2) {
            strValueOf = "0" + strValueOf;
        }
        return "Scene " + strValueOf;
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

    public SceneDraft(String str, List<Scene> list) {
        this.serialNo = 0;
        this.draftId = str;
        this.sceneInfos = new ArrayList();
        this.globalFileFolder = SceneConstant.SCENE_GLOBAL_FILE;
    }

    public boolean isSame(Object obj, boolean z6) {
        return isSame(obj, z6, false);
    }
}
