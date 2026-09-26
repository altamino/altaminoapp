package com.narvii.scene;

import com.narvii.model.Media;
import com.narvii.model.PollAttach;
import com.narvii.model.Scene;
import com.narvii.scene.helper.SceneUtils;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.JacksonUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class SceneWrapper {
    public static final int STATES_EMPTY = 1;
    public static final int STATES_ERROR = 3;
    public static final int STATES_NORMAL = 2;
    public Scene scene;
    public SceneInfo sceneInfo;
    public boolean selected = false;
    public boolean isPlaying = false;
    public boolean canPlaying = true;

    public @interface SceneState {
    }

    public static SceneWrapper create(SceneInfo sceneInfo) {
        if (sceneInfo == null) {
            return null;
        }
        SceneWrapper sceneWrapper = new SceneWrapper();
        sceneWrapper.sceneInfo = sceneInfo.copy();
        return sceneWrapper;
    }

    public static List<SceneWrapper> createWrappers(SceneDraft sceneDraft) {
        if (sceneDraft == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        List<SceneInfo> list = sceneDraft.sceneInfos;
        if (list != null) {
            Iterator<SceneInfo> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(create(it.next()));
            }
        }
        return arrayList;
    }

    private boolean isEdit() {
        return this.scene != null;
    }

    public void setCanPlaying(boolean z6) {
        this.canPlaying = z6;
    }

    public static SceneWrapper createEmpty(SceneInfo sceneInfo) {
        if (sceneInfo == null) {
            return null;
        }
        SceneWrapper sceneWrapper = new SceneWrapper();
        sceneWrapper.sceneInfo = sceneInfo;
        return sceneWrapper;
    }

    public static List<SceneInfo> getSceneInfos(List<SceneWrapper> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<SceneWrapper> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().sceneInfo);
        }
        return arrayList;
    }

    public static List<Scene> getScenes(List<SceneWrapper> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<SceneWrapper> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().scene);
        }
        return arrayList;
    }

    public void setTitle(String str) {
        SceneInfo sceneInfo = this.sceneInfo;
        if (sceneInfo != null) {
            sceneInfo.title = str;
        }
    }

    private SceneWrapper() {
    }

    public static SceneWrapper create(Scene scene) {
        if (scene == null) {
            return null;
        }
        SceneWrapper sceneWrapper = new SceneWrapper();
        sceneWrapper.scene = (Scene) JacksonUtils.readAs(JacksonUtils.writeAsString(scene), Scene.class);
        return sceneWrapper;
    }

    public Boolean containsPollOrQuiz() {
        boolean z6;
        if (isEdit()) {
            return Boolean.valueOf(this.scene.containsPollOrQuiz());
        }
        SceneInfo sceneInfo = this.sceneInfo;
        if (sceneInfo != null && sceneInfo.containsPollOrQuiz()) {
            z6 = true;
        } else {
            z6 = false;
        }
        return Boolean.valueOf(z6);
    }

    public int getAttachDataStatus() {
        if (isEdit()) {
            Scene scene = this.scene;
            if (scene.question != null) {
                return 2;
            }
            PollAttach pollAttach = scene.pollAttach;
            if (pollAttach != null) {
                if (pollAttach.getAllVoteCount() >= 5) {
                    return 4;
                }
                return 3;
            }
            return 1;
        }
        SceneInfo sceneInfo = this.sceneInfo;
        if (sceneInfo == null) {
            return 0;
        }
        return sceneInfo.getAttachDataStatus();
    }

    public String getCoverImage() {
        if (isEdit()) {
            Media media = this.scene.media;
            if (media == null) {
                return "";
            }
            return media.coverImage;
        }
        SceneInfo sceneInfo = this.sceneInfo;
        if (sceneInfo == null) {
            return "";
        }
        return sceneInfo.coverImage;
    }

    public String getDurationText() {
        long previewDuration;
        if (isEdit()) {
            Media media = this.scene.media;
            if (media == null) {
                previewDuration = 0;
            } else {
                previewDuration = media.duration;
            }
        } else if (this.sceneInfo.isError()) {
            previewDuration = this.sceneInfo.getDuration();
        } else {
            previewDuration = this.sceneInfo.getPreviewDuration();
        }
        return SceneUtils.durationMsToUIText(previewDuration);
    }

    public int getPollVoteCount() {
        PollAttach pollAttach;
        if (isEdit()) {
            PollAttach pollAttach2 = this.scene.pollAttach;
            if (pollAttach2 == null) {
                return 0;
            }
            return pollAttach2.getAllVoteCount();
        }
        SceneInfo sceneInfo = this.sceneInfo;
        if (sceneInfo == null || (pollAttach = sceneInfo.pollAttach) == null) {
            return 0;
        }
        return pollAttach.getAllVoteCount();
    }

    public String getSceneId() {
        if (isEdit()) {
            return this.scene.sceneId;
        }
        SceneInfo sceneInfo = this.sceneInfo;
        if (sceneInfo == null) {
            return "";
        }
        return sceneInfo.id;
    }

    @SceneState
    public int getStates() {
        if (isEdit()) {
            return 2;
        }
        if (this.sceneInfo.isEmpty()) {
            return 1;
        }
        if (!this.sceneInfo.isError()) {
            return 2;
        }
        return 3;
    }

    public String getTitle() {
        SceneInfo sceneInfo;
        if (isEdit() || (sceneInfo = this.sceneInfo) == null) {
            return "";
        }
        return sceneInfo.title;
    }

    public boolean isCanPlaying() {
        if (isEdit() && !this.canPlaying) {
            return false;
        }
        return true;
    }

    public boolean isEmpty() {
        SceneInfo sceneInfo;
        if (isEdit() || (sceneInfo = this.sceneInfo) == null || !sceneInfo.isEmpty()) {
            return false;
        }
        return true;
    }

    public boolean isError() {
        SceneInfo sceneInfo;
        if (isEdit() || (sceneInfo = this.sceneInfo) == null || !sceneInfo.isError()) {
            return false;
        }
        return true;
    }

    public static List<SceneWrapper> createWrappers(List<Scene> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Scene> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(create(it.next()));
        }
        return arrayList;
    }
}
