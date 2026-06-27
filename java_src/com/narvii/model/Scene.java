package com.narvii.model;

import android.text.TextUtils;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.model.story.ScenePollOrQuizHost;
import com.narvii.model.story.StorySceneMilestone;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import java.util.List;

/* loaded from: classes3.dex */
public class Scene implements StorySceneMilestone, ScenePollOrQuizHost, Cloneable {
    public Media media;
    public ObjectNode metadata;
    public PollAttach pollAttach;
    public QuizQuestion question;
    public String sceneId;

    @Override // com.narvii.model.story.ScenePollOrQuizHost
    public String id() {
        return this.sceneId;
    }

    @Override // com.narvii.model.story.StorySceneMilestone, com.narvii.model.story.ScenePollOrQuizHost
    public boolean containsPollOrQuiz() {
        return (getQuizQuestion() == null && getPoll() == null) ? false : true;
    }

    @Override // com.narvii.model.story.StorySceneMilestone
    public String milestoneId() {
        return this.sceneId;
    }

    @Override // com.narvii.model.story.ScenePollOrQuizHost
    public QuizQuestion getQuizQuestion() {
        return this.question;
    }

    @Override // com.narvii.model.story.ScenePollOrQuizHost
    public PollAttach getPoll() {
        return this.pollAttach;
    }

    public static Scene getScene(String str, List<Scene> list) {
        if (list != null && !TextUtils.isEmpty(str)) {
            for (Scene scene : list) {
                if (scene != null && TextUtils.equals(scene.sceneId, str)) {
                    return scene;
                }
            }
        }
        return null;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Scene m48clone() {
        return (Scene) JacksonUtils.readAs(JacksonUtils.writeAsString(this), Scene.class);
    }

    public int hashCode() {
        String str = this.sceneId;
        int iHashCode = str != null ? 16257 ^ str.hashCode() : 16257;
        Media media = this.media;
        if (media != null) {
            iHashCode ^= media.hashCode();
        }
        QuizQuestion quizQuestion = this.question;
        if (quizQuestion != null) {
            iHashCode ^= quizQuestion.hashCode();
        }
        PollAttach pollAttach = this.pollAttach;
        return pollAttach != null ? iHashCode ^ pollAttach.hashCode() : iHashCode;
    }

    public boolean equals(Object obj) {
        QuizQuestion quizQuestion;
        if (obj == null || obj.hashCode() != hashCode() || !(obj instanceof Scene)) {
            return false;
        }
        Scene scene = (Scene) obj;
        if (Utils.isEquals(this.sceneId, scene.sceneId) && Utils.isEquals(this.media, scene.media) && (quizQuestion = this.question) != null) {
            return quizQuestion.isSame(scene.question);
        }
        return scene.question == null && Utils.isEquals(this.pollAttach, scene.pollAttach);
    }
}
