package com.narvii.model;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.image.BackgroundSource;
import com.narvii.post.BackgroundUtils;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class QuizQuestion extends NVObject implements BackgroundSource {
    public ObjectNode extensions;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;
    public String parentId;
    public int parentType;
    public String quizQuestionId;
    public String title;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 23;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    @Override // com.narvii.image.BackgroundSource
    public int getBackgroundColor() {
        return BackgroundUtils.getBackgroundColor(this.extensions);
    }

    @Override // com.narvii.image.BackgroundSource
    public Media getBackgroundMedia() {
        return BackgroundUtils.getBackgroundMedia(this.extensions);
    }

    public void setBackgroundColor(int i) {
        if (i != 0 && this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        BackgroundUtils.setBackgroundColor(this.extensions, i);
    }

    public void setBackgroundMediaList(List<Media> list) {
        if (this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        BackgroundUtils.setBackgroundMediaList(this.extensions, list);
    }

    @Override // com.narvii.image.BackgroundSource
    public boolean hasBackground() {
        return (getBackgroundColor() == 0 && getBackgroundMedia() == null) ? false : true;
    }

    public String quizAnswerExplanation() {
        return JacksonUtils.nodeString(this.extensions, "quizAnswerExplanation");
    }

    public void setQuizAnswerExplanation(String str) {
        if (this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        this.extensions.put("quizAnswerExplanation", str);
    }

    public List<QuizOption> quizOptions() {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "quizQuestionOptList");
        if (jsonNodeNodePath == null) {
            return null;
        }
        return JacksonUtils.readListAs(jsonNodeNodePath.toString(), QuizOption.class);
    }

    public QuizOption getCorrectAnswer() {
        List<QuizOption> listQuizOptions = quizOptions();
        if (listQuizOptions == null) {
            return null;
        }
        for (QuizOption quizOption : listQuizOptions) {
            if (quizOption.isCorrect(this.quizQuestionId)) {
                return quizOption;
            }
        }
        return null;
    }

    public boolean isOptionIdCorrect(String str) {
        QuizOption correctAnswer;
        return (str == null || (correctAnswer = getCorrectAnswer()) == null || !Utils.isEqualsNotNull(str, correctAnswer.optId)) ? false : true;
    }

    public void setQuizOptions(List<QuizOption> list) {
        if (this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        this.extensions.put("quizQuestionOptList", JacksonUtils.DEFAULT_MAPPER.valueToTree(list));
    }

    public boolean isEmpty() {
        String str = this.title;
        if (str != null && str.trim().length() > 0) {
            return false;
        }
        List<Media> list = this.mediaList;
        if (list != null && list.size() > 0) {
            return false;
        }
        List<QuizOption> listQuizOptions = quizOptions();
        if (listQuizOptions != null) {
            for (QuizOption quizOption : listQuizOptions) {
                String str2 = quizOption.title;
                if ((str2 != null && str2.trim().length() > 0) || !CollectionUtils.isEmpty(quizOption.mediaList)) {
                    return false;
                }
            }
        }
        String strQuizAnswerExplanation = quizAnswerExplanation();
        return strQuizAnswerExplanation == null || strQuizAnswerExplanation.trim().length() <= 0;
    }

    public boolean isComplete() {
        List<QuizOption> listQuizOptions;
        String str = this.title;
        if (str == null || str.trim().length() == 0 || (listQuizOptions = quizOptions()) == null) {
            return false;
        }
        Iterator<QuizOption> it = listQuizOptions.iterator();
        while (it.hasNext()) {
            String str2 = it.next().title;
            if (str2 == null || str2.trim().length() == 0) {
                return false;
            }
        }
        return true;
    }

    public boolean hasDuplicateOption() {
        List<QuizOption> listQuizOptions = quizOptions();
        if (listQuizOptions == null) {
            return false;
        }
        int size = listQuizOptions.size();
        int i = 0;
        while (i < size - 1) {
            QuizOption quizOption = listQuizOptions.get(i);
            i++;
            for (int i2 = i; i2 < size; i2++) {
                if (Utils.isStringEquals(quizOption.title, listQuizOptions.get(i2).title)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isSame(QuizQuestion quizQuestion) {
        if (quizQuestion == this) {
            return true;
        }
        if (Utils.isEquals(this.quizQuestionId, quizQuestion.quizQuestionId) && Utils.isStringEquals(this.title, quizQuestion.title) && Utils.isListEquals(this.mediaList, quizQuestion.mediaList) && Utils.isStringEquals(quizAnswerExplanation(), quizQuestion.quizAnswerExplanation()) && getBackgroundColor() == quizQuestion.getBackgroundColor() && Utils.isEquals(getBackgroundMedia(), quizQuestion.getBackgroundMedia())) {
            List<QuizOption> listQuizOptions = quizOptions();
            List<QuizOption> listQuizOptions2 = quizQuestion.quizOptions();
            if (listQuizOptions == null && listQuizOptions2 == null) {
                return true;
            }
            if (listQuizOptions != null && listQuizOptions2 != null && listQuizOptions.size() == listQuizOptions2.size()) {
                int size = listQuizOptions.size();
                for (int i = 0; i < size; i++) {
                    if (!listQuizOptions.get(i).equals(listQuizOptions2.get(i))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.quizQuestionId;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return this.parentId;
    }

    @Override // com.narvii.model.NVObject
    public int hashCode() {
        if (!TextUtils.isEmpty(id())) {
            return super.hashCode();
        }
        String str = this.title;
        int iHashCode = str != null ? 16257 ^ str.hashCode() : 16257;
        List<Media> list = this.mediaList;
        return list != null ? iHashCode ^ list.hashCode() : iHashCode;
    }
}
