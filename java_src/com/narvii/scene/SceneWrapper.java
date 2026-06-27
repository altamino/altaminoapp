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

/* loaded from: classes3.dex */
public class SceneWrapper {
    public static final int STATES_EMPTY = 1;
    public static final int STATES_ERROR = 3;
    public static final int STATES_NORMAL = 2;
    public Scene scene;
    public SceneInfo sceneInfo;
    public boolean selected = false;
    public boolean isPlaying = false;
    public boolean canPlaying = true;

    /* loaded from: classes.dex */
    public @interface SceneState {
    }

    private SceneWrapper() {
    }

    public Boolean containsPollOrQuiz() {
        if (isEdit()) {
            return Boolean.valueOf(this.scene.containsPollOrQuiz());
        }
        SceneInfo sceneInfo = this.sceneInfo;
        return Boolean.valueOf(sceneInfo != null && sceneInfo.containsPollOrQuiz());
    }

    public String getSceneId() {
        if (isEdit()) {
            return this.scene.sceneId;
        }
        SceneInfo sceneInfo = this.sceneInfo;
        return sceneInfo == null ? "" : sceneInfo.id;
    }

    public boolean isError() {
        SceneInfo sceneInfo;
        return (isEdit() || (sceneInfo = this.sceneInfo) == null || !sceneInfo.isError()) ? false : true;
    }

    public boolean isCanPlaying() {
        return !isEdit() || this.canPlaying;
    }

    public void setCanPlaying(boolean z) {
        this.canPlaying = z;
    }

    public boolean isEmpty() {
        SceneInfo sceneInfo;
        return (isEdit() || (sceneInfo = this.sceneInfo) == null || !sceneInfo.isEmpty()) ? false : true;
    }

    public String getTitle() {
        SceneInfo sceneInfo;
        return (isEdit() || (sceneInfo = this.sceneInfo) == null) ? "" : sceneInfo.title;
    }

    public void setTitle(String str) {
        SceneInfo sceneInfo = this.sceneInfo;
        if (sceneInfo != null) {
            sceneInfo.title = str;
        }
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

    public String getCoverImage() {
        if (isEdit()) {
            Media media = this.scene.media;
            return media == null ? "" : media.coverImage;
        }
        SceneInfo sceneInfo = this.sceneInfo;
        return sceneInfo == null ? "" : sceneInfo.coverImage;
    }

    public String getDurationText() {
        long duration;
        if (isEdit()) {
            Media media = this.scene.media;
            duration = media == null ? 0L : media.duration;
        } else {
            duration = this.sceneInfo.isError() ? this.sceneInfo.getDuration() : this.sceneInfo.getPreviewDuration();
        }
        return SceneUtils.durationMsToUIText(duration);
    }

    private boolean isEdit() {
        return this.scene != null;
    }

    public static SceneWrapper create(SceneInfo sceneInfo) {
        if (sceneInfo == null) {
            return null;
        }
        SceneWrapper sceneWrapper = new SceneWrapper();
        sceneWrapper.sceneInfo = sceneInfo.copy();
        return sceneWrapper;
    }

    public static SceneWrapper create(Scene scene) {
        if (scene == null) {
            return null;
        }
        SceneWrapper sceneWrapper = new SceneWrapper();
        sceneWrapper.scene = (Scene) JacksonUtils.readAs(JacksonUtils.writeAsString(scene), Scene.class);
        return sceneWrapper;
    }

    @SceneState
    public int getStates() {
        if (isEdit()) {
            return 2;
        }
        if (this.sceneInfo.isEmpty()) {
            return 1;
        }
        return this.sceneInfo.isError() ? 3 : 2;
    }

    public int getAttachDataStatus() {
        if (isEdit()) {
            Scene scene = this.scene;
            if (scene.question != null) {
                return 2;
            }
            PollAttach pollAttach = scene.pollAttach;
            if (pollAttach != null) {
                return pollAttach.getAllVoteCount() >= 5 ? 4 : 3;
            }
            return 1;
        }
        SceneInfo sceneInfo = this.sceneInfo;
        if (sceneInfo == null) {
            return 0;
        }
        return sceneInfo.getAttachDataStatus();
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
