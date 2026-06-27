package com.narvii.model;

import com.narvii.model.story.StoryTopic;
import com.narvii.util.StringUtils;
import com.narvii.widget.TagEditFlowView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class TopicTag implements TagEditFlowView.Tag {
    public int id;
    public String title;

    public static List<StoryTopic> convertToStoryTopicList(List<TopicTag> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (TopicTag topicTag : list) {
                if (topicTag != null) {
                    arrayList.add(convertToStoryTop(topicTag));
                }
            }
        }
        return arrayList;
    }

    public static StoryTopic convertToStoryTop(TopicTag topicTag) {
        StoryTopic storyTopic = new StoryTopic();
        storyTopic.topicId = topicTag.id;
        storyTopic.name = topicTag.title;
        return storyTopic;
    }

    public static List<TopicTag> createList(List<StoryTopic> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (StoryTopic storyTopic : list) {
                if (storyTopic != null) {
                    arrayList.add(create(storyTopic));
                }
            }
        }
        return arrayList;
    }

    public static TopicTag create(StoryTopic storyTopic) {
        if (storyTopic == null) {
            return null;
        }
        TopicTag topicTag = new TopicTag();
        topicTag.id = storyTopic.topicId;
        topicTag.title = storyTopic.getDisplayName();
        return topicTag;
    }

    @Override // com.narvii.widget.TagEditFlowView.Tag
    public String getTagTitle() {
        return this.title;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TopicTag.class != obj.getClass()) {
            return false;
        }
        return this.title.equals(((TopicTag) obj).title);
    }

    public int hashCode() {
        return this.title.hashCode();
    }

    public boolean isEmpty() {
        return StringUtils.isTrimEmpty(this.title);
    }
}
